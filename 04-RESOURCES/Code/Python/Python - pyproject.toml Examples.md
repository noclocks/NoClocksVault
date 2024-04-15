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
  "python",
  "poetry",
  "keyword 1",
  "keyword 2"
]
classifiers = [
  "Development Status :: 4 - Beta",
  "Intended Audience :: Developers",
  "Topic :: Scientific/Engineering :: Artificial Intelligence",
  "License :: OSI Approved :: MIT License",
  "Programming Language :: Python :: 3",
  "Programming Language :: Python :: 3.8",
  "Programming Language :: Python :: 3.9",
  "Programming Language :: Python :: 3.10",
]

[tool.poetry.scripts]
# entrypoint for the project package
"myproject" = "src.myproject.__main__:run_app"

[tool.poetry.dependencies]
python = ">=3.9, <=3.13"
# ...

[tool.poetry.dev.dependencies]
black = ""
isort = ""
ruff = ""
black = ""
flake8 = ""
mypy = ""
mypy-extensions = ""
pre-commit = ""
pydocstyle = ""
pylint = ""
pyuprade = ""
pyinstaller = ""

[tool.poetry.test.dependencies]
coverage = ""
coverage-badge = ""
pytest = ""
pytest-cov = ""
pytest-html = ""
httpx = ""
pytest-asyncio = ""
requests-mock = ""
torch = ""

[tool.poetry.docs.d]

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