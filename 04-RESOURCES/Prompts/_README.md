---
creation_date: 2024-04-29
modification_date: 2024-04-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - Prompts
  - Prompts Readme
publish: true
permalink:
description:
image:
cssclasses:
  - readme
---


# Prompts

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
> This note serves as an index for all notes under the `04-RESOURCES/Prompts` directory.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`**  individual notes in the `04-RESOURCES/Prompts` folder, excluding this note.*

```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM "04-RESOURCES/Prompts" AND -"04-RESOURCES/Prompts/_README"
WHERE file.name != this.file.name
SORT file.name asc
```

***

## Appendix

*Note created on [[2024-04-29]] and last modified on [[2024-04-29]].*

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Prompts/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024