---
creation_date: 2024-03-28
modification_date: 2024-03-28
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - Books
  - Books Readme
publish: true
permalink:
description: "Readme note for the books folder."
image:
cssclasses:
  - readme
---


# Books

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
> This note serves as an index for all notes under the `04-RESOURCES/Books` directory.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length`**  individual notes in the `04-RESOURCES/Books` folder, including this note.*

```dataview
LIST FROM "04-RESOURCES/Books" AND -"CHANGELOG" AND -"04-RESOURCES/Books/_README"
```

***

## Appendix

*Note created on [[2024-03-28]] and last modified on [[2024-03-28]].*

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Books/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024