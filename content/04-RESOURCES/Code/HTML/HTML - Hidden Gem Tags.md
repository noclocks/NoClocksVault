---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/HTML
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/HTML
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

## `<details>` and `<summary>`

> [!NOTE] See Also:
> [[HTML - Collapsible Content Blocks]]

When you want to include collapsible content on your web page, then you can use the `<details>` and `<summary>` tags.

The `<details>` tag creates a container for hidden content, while the `<summary>` tag provides a clickable label to toggle the visibility of that content.

```html
<details>
  <summary>Click to expand</summary>
  <p>This content can be expanded or collapsed.</p>
</details>
```

## `<fieldset>` and `<legend>`

The `<fieldset>` tag is used to group related elements in a form and the `<legend>` tag is used with `<fieldset>` to define a title for the `<fieldset>` tag.

This is useful for creating more efficient and accessible forms.

```html
<form>
   <fieldset>
      <legend>Personal details</legend>
      <label for="firstname">First name:</label>
      <input type="text" id="firstname" name="firstname" />
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" />
      <label for="contact">Contact:</label>
      <input type="text" id="contact" name="contact" />
      <input type="button" value="Submit" />
   </fieldset>
</form>
```

## `<mark>`

The `<mark>` tag is used to highlight text on your web pages.

When you need to emphasize or highlight certain text, then you can use the `<mark>` tag. It applies a background color to the marked text and makes it stand out.

```html
<p>This is a <mark>highlighted text</mark> within a paragraph.</p>
```

## `<optgroup>`

The `<optgroup>` tag is used to group related options in a `<select>` HTML tag. This can be used when you are working with large dropdown menus or a long list of options.

```html
<select>
   <optgroup label="Fruits">
      <option>Apple</option>
      <option>Banana</option>
      <option>Mango</option>
   </optgroup>
   <optgroup label="Vegetables">
      <option>Tomato</option>
      <option>Broccoli</option>
      <option>Carrot</option>
   </optgroup>
</select>
```

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