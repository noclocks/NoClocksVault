---
creation_date: 2024-03-17
modification_date: 2024-03-17
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - No Clocks Vault
  - Vault Readme
publish: true
permalink:
description:
image:
cssclasses:
  - readme
---

<h1 align="center">No Clocks Knowledge Vault</h1>
<p align="center">
    <a href="https://docs.noclocks.dev/noclocksvault/">Website</a> |
    <a href="https://github.com/noclocks/noclocksvault">GitHub Repo</a>
</p>
<p align="center">Curated Knowledge for the Masses</p>

***

<p align="center">
  <img src="https://raw.githubusercontent.com/noclocks/brand/main/src/logo/main/png/noclocks-logo-main-white-transparent-320x320.png" height="30%" width="30%">
  <br>
  <a href="mailto:support@noclocks.dev">support@noclocks.dev</a> | <a href="https://noclocks.dev">www.noclocks.dev</a>
</p>

***

## Welcome

Welcome to the Knowledge Vault for [No Clocks, LLC](https://github.com/noclocks).

Inside is a wealth of knowledge curated over our tenure as a business while pursuing and widening our knowledge across the technology sector.

The vault is structured loosely as a *[Zettelkasten](https://zettelkasten.de/overview/#the-introduction-to-the-zettelkasten-method)*, or a collection of interlinked *[Atomic Notes](https://zettelkasten.de/posts/create-zettel-from-reading-notes/)* about anything that has resonated with our work and was deemed worthy of including.

Consider this a *[Digital Garden]()*. It is a garden that needs to be maintained and cared for overtime to produce fruitful outcomes.

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## About

Check out the [`05-SYSTEM/Obsidian`](./05-SYSTEM/Obsidian/) Folder for details about this Obsidian Vault and its setup.

Some notes:

- [[Obsidian - Setup]]
- [[Obsidian - Folders]]
- [[Obsidian - Scripts]]
- [[]]
- [[]]
  * [Publish Workflow](2-Areas/Meta/Publish%20Workflow.md) *(MkDocs version only, not Obsidian Publish)*
  * [How I Take Notes](2-Areas/Meta/How%20I%20Take%20Notes.md)
  * [Vault Setup](2-Areas/Meta/Vault%20Setup.md)
  * [Structure](2-Areas/Meta/Structure.md)

The [Changelog](Changelog.md) is also a good *Meta* resource.

*Launch this vault directly via the **Obsidian URI Schema**: `obsidian://open?vault=knowledge-vault`.*

## Roadmap

- [ ] TODO


### Publishing Setup

* This repository has three main branches: [main], [develop], and [gh-pages].
  * The [main] branch is a representation of the [develop] branch, but with all obsidian wiki-links converted to GitHub markdown links for display on GitHub as well as `_README.md` files converted to `README.md` for display on GitHub.
  * The [develop] branch mirrors what I actually work with while inside the Obsidian application and gets sync'd automatically.
  * The [gh-pages] branch is deployed using [MkDocs]() and [GitHub Actions]().
  * Links are converted using the rust library [Obsidian-Export].
  * Links for deployment are converted using the [mkdocs-roamlinks]() plugin.

*Check out the various [GitHub Actions] utilized to enable this entire process.*

### Structure: Maps of Content

If this vault serves as my version of [a second brain](0-Slipbox/Building%20a%20Second%20Brain.md), then *Maps of Content* or *MOC's* are the underlying [synapse](3-Resources/Dictionary/Synapse.md)'s connecting the neurotransmitters of the brain together to form a complex, structured system.

In other words MOC's serve as structural, index notes that list related [Atomic Notes](0-Slipbox/Atomic%20Notes.md) in a single location.

Utilize *Maps of Content* (MOCs) to navigate the vault efficiently:

Some Maps of Content to consider are:

## Content

The vault has a variety of content including, but not limited to:

* Code Snippets
* Lists of Resources
* Checklists
* Slipbox Atomic Notes
* Guides and How-To's
* Lessons Learned
* Daily Notes
* Templates
* Best Practices
* Documentation
* Tools by Category
* Mindsweeps
* Goals and Learning Notes
* Project Support Notes
* Notes about People and Agendas
* Definitions
* Embedded Websites
* Kanban Boards
* MindMaps
* Highlights from a variety of sources
* Clippings from the Web
* Podcast Notes

And More!

### Code Snippets

See the *Code* folder's README for details on all of the code snippets included inside this vault.

---

[main]: https://github.com/jimbrig/KaaS-New/tree/main
[develop]: https://github.com/jimbrig/KaaS-New/tree/develop
[gh-pages]: https://github.com/jimbrig/KaaS-New/tree/gh-pages
[Obsidian-Export]: https://github.com/zoni/obsidian-export
[GitHub Actions]: https://github.com/jimbrig/KaaS-New/tree/main/.github/workflows
