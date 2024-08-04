---
creation_date: 2024-07-25
modification_date: 2024-07-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/CSS
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/CSS
  - Status/WIP
aliases:
  - CSS Limit Image Size Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Limit Image Size Code

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
> - **

## Code Snippet

```css
img {
  max-width: 100%;
}
```

## Details

Images should be approximately the size of the space they will occupy, but sometimes, we end up with really long pictures that cause the content to shift and create horizontal scrolling.

One way to avoid this is by setting a maximum width of 100%. While this is not a fool-proof solution (margins and paddings may impact the width), it will work in most cases.

![side by side comparison. Left (before): an image overflows the content size causing scrollbars to appear. Right (after): the image adjust to the content size.](https://alvaromontoro.com/images/blog/one-liner-3.webp)

Prevent horizontal scrolling and make images flow better with the text

## See Also

- [[04-RESOURCES/Code/CSS/_README|CSS Code]]
- [[Cascading Style Sheets (CSS)]]
- [[Hyper Text Markup Language (HTML)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-07-25]] and last modified on [[2024-07-25]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[CSS - Limit Image Size]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Limit Image Size"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024