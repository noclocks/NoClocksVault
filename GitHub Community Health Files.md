---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - GitHub Community Health Files
publish: true
permalink:
description:
image:
cssclasses:
---

# GitHub Community Health Files

> [!SOURCE] Sources:
> - **

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

Default community health files are a set of predefined files that provide guidance and templates for maintaining a healthy and collaborative open source project. You can add default community health files to a public repository called `.github`, in the root of the repository or in the `docs` or `.github` folders. These files help you automate and standardize various aspects of your project's development and community interaction. They are essential for promoting transparency, good practices, and collaboration in open source projects.

GitHub will use and display default files for any repository owned by the account that does not have its own file of that type in any of the following places:

- The root of the repository
- The `.github` folder
- The `docs` folder

For example, anyone who creates an issue or pull request in a repository that does not have its own CONTRIBUTING file will see a link to the default CONTRIBUTING file. If a repository has any files in its own `.github/ISSUE_TEMPLATE` folder, including issue templates or a _config.yml_ file, none of the contents of the default `.github/ISSUE_TEMPLATE` folder will be used.

Default files won’t appear in the file browser or Git history and are not included in clones, packages, or downloads of individual repositories because they are stored only in the `.github` repository.

As a repository maintainer, you can use the community standards checklist to see if your project meets the recommended community standards to help people use and contribute to your project. For more information, see "[About community profiles for public repositories](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/about-community-profiles-for-public-repositories)."

## Supported File Types

You can create defaults in your organization or personal account for the following community health files:

|Community health file|Description|
|---|---|
|_CODE_OF_CONDUCT.md_|A CODE_OF_CONDUCT file defines standards for how to engage in a community. For more information, see "[Adding a code of conduct to your project](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-code-of-conduct-to-your-project)."|
|_CONTRIBUTING.md_|A CONTRIBUTING file communicates how people should contribute to your project. For more information, see "[Setting guidelines for repository contributors](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/setting-guidelines-for-repository-contributors)."|
|Discussion category forms|Discussion category forms customize the templates that are available for community members to use when they open new discussions in your repository. For more information, see "[Creating discussion category forms](https://docs.github.com/en/discussions/managing-discussions-for-your-community/creating-discussion-category-forms)."|
|_FUNDING.yml_|A FUNDING file displays a sponsor button in your repository to increase the visibility of funding options for your open source project. For more information, see "[Displaying a sponsor button in your repository](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/displaying-a-sponsor-button-in-your-repository)."|
|_GOVERNANCE.md_|A GOVERNANCE file lets people know about how your project is governed. For example, it might discuss project roles and how decisions are made.|
|Issue and pull request templates and _config.yml_|Issue and pull request templates customize and standardize the information you'd like contributors to include when they open issues and pull requests in your repository. For more information, see "[About issue and pull request templates](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/about-issue-and-pull-request-templates)."|
|_SECURITY.md_|A SECURITY file gives instructions on how to report a security vulnerability in your project and description that hyperlinks the file. For more information, see "[Adding a security policy to your repository](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository)."|
|_SUPPORT.md_|A SUPPORT file lets people know about ways to get help with your project. For more information, see "[Adding support resources to your project](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-support-resources-to-your-project)."|

## Creating Repository for Default Files

1. Create new *pubic* GitHub Repository named `.github`
2. In the repository add community health files:
	- `.github/CODE_OF_CONDUCT.md`
	- `.github/CONTRIBUTING.md`
	- `.github/FUNDING.yml`
	- `.github/GOVERNANCE.md`
	- `.github/ISSUE_TEMPLATE/*`:
		- `config.yml`
		- `bug.yml`
		- `feature.yml`
	- `.github`

