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
  - Pydantic Configuration Management Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Pydantic Configuration Management


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

- `configurator.py`:

```python
import os
import sys
import site
from typing import Union, Type, Tuple

from pydantic import Field, computed_field
from pydantic_settings import (BaseSettings, SettingsConfigDict,
                               PydanticBaseSettingsSource)

USER_BASE = site.getuserbase()
""" This is required when programs are frozen."""
MISSING_ENV = '>>> undefined ENV parameter <<<'
""" Error message for missing environment variables. """
MISSING_SECRET = '>>> missing SECRETS file <<<'
""" Error message for missing secrets file. """
SECRETS_DIR = ('/run/secrets'
               if os.path.exists('/.dockerenv')
               else f'{site.USER_BASE}/secrets')
PLATFORM = {
    'linux': 'Linux',
    'linux2': 'Linux',
    'win32': 'Windows',
    'darwin': 'MacOS'
}
ENVIRONMENT = os.getenv('ENVIRONMENT', MISSING_ENV)

if not os.path.exists('/.dockerenv'):
    os.makedirs(SECRETS_DIR, exist_ok=True)
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
LIST FROM [[Python - Pydantic Configuration Management]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Pydantic Configuration Management"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024