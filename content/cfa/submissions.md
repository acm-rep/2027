---
widget: blank # See https://wowchemy.com/docs/page-builder/
headless: true # This file represents a page section.
weight: 30 # Order that this section will appear.
title: "Submission Guidelines"
active: true
design:
  columns: "2"
---

### Artifact Registration and Submission

Authors should register and submit their artifacts through the submission system within the period listed under <a class="js-scroll" href="#deadlines">important dates</a>.

Submission system: **TBD**.

By the artifact submission deadline, authors should provide:

- The paper title, paper submission number, and author names.
- A copy of the accepted paper with an artifact appendix describing the paper's claims and evaluation steps.
- A short description of the artifact and a link to the artifact code and documentation.
- The badges requested.
- Any special hardware, software, data access, resource requirements, or credentials needed for reviewers to evaluate the artifact.
- Any limitations, unavailable components, or results that cannot be evaluated, with an explanation of the restrictions.

Authors should check that all links and access instructions work before submission and keep the materials accessible throughout evaluation. At least one contact author must be available to respond to questions during the evaluation period.

### Artifact Packaging

We ask authors to prepare their artifacts with enough documentation for someone unfamiliar with the work to use them. A `README.md` file that explains what the artifact contains and how to set it up, including any hardware requirements and software dependency versions, should be included. Authors should also indicate how long setup and experiments are expected to take.

For long-running artifacts, authors should provide a small example with an expected output to help reviewers check that the artifact is working before they begin the full evaluation. We also encourage authors to provide a single script that runs each experiment and produces the results for ease of reproduction. 

For experiments which require special hardware or restricted resources that only the authors may have access to, authors should explain how reviewers will obtain access and which evaluation steps are feasible with the available resources. Access arrangements should preserve reviewer anonymity.

### Artifact Appendix

The artifact appendix describes how the artifact support the results presented in the paper. It helps reviewers understand which claims or results they can reproduce and the steps involved. We ask authors to use the following [artifact appendix template](../uploads/ACM_REP_2027_ArtifactAppendix_template.tex) and submit it with their accepted paper. 

<!-- Authors who included an Artifact Description Appendix at paper submission should update the same appendix for artifact evaluation to reflect the submitted artifact and evaluation instructions. Authors who did not include one should prepare it at this stage. -->


Authors should connect the paper's claims and results with the corresponding code and instructions in the artifact. For measurements or experiments that cannot be repeated during evaluation, authors should identify the data provided, the analysis reviewers can rerun, and any claims that cannot be evaluated. In situations where results may vary significantly, authors should explain why and what reviewers can expect.

