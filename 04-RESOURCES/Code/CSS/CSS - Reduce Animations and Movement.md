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
  - CSS Reduce Animations and Movement Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Reduce Animations and Movement Code

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
@media (prefers-reduced-motion) {
  *, *::before, *::after {
    animation-duration: 0s !important;
    /* additional recommendation */
    transition: none !important;
    scroll-behavior: auto !important;
  }
}
```

## Details

Okay, okay. This code is way more than a one-liner. It has a one-liner version (removing animations by setting their duration to zero seconds), but other things on a web page make elements move.

By setting these declarations inside the `prefers-reduced-motion` media query, we will respect the person's choice to have less movement. **This approach is somewhat radical because it removes all movement, which may not necessarily be the user's intent-it is "reduced motion" and not "no motion."** We can still preserve movement on a case-by-case basis if appropriate.

![side by side comparison. Left (before): an image moves over a web page. Right (after): the image is static.](https://alvaromontoro.com/images/blog/one-liner-9.webp)

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
LIST FROM [[CSS - Reduce Animations and Movement]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Reduce Animations and Movement"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024