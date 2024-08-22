---
creation_date: 2024-08-18
modification_date: 2024-08-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/CSS
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/CSS
  - Status/WIP
aliases:
  - CSS Styling Readme Files Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Styling Readme Files Code

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
> - *https://css-tricks.com/custom-styles-in-github-readmes/*

Although you cannot utilize `<scipt>` or `<style>` tags in Markdown, you can use the following tricks:

1. You can use [[Scalable Vector Graphics (SVG)|SVG]] as an `<img src="./file.svg" alt="" />` (anywhere).
2. When used that way, even stuff like animations within them play (wow).
3. SVG has stuff like `<text>` for textual content, but also `<foreignObject>` for regular ol’ HTML content.
4. SVG support `<style>` tags.
5. Your `readme.md` file does support `<img>` with SVG sources.

You can put HTML (actually XHTML) and CSS inside a [`<foreignObject>` tag](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/foreignObject) inside a SVG file inside an `<img>` tag inside your readme. 🤯

Thanks to [@Richienb](https://github.com/Richienb) for sharing the trick in [this pull request](https://github.com/sindresorhus/sindresorhus/pull/9).

## Code Snippets

```css

```

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

*Note created on [[2024-08-18]] and last modified on [[2024-08-18]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[CSS - Styling Readme Files]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Styling Readme Files"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024