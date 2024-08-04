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
  - CSS Spacing in Table Cells and Headings Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Spacing in Table Cells and Headings Code

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
td, th {
  padding: 0.5em; /* or 0.5em 1em... or any value different from 0 */
}
```

One last change to make tables more accessible and easier to read is to space the content slightly by adding padding to the table cells and headers. By default, most browsers don't have any padding, and the text of different cells touches, making it confusing to differentiate where one begins and the other ends.

We can change the padding value to adjust it to our favorite size. However, avoid overdoing it to avoid unnecessary scrolling or too much blank space.

![side by side comparison. Left (before): table cells text content is altogether. Right (after): table cells content is clearly separated from other table cells.](https://alvaromontoro.com/images/blog/one-liner-8.webp)

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
LIST FROM [[CSS - Spacing in Table Cells and Headings]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Spacing in Table Cells and Headings"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024