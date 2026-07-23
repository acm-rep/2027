# ACM REP 2026 Conference website

## Repository structure

Most markdown for the content of the website is in `/content`. Each webpage has its own directory. Each of these directories contain a single `index.md` that determines whether the webpage's content is based on a single markdown file (the body of `index.md`) or is assembled from a series of "widgets" that are specified by seperate markdown files in the same directory. The order of widgets as they will appear on the rendered webpage is specified by `weight:` in the frontmatter of each of these files. Widgets can be hidden by setting `active: false` in its frontmatter.

Images and movies can be included using html within the body of each page or included by setting attributes specific to a particular widget. With some exceptions, images are stored in `/assets/media`. For instructions on how to reference media, see [here](https://docs.hugoblox.com/reference/markdown/#images).

## Automatic rendering of the website

Everything that is pushed or merged with the `main` branch will automatically trigger a workflow that will newly render the website. If you are interested, the workflow is specified in `.github/workflows/hugo.yml`. Failures of this workflow can be examined in the Actions tab of the github repository and can often be fixed by updating the versions of actions within the workflow.

### HUGO_VERSION: 0.119.0

The website is using HugoBlox legacy code that can cause failures with `hugo` newer than `0.119.0`. At some point these legacy pieces will have to be replaced. As of this writing, it is not clear whether that time has arrived. Until then, please do not increase HUGO_VERSION.

## Editing the website

**For small edits** just edit the relevant markdown file directly on github (see possibility 3 below). It is safer to create a pull request than to commit directly to main since a pull request will determine conflicts without interrupting other progress. 

**For larger edits** there are three possibilities: 
1. **Using a local git repository (recommended):** 
    - Clone the repository  
    - Perform edits -- I highly recommend using [Visual Studio Code](https://code.visualstudio.com/) for editing and common git commands. It does a great job showing all files in the repository and their git status. Make sure to create a repository in a _local_ directory that is not backed by Google Drive, iCloud, or any other file sharing service. Bad things tend to happen if you do  
    - [Install hugo](https://docs.hugoblox.com/getting-started/install-hugo/) (skip "Download a Template") and [view your site](https://docs.hugoblox.com/getting-started/install-hugo/#view-your-site) locally using `hugo server -D` (it quickly rebuilds the local view whenever you save a change)  
    - Create a pull request against the `main` branch of the origin `acm-rep/2026` repository. This will create a Netlify preview within the pull request. Any additional pushes to the pull request's branch will update the preview.  
    
2. **Using VS Code for the Web:** By replacing `.com` in the github repository's web address with `.dev`, one can use [Visual Studio Code for the Web](https://code.visualstudio.com/docs/editor/vscode-web). This allows creating branches, committing updates, creating pull requests, and merging them without any local environment.

3. **Using the github website:** fork the repository, perform the edits there and create a pull request against this repository. Unfortunately, I have not figured out how to get the web page render correctly in a forked repository.


