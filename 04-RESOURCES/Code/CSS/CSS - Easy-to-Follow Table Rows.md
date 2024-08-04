---
creation_date: 2024-07-25
modification_date: 2024-07-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/CSS
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/CSS
  - Status/WIP
aliases:
  - CSS Easy-to-Follow Table Rows Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Easy-to-Follow Table Rows Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - **

## Code Snippet

```css
:is(tbody, table) > tr:nth-child(odd) {
  background: #0001; /* or #fff1 for dark themes */
}
```

We must use tables to display data, not for layout. But tables are ugly by default, and we don't want data to look ugly. In particular, one thing that helps organize the data and make it more readable is having a zebra table with alternating dark/light rows.

The one-liner displayed above makes achieving that style easy. It can be simplified to be only `tr` without considering the `tbody` or `table` parent, but it would also apply to the table header, which we may not want. It's a matter of taste.

![[Pasted image 20240725205045.png]]

## See Also

- [[04-RESOURCES/Code/CSS/_README|CSS Code]]
- [[Cascading Style Sheets (CSS)]]
- [[Hyper Text Markup Language (HTML)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-07-25]] and last modified on [[2024-07-25]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[CSS - Easy-to-Follow Table Rows]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Easy-to-Follow Table Rows"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024