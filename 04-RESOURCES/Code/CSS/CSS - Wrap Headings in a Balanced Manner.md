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
  - CSS Wrap Headings in a Balanced Manner Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Wrap Headings in a Balanced Manner Code

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
h1, h2, h3, h4, h5, h6 {
  text-wrap: balance;
}
```

Headings are an essential part of the web structure, but due to their larger size and short(-er) content, they may look weird. Especially when they occupy more than one line. A solution that will help is balancing the headings with `text-wrap`.

Although `balance` seems to be the most popular value for `text-wrap`, it is not the only one. We could also use `pretty`, which moves an extra word to the last row if needed instead of balancing all the content. Unfortunately, pretty has yet to count on broad support.

![side by side comparison. Left (before): a heading occupies two rows, the second one has only 1 word. Right (after): the heading occupies two rows of similar width.](https://alvaromontoro.com/images/blog/one-liner-5.webp)

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
LIST FROM [[CSS - Wrap Headings in a Balanced Manner]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Wrap Headings in a Balanced Manner"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024