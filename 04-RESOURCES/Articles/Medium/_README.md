---
creation_date: 2024-06-22
modification_date: 2024-06-22
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - Medium
  - Medium Readme
publish: true
permalink:
description:
image:
cssclasses:
  - readme
---


# Medium

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes under the `04-RESOURCES/Articles/Medium` directory.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`**  individual notes in the `04-RESOURCES/Articles/Medium` folder, excluding this note.*

```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM "04-RESOURCES/Articles/Medium" AND -"04-RESOURCES/Articles/Medium/_README"
WHERE file.name != this.file.name
SORT file.name asc
```

***

## Appendix

*Note created on [[03-AREAS/Journal/2024-06-22]] and last modified on [[03-AREAS/Journal/2024-06-22]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Articles/Medium/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024