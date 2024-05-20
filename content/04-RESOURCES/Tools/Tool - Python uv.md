---
creation_date: 2024-04-10
modification_date: 2024-04-10
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Topic/Dev/Python
  - Topic/Dev
  - Status/WIP
aliases:
  - Tool - Python uv
  - uv
  - uv Python Package Manager
publish: true
permalink:
description:
image:
cssclasses:
  - tool
---


# uv - Python Package Manager

> [!SOURCE] Sources:
> - *[astral-sh/uv: An extremely fast Python package installer and resolver, written in Rust. (github.com)](https://github.com/astral-sh/uv)*
> - *[uv: Python packaging in Rust (astral.sh)](https://astral.sh/blog/uv)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE]
> [uv](https://github.com/astral-sh/uv) is an **extremely fast Python package installer and resolver**, written in [[Rust]], and designed as a drop-in replacement for `pip` and `pip-tools` workflows.

[uv](https://github.com/astral-sh/uv) represents a milestone in our pursuit of a ["Cargo for Python"](https://blog.rust-lang.org/2016/05/05/cargo-pillars.html#pillars-of-cargo): a comprehensive Python project and package manager that's fast, reliable, and easy to use.

![](https://i.imgur.com/NyVDp2A.png)

> [!NOTE]
> `uv` is backed by [Astral](https://astral.sh/), the creators of [Ruff](https://github.com/astral-sh/ruff).

## Highlights

- ⚖️ Drop-in replacement for common `pip`, `pip-tools`, and `virtualenv` commands.
- ⚡️ [10-100x faster](https://github.com/astral-sh/uv/blob/main/BENCHMARKS.md) than `pip` and `pip-tools` (`pip-compile` and `pip-sync`).
- 💾 Disk-space efficient, with a global cache for dependency deduplication.
- 🐍 Installable via `curl`, `pip`, `pipx`, etc. uv is a static binary that can be installed without Rust or Python.
- 🧪 Tested at-scale against the top 10,000 PyPI packages.
- 🖥️ Support for macOS, Linux, and Windows.
- 🧰 Advanced features such as [dependency version overrides](https://github.com/astral-sh/uv#dependency-overrides) and [alternative resolution strategies](https://github.com/astral-sh/uv#resolution-strategy).
- ⁉️ Best-in-class error messages with a conflict-tracking resolver.
- 🤝 Support for a wide range of advanced `pip` features, including editable installs, Git dependencies, direct URL dependencies, local dependencies, constraints, source distributions, HTML and JSON indexes, and more.

## Getting Started

Install:

```bash
# On macOS and Linux.
curl -LsSf https://astral.sh/uv/install.sh | sh

# On Windows.
powershell -c "irm https://astral.sh/uv/install.ps1 | iex"

# With pip.
pip install uv

# With pipx.
pipx install uv

# With Homebrew.
brew install uv

# With Pacman.
pacman -S uv
```

## Usage

```bash
uv pip install flask                # Install Flask.
uv pip install -r requirements.txt  # Install from a requirements.txt file.
uv pip install -e .                 # Install the current project in editable mode.
uv pip install "package @ ."        # Install the current project from disk.
uv pip install "flask[dotenv]"      # Install Flask with "dotenv" extra.
```

To generate a set of locked dependencies:

```shell
uv pip compile requirements.in -o requirements.txt    # Read a requirements.in file.
uv pip compile pyproject.toml -o requirements.txt     # Read a pyproject.toml file.
uv pip compile setup.py -o requirements.txt           # Read a setup.py file.
echo flask | uv pip compile - -o requirements.txt     # Read from stdin.
uv pip freeze | uv pip compile - -o requirements.txt  # Lock the current environment.
```

To sync a set of locked dependencies with the virtual environment:

```shell
uv pip sync requirements.txt  # Install from a requirements.txt file.
```

uv's `pip-install` and `pip-compile` commands support many of the same command-line arguments as existing tools, including `-r requirements.txt`, `-c constraints.txt`, `-e .` (for editable installs), `--index-url`, and more.

## See Also

- [[04-RESOURCES/Tools/_README|Tools]]
- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python|Python]]
- [[Tool - Python Pip|pip]]
- [[Tool - Python Pipx|pipx]]
- [[Tool - Python Pipenv|pipenv]]
- [[Tool - Python Poetry|poetry]]
- [[Tool - Python Ruff|Ruff]]

***

## Appendix

*Note created on [[2024-04-10]] and last modified on [[2024-04-10]].*

### Backlinks

```dataview
LIST FROM [[Tool - Python uv]] AND -"CHANGELOG" AND -"04-RESOURCES/Tools/Tool - Python uv"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024