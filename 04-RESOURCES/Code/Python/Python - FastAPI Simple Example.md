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
  - FastAPI Simple Example Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# FastAPI Simple Example Python Code

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

If you’re building modern web APIs in Python, FastAPI is an absolute must-have in your toolbox. Its speed, developer experience, and industry-standard tooling make it a compelling choice that’ll save you time and headaches.

While [[Tool - Python Flask|Flask]] and [[Tool - Python Django|Django]] are the traditional [[MOC - Python|Python]] web application or API frameworks, [[Tool - Python FastAPI|FastAPI]] leverages the latest Python tricks and enhancements and should technically be faster.

## Code

```python
from fastapi import FastAPI, Depends
from pydantic import BaseModel

class Item(BaseModel):
    name: str
    price: float

app = FastAPI()

@app.post("/items/")
async def create_item(item: Item):
    return {"message": f"Item '{item.name}' created!"}
```

## Details

Key Features of [[Tool - Python FastAPI|FastAPI]]:

- **Automatic Data Validation**: Using [[Tool - Python Pydantic|Pydantic]] [[Data Modeling|data models]], [[Tool - Python FastAPI|FastAPI]] ensures your [[Application Programming Interface (API)|API]] endpoints always receive the correct data types and enforces any additional constraints you define (i.e. less error-handling code for you to write).
- **Elegant Dependency Injection**: [[Tool - Python FastAPI|FastAPI]] has an intuitive dependency injection system. Declare dependencies in your path operation functions, and [[Tool - Python FastAPI|FastAPI]] will provide them. This keeps your code organized and perfect for testing.
- **Built-In Swagger/OpenAPI Documentation**: [[Tool - Python FastAPI|FastAPI]] automatically generates interactive [[Application Programming Interface (API)|API]] documentation (using [[Tool - Swagger UI|Swagger UI]] or [[Tool - ReDoc|ReDoc]]). This means your API is self-documenting, saving you tons of time.

## See Also

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python Flask|Flask]]
- [[Tool - Python FastAPI|FastAPI]]
- [[Tool - Langserve|LangServe]]
- [[Tool - Python Django|Django]]
- [[Tool - Python Pydantic|Pydantic]]
- [[Python Flask API Project Folder Structure]]

***

## Appendix

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### Backlinks

```dataview
LIST FROM [[Python - FastAPI Simple Example]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - FastAPI Simple Example"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024