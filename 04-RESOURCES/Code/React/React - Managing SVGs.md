---
creation_date: 2024-05-09
modification_date: 2024-05-09
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Type/Code/React
  - Type/Code/TypeScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/TypeScript
  - Topic/Dev/Frontend
  - Topic/Dev/Web
  - Topic/Dev/React
  - Status/WIP
aliases:
  - Managing SVGs React Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Managing SVGs React Code

> [!SOURCE] Sources:
> - *[The best way to manage icons in React/Nextjs (pranavp.xyz)](https://pranavp.xyz/blog/the-best-way-to-manage-icons-in-react-js)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE]
> When constructing a UI, the significance of SVG cannot be overstated. As the code base expands, the utilization of SVG also grows. In this blog, we will explore the top three methods for rendering SVG and identify the most optimal solution among them.

![](https://i.imgur.com/3KGUeRE.png)


## Initial Approach

Initially, the approach was to use a simple `<img>` [[Hyper Text Markup Language (HTML)|HTML]] tag:

```typescript
const ImageSvg = () => <img src="logo.svg" />
```

> [!PROS]
> This method is recommended exclusively for handling large [[Scalable Vector Graphics (SVG)]] files.



## Code Snippet

- `src/components/Example.tsx`

```typescript

```

## Details



## See Also

- [[04-RESOURCES/Code/React/_README|React Code]]
- [[Tool - React.js|React]] (Tool)
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[04-RESOURCES/Code/TypeScript/_README|TypeScript Code]]
- [[MOC - Development|Development Map of Content]]
- [[MOC - React|React Map of Content]]
- [[MOC - JavaScript|JavaScript Map of Content]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - JS - Next.js|Next.js]]


***

## Appendix

*Note created on [[2024-05-09]] and last modified on [[2024-05-09]].*

### Backlinks

```dataview
LIST FROM [[React - Managing SVGs]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - Managing SVGs"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
