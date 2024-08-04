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
  - CSS Back to Top Button Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Back to Top Button Code

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
> - *[CSS only "scroll-to-top" | Stefan Judis Web Development](https://www.stefanjudis.com/snippets/css-only-scroll-to-top/)*

## Code Snippet

First you need to add an `<a>` anchor tag, or simply a `<span>` tag with a custom class to the HTML:

```html
<a href="#top" class="back-to-top-link">Back to Top</a>
<span class="top">Back to Top</span>
```

then, in order to use only CSS and avoid JavaScript, you can implement like so:

```css
html, body {
  --container-height: 100vh;
  height: var(--container-height);
}

/* for <a> */
.back-to-top-link {
  margin-block-start: calc(100vh + 200px);
  position: sticky;
  bottom: 1rem;
  left: 1rem;
}

/* for <span> */
.top {
  --distance-to-scroll: 50px;
  margin-top: calc(
    var(--container-height) +
    var(--distance-to-scroll)
  );
  position: sticky;
  bottom: 0;
  left: 5px;
}
```

> [!QUESTION]
> Why use `100vh` instead of `100%`?

> [!INFO] Fun Fact:
> Percentages in `margin-top` refer to **the logical width** of the containing block. `margin-top: 50%` isn't half the container's height, but width.

Either way, this is a nifty little CSS trick and I'm always for avoiding JavaScript!

## Details

> [!NOTE] About
> This note is about ...

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
LIST FROM [[CSS - Back to Top Button]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Back to Top Button"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024