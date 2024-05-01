---
creation_date: 2024-04-30
modification_date: 2024-04-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/SQL
  - Topic/Dev
  - Topic/Dev/Data
  - Topic/Dev/SQL
  - Status/WIP
aliases:
  - Retrieve Number of Open Connections SQL Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Retrieve Number of Open Connections SQL Code

> [!SOURCE] Sources:
> - *[Helpful functions when you need to find out what is going on on SQL Server](https://gist.github.com/jimbrig/5d91eef57ce1de7d7f799e92d565631d)*

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
> This code will display the number of active connections on a [[Tool - Microsoft SQL Server|SQL Server]] Database.

## Code

```sql
/* NUMBER OF OPEN CONNECTIONS */
SELECT DB_NAME(dbid) as "Database", COUNT(dbid) as "Number Of Open Connections",
loginame as LoginName
FROM sys.sysprocesses
WHERE dbid > 0
GROUP BY dbid, loginame
```

## See Also

- [[MOC - Technology|Technology Map of Content]]
- [[MOC - Development|Development Map of Content]]
- [[MOC - Databases|Databases Map of Content]]
- [[Tool - Microsoft SQL Server|Microsoft SQL Server]]
- [[04-RESOURCES/Code/SQL/_README|SQL Code]]

***

## Appendix

*Note created on [[2024-04-30]] and last modified on [[2024-04-30]].*

### Backlinks

```dataview
LIST FROM [[SQL - Retrieve Number of Open Connections]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/SQL/SQL - Retrieve Number of Open Connections"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024