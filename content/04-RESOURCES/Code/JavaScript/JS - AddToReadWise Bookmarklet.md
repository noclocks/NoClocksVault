---
creation_date: 2024-05-17
modification_date: 2024-05-17
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Type/Bookmarklet
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/WebDev
  - Status/WIP
aliases:
  - JavaScript AddToReadWise Bookmarklet Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript AddToReadWise Bookmarklet

> [!SOURCE] Sources:
> - *[ReadWise API Documentation](https://readwise.io/api_docs)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!example] **Code Snippet Metadata**:
> - Date:: [[2024-05-17]]
> - Source: **
> - Language: [[MOC - JavaScript|JavaScript]]
> - Description:: ""

## Code Snippet

```javascript
/**
* Bookmarklet to add the current page to ReadWise
*/
javascript: (
  function () {
    /**
    * Open the ReadWise page with the current page's title and URL
    * @function open
    * @param {string} url
    * @returns {string} Encoded URL for ReadWise
    */
    open(
      "https://readwise.io/save?title=" +
        encodeURIComponent(document.title) +
        "&url=" +
        encodeURIComponent(location.href)
    );
  }
)();
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-05-17]] and last modified on [[2024-05-17]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[JS - AddToReadWise Bookmarklet]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - AddToReadWise Bookmarklet"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024