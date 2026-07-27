{
  description = "ACM REP 2027 Hugo site dev environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      lib = pkgs.lib;

      # Pinned to the version this site's CI and Netlify deploy with; the old
      # Wowchemy v5 theme breaks on nixpkgs' current Hugo.
      hugoVersion = "0.119.0";

      hugo-extended = pkgs.stdenv.mkDerivation {
        pname = "hugo-extended";
        version = hugoVersion;
        src = pkgs.fetchurl {
          url = "https://github.com/gohugoio/hugo/releases/download/v${hugoVersion}/hugo_extended_${hugoVersion}_linux-amd64.tar.gz";
          hash = "sha256-XW8iLLaoGm4I6PYL3GbXFMwwEY4Sv5H6B+twCDZT1zA=";
        };
        nativeBuildInputs = [ pkgs.autoPatchelfHook ];
        buildInputs = [ pkgs.stdenv.cc.cc.lib ];
        sourceRoot = ".";
        installPhase = "install -Dm755 hugo $out/bin/hugo";
        meta.platforms = [ "x86_64-linux" ];
      };

      # go: Hugo Modules pull the theme. dart-sass: SCSS transpiler. node: npm assets.
      tools = [ hugo-extended pkgs.go pkgs.dart-sass pkgs.nodejs pkgs.git ];

      caches = ''
        export GOPATH="$PWD/.cache/go"
        export HUGO_CACHEDIR="$PWD/.cache/hugo"
      '';
    in
    {
      packages.${system}.default = hugo-extended;

      devShells.${system}.default = pkgs.mkShell {
        buildInputs = tools;
        shellHook = caches + ''
          export PATH="$GOPATH/bin:$PATH"
        '';
      };

      # Impure runners so Hugo Modules can be fetched (a pure build can't reach the network).
      apps.${system} = {
        serve = {
          type = "app";
          program = toString (pkgs.writeShellScript "hugo-serve" ''
            export PATH="${lib.makeBinPath tools}:$PATH"
            ${caches}
            exec hugo server "$@"
          '');
        };
        build = {
          type = "app";
          program = toString (pkgs.writeShellScript "hugo-build" ''
            export PATH="${lib.makeBinPath tools}:$PATH"
            ${caches}
            exec hugo --gc --minify "$@"
          '');
        };
        default = self.apps.${system}.serve;
      };
    };
}
