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
  - OpenAI Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# OpenAI Python Code

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
> - *https://pypi.org/project/openai/*

## Code

### Installation

```bash
pip install openai
```

### Examples

```python
#!/usr/bin/python3
import os
import sys
from openai import OpenAI

# Specify API Key
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

# Specify Model (https://platform.openai.com/docs/models)
OPENAI_MODEL = "gpt-3.5-turbo"

# Create Client
client = OpenAI(
    api_key=OPENAI_API_KEY,
)

# Perform a Chat Completion
chat_completion = client.chat.completions.create(
    messages = [
        {
            "role": "user",
            "content": "Say this is a test",
        }
    ],
    model = OPENAI_MODEL,
)




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
LIST FROM [[Python - OpenAI]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - OpenAI"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024