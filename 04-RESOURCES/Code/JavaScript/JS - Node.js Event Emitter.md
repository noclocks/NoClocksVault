---
creation_date: 2024-09-25
modification_date: 2024-09-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/JavaScript
  - Status/WIP
aliases:
  - JavaScript Node.js Event Emitter Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Node.js Event Emitter

> [!SOURCE] Sources:
> - **

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!example] **Code Snippet Metadata**:
> - Date:: [[2024-09-25]]
> - Source: **
> - Language: [[MOC - JavaScript|JavaScript]]
> - Description:: ""

## Code Snippet

```javascript
const EventEmitter = require('events');

const event = new EventEmitter();

// Add an event listener
event.on('bar', function() {
  console.log('bar fired!');
})

// Trigger an event
event.emit('bar');
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-09-25]] and last modified on [[2024-09-25]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[JS - Node.js Event Emitter]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Node.js Event Emitter"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024