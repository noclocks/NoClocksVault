---
creation_date: 2024-05-30
modification_date: 2024-05-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/SQL
  - Topic/Dev
  - Topic/Dev/Data
  - Topic/Dev/SQL
  - Status/WIP
aliases:
  - Auto-Update Timestamps SQL Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# PostgreSQL - Auto-Update Time Stamps SQL Code

> [!SOURCE] Sources:
> - **

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
> This note is about ...

## Code

```sql
create extension if not exists moddatetime schema extensions;

-- assuming the table name is "todos", and a timestamp column "updated_at"
-- this trigger will set the "updated_at" column to the current timestamp for every update
create trigger handle_updated_at before update on todos
  for each row execute procedure moddatetime (updated_at);
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - Technology|Technology Map of Content]]
- [[MOC - Development|Development Map of Content]]
- [[MOC - Databases|Databases Map of Content]]
- [[Tool - PostgreSQL|PostgreSQL]]
- [[Tool - Microsoft SQL Server|Microsoft SQL Server]]
- [[04-RESOURCES/Code/SQL/_README|SQL Code]]

***

## Appendix

*Note created on [[2024-05-30]] and last modified on [[2024-05-30]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[SQL - PostgreSQL - Auto-Update Time Stamps]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/SQL/SQL - PostgreSQL - Auto-Update Time Stamps"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024