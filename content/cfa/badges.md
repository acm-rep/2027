---
widget: blank # See https://wowchemy.com/docs/page-builder/
headless: true 
weight: 35 
title: "Badges"
subtitle: ""
active: true
design:
  columns: "2"
---

The ACM REP '27 artifact evaluation has provisions to award the following badges based on the [ACM artifact review and badging policies](https://www.acm.org/publications/policies/artifact-review-and-badging-current).

### Artifacts Available

This badge recognizes artifacts that are publicly accessible and available in a repository intended for long-term preservation.

An artifact is considered available if it satisfies the following requirements:

- Its code and accompanying data are published in a public archival repository with an established DOI. This may include Zenodo, Figshare, or other types of archival repositories.
- It includes an explanation of the artifact in the form of a `README.md` file.
- The artifact has a license that allows comparison and extension, such as MIT, BSD, or Apache.

A public Git repository alone does not satisfy the long-term archival requirement for the Artifacts Available badge. However, we understand there is a high chance of the artifact code or documentation being modified due to feedback from reviewers during the evaluation process, and that this may lead to publishing multiple versions of the code in public archives. We therefore recommend that authors use a public Git repository at the time of submission; however, the award of the ‘Artifacts Available’ badge is conditional on the complete artifact being published in a public archival repository and reported before the end of the main artifact evaluation period.

This badge concerns availability. It does not by itself establish that the artifact works or that the paper's results have been reproduced.

### Artifacts Evaluated - Functional

This badge recognizes that reviewers can use the artifact as documented and that its components are consistent with the work described in the paper.

An artifact is considered functional if it satisfies the following requirements:

- It includes a well-documented `README.md` file with a description of each artifact component and how it relates to the paper, and a description of the development and evaluation environments used by the authors. This includes the hardware type, OS version, and software dependency versions.
- It includes instructions to obtain, install, configure, and use the artifact.
- The artifact is complete to the extent possible and includes all components relevant to its accompanying paper.
- Its code and data are relevant and consistent with the content and methods described in its accompanying paper. Any changes such data anonymization, made to the code or data, are documented.
- Its software can be successfully executed, and its data can be accessed and used as documented, where applicable.

Receiving this badge by itself does not mean that the paper's main results have been reproduced.

### Results Reproduced

This badge recognizes that reviewers have independently obtained the paper's results using the authors' artifact. The results need not be the exact numbers, but any variation must be appropriate to the study and must not change the paper's main claims.

To support evaluation for this badge, authors should:

- Identify the main results and link each to the relevant experiment or analysis instructions, including the corresponding figures, tables, or claims in the paper.
- Provide the inputs, configurations, and commands needed to carry out these experiments or analyses, and explain where outputs are saved. We encourage authors to provide a single script for each experiment, together with analysis and plotting scripts that turn the outputs into the figures, tables, or other results used for comparison with the paper. 
- Explain how to compare the outputs with the reported results, including expected variation and any hardware or configuration differences that may affect the results.
- State the approximate runtime and resources needed for each evaluation step.
- Identify results that cannot be evaluated using the submitted artifact and explain how these limitations affect the evaluation of the paper's main claims.

For studies where the original experiments or data collection cannot be repeated, reviewers may reproduce the results by rerunning the processing and analysis on the supplied data. This includes regenerating tables and plots when they are computed from those data. Authors should explain any limitations and which results can be evaluated.