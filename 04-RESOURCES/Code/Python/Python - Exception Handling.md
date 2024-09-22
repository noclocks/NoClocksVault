---
creation_date: 2024-09-18
modification_date: 2024-09-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Python
  - Status/WIP
aliases:
  - Exception Handling Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Exception Handling Python Code

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
> - *https://github.com/ReneNyffenegger/about-python/blob/master/exception-handling/demo.py*

## Code

```python
class  Ex_Base(BaseException):
       pass

class  Ex_Deriv(Ex_Base):
       pass

#      --------------------------------------

try:
       print('Before raising the exception')
       raise Ex_Deriv()
       print('After raising the exception')

except Ex_Deriv as e:               # Order of except statements is important.
       print('Ex_Deriv caught')     # Try to catch the more concrete class first.

except Ex_Base as e:
       print('Ex_Base caught')


#      --------------------------------------

try:
       print('Before raising the exception')
       raise Ex_Deriv()
       print('After raising the exception')

except Ex_Base as e:                # Probably wrong order.
       print('Ex_Base caught')

except Ex_Deriv as e:
       print('Ex_Deriv caught')
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

*Note created on [[2024-09-18]] and last modified on [[2024-09-18]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Python - Exception Handling]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Exception Handling"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024