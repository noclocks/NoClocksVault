---
creation_date: 2024-04-23
modification_date: 2024-04-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Python
  - Status/WIP
aliases:
  - Tavily Search Retriever Class Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Tavily Search Retriever Class Python Code

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

- `src/services/tavily/tavily_search.py`:

```python
"""Tavily Search API Retriever"""
import os
from tavily import TavilyClient
from duckduckgo_search import DDGS

class TavilySearch():
    """
    Tavily API Retriever
    """
    def __init__(self, query):
        """
        Initializes the TavilySearch object
        Args:
            query:
        """
        self.query = query
        self.api_key = self.get_api_key()
        self.client = TavilyClient(self.api_key)

    def get_api_key(self):
        """
        Gets the Tavily API key
        Returns:

        """
        # Get the API key
        try:
            api_key = os.environ["TAVILY_API_KEY"]
        except:
            raise Exception("Tavily API key not found. Please set the TAVILY_API_KEY environment variable. "
                            "You can get a key at https://app.tavily.com")
        return api_key

    def search(self, max_results=7):
        """
        Searches the query
        Returns:

        """
        try:
            # Search the query
            results = self.client.search(self.query, search_depth="advanced", max_results=max_results)
            # Return the results
            search_response = [{"href": obj["url"], "body": obj["content"]} for obj in results.get("results", [])]
        except Exception as e: # Fallback in case overload on Tavily Search API
            print(f"Error: {e}")
            ddg = DDGS()
            search_response = ddg.text(self.query, region='wt-wt', max_results=max_results)
        return search_response
```

- `src/services/tavily/__init__.py`:

```python

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

*Note created on [[2024-04-23]] and last modified on [[2024-04-23]].*

### Backlinks

```dataview
LIST FROM [[Python - Tavily Search Retriever Class]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Tavily Search Retriever Class"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024