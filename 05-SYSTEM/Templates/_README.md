---
creation_date: 2024-04-01
modification_date: 2024-04-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - Templates
  - Templates Readme
publish: true
permalink:
description:
image:
cssclasses:
  - readme
---


# Templates

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes under the `05-SYSTEM/Templates` directory.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length`**  individual notes in the `05-SYSTEM/Templates` folder, including this note.*

```dataview
LIST FROM "05-SYSTEM/Templates" AND -"CHANGELOG" AND -"05-SYSTEM/Templates/_README"
```

***

## Appendix

*Note created on [[2024-04-01]] and last modified on [[2024-04-01]].*

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"05-SYSTEM/Templates/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024