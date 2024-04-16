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
  - FastAPI API Key Authentication Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# FastAPI API Key Authentication Python Code

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

In `src/api/auth/security.py`

```python
from dotenv import dotenv_values  
from fastapi.security import APIKeyHeader  
from fastapi import HTTPException, Security, status

# Constants  
API_KEY_HEADER = APIKeyHeader(name="X-API-Key")  
API_KEY = dotenv_values(".env")["SERVICE_API_KEY"]  

def validate_authentication(api_key: str = Security(API_KEY_HEADER)):  
	""" Validate API key authentication.  
	:param api_key: Authentication credentials.  
	:raise HTTPException(401): When an incorrect API key is supplied.  
	"""
	if api_key != API_KEY:  
	raise HTTPException(  
		status_code=status.HTTP_401_UNAUTHORIZED,  
		detail="Invalid or missing API Key",  
		headers={"WWW-Authenticate": "X-API-Key"}  
	)
```

This _validate_authentication_ procedure handles API-key authentication for process endpoints that needs it. FastAPI are using a dependency injection pattern in the endpoint decorator and the procedure is designed to be used there. The input _api_key_ parameter is supplied automatically by FastAPI.

Then in `src/api/__main__.py`:

```python
import asyncio
from uuid import uuid4

from pydantic import BaseModel, UUID4
from fastapi import 
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
LIST FROM [[Python - FastAPI API Key Authentication]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - FastAPI API Key Authentication"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024