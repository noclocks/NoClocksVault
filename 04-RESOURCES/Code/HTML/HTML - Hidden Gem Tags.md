---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/HTML
  - Topic/Dev
  - Topic/Dev/WebDev
  - Topic/HTML
  - Status/WIP
aliases:
  - Hidden Gem Tags in HTML
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Hidden Gem Tags in HTML

> [!SOURCE] Sources:
> - *[7 HTML Hidden Gems: HTML Tags You Should Know About - Shefali](https://shefali.dev/html-tags-2/)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> This note is about hidden gem [[Hyper Text Markup Language (HTML)|HTML]] tags:
> - `<abbr>`
> - `<base>`
> - `<cite>`
> - `<details>` and `<summary>`
> - `<fieldset>` and `<legend>`
> - `<mark>`
> - `<optgroup>`

## `<abbr>`

The `<abbr>` [[Hyper Text Markup Language (HTML)|HTML]] tag represents an abbreviation or acronym of a phrase or longer word.

This tag helps improve accessibility and user understanding by providing an explanation when a user hovers over it.

```html
<p>
  <abbr title="World Wide Web">WWW</abbr> is a fundamental part of the internet.
</p>
```


## `<base>`

The `<base>` [[Hyper Text Markup Language (HTML)|HTML]] tag defines the base [[Uniform Resource Locator (URL)]] for all relative URLs in a web page.

This is handy when you want to create a shared starting point for all relative URLs on a web page, making it easier to navigate and load resources.

```html
<head>
   <base href="https://shefali.dev" target="_blank" />
</head>
<body>
   <a href="/blog">Blogs</a>
   <a href="/get-in-touch">Contact</a>
</body>
```

> [!WARNING]
> There can be only one single `<base>` tag in the document and it should be inside the `<head>` tag.

## `<cite>`

The `<cite>` HTML tag is used to specify the title of a creative work such as quoted content, books, websites, paintings, etc.

It helps maintain proper citation formatting and semantics.

```html
<blockquote>
   <p>Life is what happens when you're busy making other plans.</p>
   <cite>John Lennon</cite>
</blockquote>
```

## `<details>` and `<summary`


## See Also

- [[04-RESOURCES/Code/HTML/_README|HTML Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[HTML - Hidden Gem Tags]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/HTML/HTML - Hidden Gem Tags"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024