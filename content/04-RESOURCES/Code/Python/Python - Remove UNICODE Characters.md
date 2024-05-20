---
creation_date: 2024-04-23
modification_date: 2024-04-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Python
  - Status/WIP
aliases:
  - Remove UNICODE Characters Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Remove UNICODE Characters Python Code

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - **

## Code

```python
a = "Happy Holi 😀 May this festival of colours bring you happiness, love and joy.🥰 Stay safe everyone Smiling face with smiling eyes"
a = a.encode('ascii', 'ignore').decode()
print(a)
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python]]
- [[Tool - Python Flask]]


***

## Appendix

*Note created on [[2024-04-23]] and last modified on [[2024-04-23]].*

### Backlinks

```dataview
LIST FROM [[Python - Remove UNICODE Characters]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Remove UNICODE Characters"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024