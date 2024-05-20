---
creation_date: 2024-04-09
modification_date: 2024-04-09
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/MOC
  - Type/Agenda
  - Topic/Business
  - Status/Ongoing
aliases:
  - MOC - Agendas
  - Agendas Map of Content
publish: true
permalink:
description:
image:
cssclasses:
  - moc
---

# Agendas Map of Content

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
> This note serves as an index for all notes related to the topic: **Agendas**.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Type/Agenda").length`**  individual notes with the `#Type/Agenda` tag, including this note.*


```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM #Type/Agenda
WHERE file.name != this.file.name
SORT file.name asc
```

***

## Appendix

*Note created on [[2024-04-09]] and last modified on [[2024-04-09]].*

### Backlinks

```dataview
LIST FROM [[MOC - Agendas]] AND -"CHANGELOG" AND -"03-AREAS/MOCs/MOC - Agendas"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024