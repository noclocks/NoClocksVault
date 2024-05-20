---
creation_date: 2024-04-01
modification_date: 2024-04-04
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/MOC
  - Topic/NA
  - Status/Ongoing
aliases:
  - MOC - Tools
  - Tools Map of Content
  - Tools MOC
publish: true
permalink:
description:
image:
cssclasses:
  - moc
---

# Tools Map of Content

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
> This note serves as an index for all notes related to the topic: **Tools**.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Type/Tool").length`**  individual notes with the `#Type/Tool` tag, including this note.*


```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM #Type/Tool
WHERE file.name != this.file.name
SORT file.name asc
```

***

## Appendix

*Note created on [[2024-04-01]] and last modified on [[2024-04-04]].*

### Backlinks

```dataview
LIST FROM [[MOC - Tools]] AND -"CHANGELOG" AND -"03-AREAS/MOCs/MOC - Tools"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024