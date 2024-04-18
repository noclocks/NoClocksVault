---
creation_date: 2024-04-18
modification_date: 2024-04-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - Citations
  - Citations Readme
publish: true
permalink:
description:
image:
cssclasses:
  - readme
---


# Citations

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
> This note serves as an index for all notes under the `05-SYSTEM/Citations` directory.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`**  individual notes in the `05-SYSTEM/Citations` folder, excluding this note.*

```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM "05-SYSTEM/Citations" AND -"05-SYSTEM/Citations/_README"
WHERE file.name != this.file.name
SORT file.name asc
```

***

## Appendix

*Note created on [[2024-04-18]] and last modified on [[2024-04-18]].*

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"05-SYSTEM/Citations/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024