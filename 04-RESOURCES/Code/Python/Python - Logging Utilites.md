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
  - Logging Utilites Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Logging Utilites Python Code

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

- `src/utils/logging_utils.py`:

```python
"""Logging Utilities"""
import logging
from typing import Optional

from settings import Settings


def get_logger(settings: Optional[Settings] = None) -> Logger:
    """Get Logger
    :param: settings: (Optional)
    :result: Logger
    """
    
    logger = logging.getLogger("<project>")
    logger.setLevel(settings.log_level if settings else "INFO")

    # Clear the existing handlers
    for handler in logger.handlers[:]:
        logger.removeHandler(handler)

    handler = logging.StreamHandler()
    handler.setLevel(settings.log_level if settings else "INFO")
    formatter = logging.Formatter(
        "%(asctime)s - %(name)s - %(levelname)s - %(message)s"
    )
    handler.setFormatter(formatter)
    logger.addHandler(handler)

    return logger
```

where `src/settings.py` is:

```python
import typing
import os

from enum import Enum
from functools import lru_cache
from pydantic_yaml import YamlModel


class Settings(YamlModel):
  api_key: typing.Optional[str] = None
  my_other_s
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
LIST FROM [[Python - Logging Utilites]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Logging Utilites"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024