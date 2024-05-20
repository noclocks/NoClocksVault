---
creation_date: 2024-04-18
modification_date: 2024-04-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/HTML
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/HTML
  - Status/WIP
aliases:
  - HTML Grouping Form Elements Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# HTML Grouping Form Elements Code

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

Use the `<fieldset>` tag to group related elements in a form and the `<legend>` tag with `<fieldset>` to define a title for the `<fieldset>` tag.

This is useful for creating more efficient and accessible forms.

## Code Snippet

```html
<form>
   <fieldset>
      <legend>Personal Details</legend>
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

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/HTML/_README|HTML Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-04-18]] and last modified on [[2024-04-18]].*

### Backlinks

```dataview
LIST FROM [[HTML - Grouping Form Elements]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/HTML/HTML - Grouping Form Elements"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024