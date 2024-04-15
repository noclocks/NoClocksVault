---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/CSS
  - Topic/Dev
  - Topic/Dev/WebDev
  - Topic/CSS
  - Status/WIP
aliases:
  - CSS Advanced Selectors Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Advanced Selectors Code

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - *[Obsidian/Computer Science/Programming/HTML & CSS/Advanced CSS Tutorials/Advanced Selectors.md at main · archsinner/Obsidian](https://github.com/archsinner/Obsidian/blob/main/Computer%20Science/Programming/HTML%20%26%20CSS/Advanced%20CSS%20Tutorials/Advanced%20Selectors.md)*

> [!TIP]
> There are many special selectors in [[Cascading Style Sheets (CSS)|CSS]] that allow us to query for a list of elements using advanced methods.

## Code Snippets

### Child Selectors

Child selectors allow us to select a specific set of children of an element according to their internal ordering.

For example, to select the first and last child contained withing a parent element, use the `:first-child` and `:last-child` selectors:

```css
li:first-child {
    color: blue;
}

li:last-child {
    color: green;
}
```

then in the [[Hyper Text Markup Language (HTML)|HTML]]:

```html
<ul>
  <li>First item</li>
  <li>Second item</li>
  <li>Third item</li>
  <li>Fourth item</li>
</ul>
```

To make sure that we select only `<li>` elements within a `<ul>` element, we can use a relational selector:

```css
ul li:first-child {
    color: blue;
}

ul li:last-child {
    color: green;
}
```

### 

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

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### Backlinks

```dataview
LIST FROM [[CSS - Advanced Selectors]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Advanced Selectors"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024