---
creation_date: 2024-04-26
modification_date: 2024-04-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - Simple Python FastAPI Project Structure
publish: true
permalink:
description:
image:
cssclasses:
---

## Structure

```plaintext
<root>
├── app/  
│ ├── __init__.py  
│ └── main.py  
├── docker-compose.yml  
├── Dockerfile  
├── .gitignore  
├── LICENSE  
├── poetry.lock  
├── pyproject.toml  
└── README.md
```

## Main App

```python
# app/main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def status() ->:
```