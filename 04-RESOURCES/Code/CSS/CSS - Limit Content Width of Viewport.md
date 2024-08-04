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
  - CSS Limit Content Width of Viewport Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Limit Content Width of Viewport Code

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
> - *https://alvaromontoro.com/blog/68055/ten-css-one-liners-for-almost-every-project*

## Code Snippet

```css
body {
  max-width: clamp(320px, 90%, 1000px);
  /* additional recommendation */
  margin: auto;
}
```

Adding this one-liner will reduce the content size to occupy 90% of the viewport, limiting its width between 320 and 1000 pixels (feel free to update the minimum and maximum values).

This change will automatically make your content look much nicer. It will no longer be a vast text block but something that looks more structured and organized. And if you also add `margin: auto;` to the `body`, the content will be centered on the page. Two lines of code make the content look so much better.

![Side-by-side comparison of change. Left side (before): a big block of text. Right side (after): text with padding on the sides. Still big but with more spaces.](https://alvaromontoro.com/images/blog/one-liner-0.webp)

Aligned and contained text looks better than a giant wall of text

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
LIST FROM [[CSS - Limit Content Width of Viewport]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Limit Content Width of Viewport"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024