---
creation_date: 2024-04-18
modification_date: 2024-04-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/HTML
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/HTML
  - Status/WIP
aliases:
  - HTML Define Base URL for Relative Links Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# HTML Define Base URL for Relative Links Code

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

You can use the `<base>` tag to define the base URL for all relative URLs in a web page.

This is handy when you want to create a shared starting point for all relative URLs on a web page, making it easier to navigate and load resources.

## Code Snippet

```html
<head>
   <base href="https://noclocks.dev" target="_blank" />
</head>
<body>
   <a href="/blog">Blogs</a>
   <a href="/contact">Contact</a>
</body>
```

## See Also

- [[04-RESOURCES/Code/HTML/_README|HTML Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-04-18]] and last modified on [[2024-04-18]].*

### Backlinks

```dataview
LIST FROM [[HTML - Define Base URL for Relative Links]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/HTML/HTML - Define Base URL for Relative Links"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024