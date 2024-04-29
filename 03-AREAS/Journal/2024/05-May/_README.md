---
creation_date: 2024-04-29
modification_date: 2024-04-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - 05-May
  - 05-May Readme
publish: true
permalink:
description:
image:
cssclasses:
  - readme
---


# 05-May

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
> This note serves as an index for all notes under the `03-AREAS/Journal/2024/05-May` directory.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`**  individual notes in the `03-AREAS/Journal/2024/05-May` folder, excluding this note.*

```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM "03-AREAS/Journal/2024/05-May" AND -"03-AREAS/Journal/2024/05-May/_README"
WHERE file.name != this.file.name
SORT file.name asc
```

***

## Appendix

*Note created on [[2024-04-29]] and last modified on [[2024-04-29]].*

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"03-AREAS/Journal/2024/05-May/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024