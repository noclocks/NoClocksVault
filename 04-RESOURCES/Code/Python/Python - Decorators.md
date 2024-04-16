---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Python
  - Status/WIP
aliases:
  - Decorators Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Decorators Python Code

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

If you’ve ever glanced at a decorator and felt your mind beginning to liquefy, you’re in good company. They can seem a bit like magic at first. But here’s the thing: consider decorators as those fancy add-ons you can put on your functions. Need to time how long a function takes? There’s a decorator for that. Want to add logging? Another decorator! It’s like upgrading your functions with superpowers.

Here’s where it gets crucial: decorators save you from writing repetitive boilerplate code. Need to perform the same setup steps for multiple functions? A well-crafted decorator takes care of that for you. It’s the coding equivalent of getting a cool new outfit and instantly being ready for a night out.

## Code

```python
def my_timer(func):
    import time
    def wrapper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        print(f"{func.__name__} took: {end-start:.4f} seconds")
        return result
    return wrapper

@my_timer  # Look, no messy setup!
def slow_function(n):
    time.sleep(n)
```

Decorators are fantastic, but just like you wouldn’t wear a tuxedo to the grocery store, use them wisely. Too many piled on will make your code harder to understand.

## Details


## See Also

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python]]
- [[Tool - Python Flask]]


***

## Appendix

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### Backlinks

```dataview
LIST FROM [[Python - Decorators]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Decorators"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024