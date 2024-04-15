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

[tool.poetry.docs.dependencies]
mkdocs = ""
mkdocs-material = ""

[tool.black]
target-version = ["py10"]
line-length = 88
color = true

[tool.isort]
py_version = 310
line_length = 88
known_typing = [
	"typing",
	"types",
	"typing_extensions",
	"mypy",
	"mypy_extensions"
]
sections = [
	"FUTURE",
	"TYPING",
	"STDLIB",
	"THIRDPARTY",
	"FIRSTPARTY",
	"LOCALFOLDER"
]
include_trailing_comma = true
profile = "black"
multi_line_output = 3
indent = 4
color_output = true

[tool.mypy]
python_version = 3.10
pretty = true
show_traceback = true
color_output = true
allow_redefinition = false
check_untyped_defs = true
disallow_any_generics = true
disallow_incomplete_defs = true
ignore_missing_imports = true
implicit_reexport = false
no_implicit_optional = true
show_column_numbers = true
show_error_codes = true
show_error_context = true
strict_equality = true
strict_optional = true
warn_no_return = true
warn_redundant_casts = true
warn_return_any = true
warn_unreachable = true
warn_unused_configs = true
warn_unused_ignores = true

[tool.pytest.ini_options]
norecursedirs = [
	"hooks",
	"*.egg",
	".eggs",
	"dist",
	"build",
	"docs",
	".tox",
	".git",
	"__pycache__"
]
doctest_optionflags = [
	"NUMBER",
	"NORMALIZE_WHITESPACE",
	"IGNORE_EXCEPTION_DETAIL"
]
addopts = [
    "--strict-markers",
    "--tb=short",
    "--doctest-modules",
    "--doctest-continue-on-failure",
]

[tool.coverage.run]
source = ["tests"]

[coverage.paths]
source = "src-myproject"

[coverage.run]
branch = true

[coverage.report]
fail_under = 50
show_missing = true

exclude = '''
/(
    \.git
    | \.hg
    | \.mypy_cache
    | \.tox
    | \.venv
    | _build
    | buck-out
    | build
    | dist
    | env
    | venv
)/
'''

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