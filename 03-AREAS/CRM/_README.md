---
creation_date: 2024-05-01
modification_date: 2024-05-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - CRM
  - CRM Readme
publish: true
permalink:
description:
image:
cssclasses:
  - readme
---


# Customer Relationship Management System

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
> This note serves as an index for all notes under the `03-AREAS/CRM` directory.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`**  individual notes in the `03-AREAS/CRM` folder, excluding this note.*

```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM "03-AREAS/CRM" AND -"03-AREAS/CRM/_README"
WHERE file.name != this.file.name
SORT file.name asc
```

***

## Appendix

*Note created on [[2024-05-01]] and last modified on [[2024-05-01]].*

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"03-AREAS/CRM/_README"
```

***

(c) [No Clocks, LLC](https://github.com/nocl