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
  - JavaScript Determine if an Object is Promise Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Determine if an Object is Promise

> [!SOURCE] Sources:
> - *[Check if an object is a Promise](https://gist.github.com/MarkoCen/ec27b8cd42855fde8a245d43b7b081d0)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview



## Code Snippet

```javascript
function isPromise(object){
  if(Promise && Promise.resolve){
    return Promise.resolve(object) == object;
  }else{
    throw "Promise not supported in your environment"
  }
}

var i = 1;
var p = new Promise(function(resolve,reject){
  resolve()
});

isPromise(i) // false
isPromise(p) // true
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
LIST FROM [[JS - Determine if an Object is Promise]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Determine if an Object is Promise"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024