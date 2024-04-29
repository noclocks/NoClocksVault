---
creation_date: 2024-04-18
modification_date: 2024-04-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/HTML
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/HTML
  - Status/WIP
aliases:
  - HTML Collapsible Content Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# HTML Collapsible Content Code

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

You can use the `<details>` and `<summary>` tags, when you want to include collapsible content on your web page.

The `<details>` tag creates a container for hidden content, while the `<summary>` tag provides a clickable label to toggle the visibility of that content.

## Code Snippet

````html
<details>
  <summary>Click to Expand</summary>
  <p>This content can be expanded or collapsed.</p>
  I can also write in plain markdown in here!

  Here's a code snippet:
  ```bash
  ls -a
  ```
</details>
````

That code produces the following:

<details>
  <summary>Click to Expand</summary>
  <p>This content can be expanded or collapsed.</p>
  I can also write in plain markdown in here!

  Here's a code snippet:
  ```bash
  ls -a
  ```
</details>

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
LIST FROM [[HTML - Collapsible Content]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/HTML/HTML - Collapsible Content"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024