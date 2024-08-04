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
  - CSS Limit Width of Text Within Content Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Limit Width of Text Within Content Code

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
p {
  max-width: 65ch;
}
```

## Details

Another tactic to avoid the dreaded wall of text and rivers of space is to apply this style even in conjunction with the max width in the body. It may look unnecessary and sometimes weird, as paragraphs will be narrower than other elements. But I like the contrast and the shorter lines.

A value of 60ch or 65ch has worked for me in the past, but you can use a different value and adjust the max width to match your needs. Play and explore how it looks on your web page.

![side by side comparison. Left (before): the text occupies the whole width. Right (after): the text occupies most of the width.](https://alvaromontoro.com/images/blog/one-liner-4.webp)

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
LIST FROM [[CSS - Limit Width of Text Within Content]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Limit Width of Text Within Content"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024