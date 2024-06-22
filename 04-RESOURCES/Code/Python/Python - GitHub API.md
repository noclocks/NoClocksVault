---
creation_date: 2024-06-06
modification_date: 2024-06-06
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Python
  - Status/WIP
aliases:
  - GitHub API Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# GitHub API Python Code

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
> - *https://github.com/OCA/maintainer-tools/blob/master/tools/oca_projects.py*

## Code

- `src/utils/github.py`:

```python
"""
Interact with the GitHub API via Helper Functions.

OCA_REPOSITORY_NAMES: list of OCA repository names

"""
from __future__ import print_function
from contextlib import contextmanager
import os
import shutil
import subprocess
import tempfile

import appdirs
from .config import NOT_ADDONS, is_main_branch
from .github_login import login

ALL = ["OCA_REPOSITORY_NAMES", "url"]


def get_repositories():
    gh = login()
    all_repos = [
        repo.name for repo in gh.repositories_by("OCA") if repo.name not in NOT_ADDONS
    ]
    return all_repos
```


- `src/config.py`:

```python
from __future__ import absolute_import, print_function

import configparser
import os
import re

CREDENTIALS_FILE = "credentials.cfg"

def init_config():
    """Initialize Configuration"""
    config = configparser.ConfigParser()
    config.add_section("GitHub")
    config.set("GitHub", "username", "")
    config.set("GitHub", "token", "")
    write_config(config)

def read_config():
	"""Read Configuration"""
    if not os.path.exists(CREDENTIALS_FILE):
        init_config()
    config = configparser.ConfigParser()
    config.read(CREDENTIALS_FILE)
    return config


def write_config(config):
    with open(CREDENTIALS_FILE, "w") as fd:
        config.write(fd)


def is_main_branch(branch):
    return re.match(r"^(6\.1|\d+\.0)$", branch)
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

*Note created on [[2024-06-06]] and last modified on [[2024-06-06]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Python - GitHub API]] AND -"CHANGELOG" AND -"//Python - GitHub API"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024