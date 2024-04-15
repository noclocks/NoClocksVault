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
  - pyproject.toml Examples Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# pyproject.toml Examples Python Code

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

```toml
[build-system]
requires = ["poetry_core>=1.0.0"]
build-backend = "poetry.core.masonry.api"

[virtualenvs]
create = true
in-project = true

[tool.poetry]
name = "MyProject"
version = "1.0.0"
description = "MyProject's Description."
readme = "README.md"
license = "MIT"
authors = [
  "Author Name <Author Email@email.com>"
]
repository = "https://github.com/myuser/myproject"
homepage = "https://github.com/myuser/myproject"
keywords = [
  ""
]

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

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### Backlinks

```dataview
LIST FROM [[Python - pyproject.toml Examples]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - pyproject.toml Examples"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024