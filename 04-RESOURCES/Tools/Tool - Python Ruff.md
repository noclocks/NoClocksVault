---
creation_date: 2024-04-29
modification_date: NaN
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Type/Tool/Python
  - Type/Tool/Package
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Rust
  - Status/WIP
aliases:
  - Python Ruff
  - Ruff
  - Ruff Linter and Formatter for Python
publish: true
permalink:
description: "Ruff: an extremely fast Python linter and code formatter written in Rust."
image:
cssclasses:
  - tool
---

# Ruff

> [!SOURCE] Sources:
> - *[astral-sh/ruff: An extremely fast Python linter and code formatter, written in Rust.](https://github.com/astral-sh/ruff)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!ABOUT]
> *`Ruff`: an extremely fast [[MOC - Python|Python]] code linter and formatter, written with [[Tool - Rust|Rust]]. For more, see the [documentation](https://docs.astral.sh/ruff/).*

![](https://i.imgur.com/ATm7gnf.png)

- ⚡️ 10-100x faster than existing linters (like Flake8) and formatters (like Black)
- 🐍 Installable via `pip`
- 🛠️ `pyproject.toml` support
- 🤝 Python 3.12 compatibility
- ⚖️ Drop-in parity with [Flake8](https://docs.astral.sh/ruff/faq/#how-does-ruff-compare-to-flake8), isort, and Black
- 📦 Built-in caching, to avoid re-analyzing unchanged files
- 🔧 Fix support, for automatic error correction (e.g., automatically remove unused imports)
- 📏 Over [800 built-in rules](https://docs.astral.sh/ruff/rules/), with native re-implementations of popular Flake8 plugins, like flake8-bugbear
- ⌨️ First-party [editor integrations](https://docs.astral.sh/ruff/integrations/) for [VS Code](https://github.com/astral-sh/ruff-vscode) and [more](https://github.com/astral-sh/ruff-lsp)
- 🌎 Monorepo-friendly, with [hierarchical and cascading configuration](https://docs.astral.sh/ruff/configuration/#pyprojecttoml-discovery)

Ruff aims to be orders of magnitude faster than alternative tools while integrating more functionality behind a single, common interface.

Ruff can be used to replace [Flake8](https://pypi.org/project/flake8/) (plus dozens of plugins), [Black](https://github.com/psf/black), [isort](https://pypi.org/project/isort/), [pydocstyle](https://pypi.org/project/pydocstyle/), [pyupgrade](https://pypi.org/project/pyupgrade/), [autoflake](https://pypi.org/project/autoflake/), and more, all while executing tens or hundreds of times faster than any individual tool.

Ruff is extremely actively developed and used in major open-source projects like:

- [Apache Airflow](https://github.com/apache/airflow)
- [Apache Superset](https://github.com/apache/superset)
- [FastAPI](https://github.com/tiangolo/fastapi)
- [Hugging Face](https://github.com/huggingface/transformers)
- [Pandas](https://github.com/pandas-dev/pandas)
- [SciPy](https://github.com/scipy/scipy)

...and [many more](https://github.com/astral-sh/ruff#whos-using-ruff).

Ruff is backed by [Astral](https://astral.sh/). Read the [launch post](https://astral.sh/blog/announcing-astral-the-company-behind-ruff), or the original [project announcement](https://notes.crmarsh.com/python-tooling-could-be-much-much-faster).

## Installation

Ruff is available as [`ruff`](https://pypi.org/project/ruff/) on PyPI:

```shell
pip install ruff
```

You can also install Ruff via [Homebrew](https://formulae.brew.sh/formula/ruff), [Conda](https://anaconda.org/conda-forge/ruff), and with [a variety of other package managers](https://docs.astral.sh/ruff/installation/).

## Usage

To run Ruff as a linter, try any of the following:

```shell
ruff check                          # Lint all files in the current directory (and any subdirectories).
ruff check path/to/code/            # Lint all files in `/path/to/code` (and any subdirectories).
ruff check path/to/code/*.py        # Lint all `.py` files in `/path/to/code`.
ruff check path/to/code/to/file.py  # Lint `file.py`.
ruff check @arguments.txt           # Lint using an input file, treating its contents as newline-delimited command-line arguments.
```

Or, to run Ruff as a formatter:

```shell
ruff format                          # Format all files in the current directory (and any subdirectories).
ruff format path/to/code/            # Format all files in `/path/to/code` (and any subdirectories).
ruff format path/to/code/*.py        # Format all `.py` files in `/path/to/code`.
ruff format path/to/code/to/file.py  # Format `file.py`.
ruff format @arguments.txt           # Format using an input file, treating its contents as newline-delimited command-line arguments.
```

Ruff can also be used as a [pre-commit](https://pre-commit.com/) hook via [`ruff-pre-commit`](https://github.com/astral-sh/ruff-pre-commit):

```yaml
- repo: https://github.com/astral-sh/ruff-pre-commit
  # Ruff version.
  rev: v0.4.2
  hooks:
    # Run the linter.
    - id: ruff
      args: [ --fix ]
    # Run the formatter.
    - id: ruff-format
```

Ruff can also be used as a [VS Code extension](https://github.com/astral-sh/ruff-vscode) or alongside any other editor through the [Ruff LSP](https://github.com/astral-sh/ruff-lsp).

Ruff can also be used as a [GitHub Action](https://github.com/features/actions) via [`ruff-action`](https://github.com/chartboost/ruff-action):

```yaml
name: Ruff
on: [ push, pull_request ]
jobs:
  ruff:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: chartboost/ruff-action@v1
```

## Configuration

Ruff can be configured through a `pyproject.toml`, `ruff.toml`, or `.ruff.toml` file (see: [_Configuration_](https://docs.astral.sh/ruff/configuration/), or [_Settings_](https://docs.astral.sh/ruff/settings/) for a complete list of all configuration options).

If left unspecified, Ruff's default configuration is equivalent to the following `ruff.toml` file:

```toml
# Exclude a variety of commonly ignored directories.
exclude = [
    ".bzr",
    ".direnv",
    ".eggs",
    ".git",
    ".git-rewrite",
    ".hg",
    ".ipynb_checkpoints",
    ".mypy_cache",
    ".nox",
    ".pants.d",
    ".pyenv",
    ".pytest_cache",
    ".pytype",
    ".ruff_cache",
    ".svn",
    ".tox",
    ".venv",
    ".vscode",
    "__pypackages__",
    "_build",
    "buck-out",
    "build",
    "dist",
    "node_modules",
    "site-packages",
    "venv",
]

# Same as Black.
line-length = 88
indent-width = 4

# Assume Python 3.8
target-version = "py38"

[lint]
# Enable Pyflakes (`F`) and a subset of the pycodestyle (`E`)  codes by default.
select = ["E4", "E7", "E9", "F"]
ignore = []

# Allow fix for all enabled rules (when `--fix`) is provided.
fixable = ["ALL"]
unfixable = []

# Allow unused variables when underscore-prefixed.
dummy-variable-rgx = "^(_+|(_+[a-zA-Z0-9_]*[a-zA-Z0-9]+?))$"

[format]
# Like Black, use double quotes for strings.
quote-style = "double"

# Like Black, indent with spaces, rather than tabs.
indent-style = "space"

# Like Black, respect magic trailing commas.
skip-magic-trailing-comma = false

# Like Black, automatically detect the appropriate line ending.
line-ending = "auto"
```

Note that, in a `pyproject.toml`, each section header should be prefixed with `tool.ruff`. For example, `[lint]` should be replaced with `[tool.ruff.lint]`.

Some configuration options can be provided via dedicated command-line arguments, such as those related to rule enablement and disablement, file discovery, and logging level:

```shell
ruff check --select F401 --select F403 --quiet
```

The remaining configuration options can be provided through a catch-all `--config` argument:

```shell
ruff check --config "lint.per-file-ignores = {'some_file.py' = ['F841']}"
```

See `ruff help` for more on Ruff's top-level commands, or `ruff help check` and `ruff help format` for more on the linting and formatting commands, respectively.

## Rules

**Ruff supports over 800 lint rules**, many of which are inspired by popular tools like Flake8, isort, pyupgrade, and others. Regardless of the rule's origin, Ruff re-implements every rule in Rust as a first-party feature.

By default, Ruff enables Flake8's `F` rules, along with a subset of the `E` rules, omitting any stylistic rules that overlap with the use of a formatter, like `ruff format` or [Black](https://github.com/psf/black).

If you're just getting started with Ruff, **the default rule set is a great place to start**: it catches a wide variety of common errors (like unused imports) with zero configuration.

Beyond the defaults, Ruff re-implements some of the most popular Flake8 plugins and related code quality tools, including:

- [autoflake](https://pypi.org/project/autoflake/)
- [eradicate](https://pypi.org/project/eradicate/)
- [flake8-2020](https://pypi.org/project/flake8-2020/)
- [flake8-annotations](https://pypi.org/project/flake8-annotations/)
- [flake8-async](https://pypi.org/project/flake8-async)
- [flake8-bandit](https://pypi.org/project/flake8-bandit/) ([#1646](https://github.com/astral-sh/ruff/issues/1646))
- [flake8-blind-except](https://pypi.org/project/flake8-blind-except/)
- [flake8-boolean-trap](https://pypi.org/project/flake8-boolean-trap/)
- [flake8-bugbear](https://pypi.org/project/flake8-bugbear/)
- [flake8-builtins](https://pypi.org/project/flake8-builtins/)
- [flake8-commas](https://pypi.org/project/flake8-commas/)
- [flake8-comprehensions](https://pypi.org/project/flake8-comprehensions/)
- [flake8-copyright](https://pypi.org/project/flake8-copyright/)
- [flake8-datetimez](https://pypi.org/project/flake8-datetimez/)
- [flake8-debugger](https://pypi.org/project/flake8-debugger/)
- [flake8-django](https://pypi.org/project/flake8-django/)
- [flake8-docstrings](https://pypi.org/project/flake8-docstrings/)
- [flake8-eradicate](https://pypi.org/project/flake8-eradicate/)
- [flake8-errmsg](https://pypi.org/project/flake8-errmsg/)
- [flake8-executable](https://pypi.org/project/flake8-executable/)
- [flake8-future-annotations](https://pypi.org/project/flake8-future-annotations/)
- [flake8-gettext](https://pypi.org/project/flake8-gettext/)
- [flake8-implicit-str-concat](https://pypi.org/project/flake8-implicit-str-concat/)
- [flake8-import-conventions](https://github.com/joaopalmeiro/flake8-import-conventions)
- [flake8-logging](https://pypi.org/project/flake8-logging/)
- [flake8-logging-format](https://pypi.org/project/flake8-logging-format/)
- [flake8-no-pep420](https://pypi.org/project/flake8-no-pep420)
- [flake8-pie](https://pypi.org/project/flake8-pie/)
- [flake8-print](https://pypi.org/project/flake8-print/)
- [flake8-pyi](https://pypi.org/project/flake8-pyi/)
- [flake8-pytest-style](https://pypi.org/project/flake8-pytest-style/)
- [flake8-quotes](https://pypi.org/project/flake8-quotes/)
- [flake8-raise](https://pypi.org/project/flake8-raise/)
- [flake8-return](https://pypi.org/project/flake8-return/)
- [flake8-self](https://pypi.org/project/flake8-self/)
- [flake8-simplify](https://pypi.org/project/flake8-simplify/)
- [flake8-slots](https://pypi.org/project/flake8-slots/)
- [flake8-super](https://pypi.org/project/flake8-super/)
- [flake8-tidy-imports](https://pypi.org/project/flake8-tidy-imports/)
- [flake8-todos](https://pypi.org/project/flake8-todos/)
- [flake8-trio](https://pypi.org/project/flake8-trio/)
- [flake8-type-checking](https://pypi.org/project/flake8-type-checking/)
- [flake8-use-pathlib](https://pypi.org/project/flake8-use-pathlib/)
- [flynt](https://pypi.org/project/flynt/) ([#2102](https://github.com/astral-sh/ruff/issues/2102))
- [isort](https://pypi.org/project/isort/)
- [mccabe](https://pypi.org/project/mccabe/)
- [pandas-vet](https://pypi.org/project/pandas-vet/)
- [pep8-naming](https://pypi.org/project/pep8-naming/)
- [pydocstyle](https://pypi.org/project/pydocstyle/)
- [pygrep-hooks](https://github.com/pre-commit/pygrep-hooks)
- [pylint-airflow](https://pypi.org/project/pylint-airflow/)
- [pyupgrade](https://pypi.org/project/pyupgrade/)
- [tryceratops](https://pypi.org/project/tryceratops/)
- [yesqa](https://pypi.org/project/yesqa/)

For a complete enumeration of the supported rules, see [_Rules_](https://docs.astral.sh/ruff/rules/).

***

## Appendix

*Note created on [[2024-04-29]] and last modified on [[2024-04-29]].*

### See Also

- [[Tools - Python]]
- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python uv|uv]]
- [[04-RESOURCES/Tools/_README|Tools]]
- [[Tool - Python flake8|flake8]]
- [[Tool - Python isort|isort]]
- [[Tool - Python Black|Black]]
- [[Tool - Python Pyright|Pyright]]
- [[Tool - ESLint|ESLint]]
- [[Tool - Prettier|Prettier]]
- [[Tool - Biome|Biome]]
- [[Tool - Python PyCodeStyle|PyCodeStyle]]
- [[Tool - Python PyDocStyle|PyDocStyle]]
- [[Toole - Python PyUpgrade|PyUpgrade]]

### Backlinks

```dataview
LIST FROM [[Tool - Python Ruff]] AND -"CHANGELOG" AND -"//Tool - Python Ruff"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024