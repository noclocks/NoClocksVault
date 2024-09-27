---
creation_date: 2024-09-26
modification_date: 2024-09-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/Nodejs
  - Status/WIP
aliases:
  - JavaScript Basic Logging
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Basic Logging

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

## Log Something

Use `console.log`:

```js
console.log("Hello world");
```

## Log Errors

Use `console.error`:

```js
console.error("Holy shittake!");
```

## Log Groups

```javascript
console.log('Begin:')

console.group()
console.log('Line 2 (console.log)')
console.log('Line 3 (console.log)')
console.log('Line 4 (console.log)')
console.group()
console.log('Line 5 (console.log)')
console.log('Line 6 (console.log)')
console.groupEnd()
console.log('Line 7 (console.log)')
console.groupEnd()

console.log('Done!')
```
```

Output:

```text
Begin:
  Line 2 (console.log)
  Line 3 (console.log)
  Line 4 (console.log)
    Line 5 (console.log)
    Line 6 (console.log)
  Line 7 (console.log)
Done!
```

## More Control

Use `process.stdout`:

```javascript
var totalTime = 5000;
var waitInterval = totalTime / 10;
var currentInterval = 0;

function showPercentage(percentage){
    process.stdout.clearLine()
    process.stdout.cursorTo(0)
    console.log(`Processing ${percentage}%...` ) // Replace this line with process.stdout.write(`Processing ${percentage}%...`)
}

var interval = setInterval(function(){
    currentInterval += waitInterval
    showPercentage((currentInterval / totalTime) * 100)
}, waitInterval)

setTimeout(function(){
    clearInterval(interval)
}, totalTime + 100)
```

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-09-26]] and last modified on [[2024-09-26]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[JS - Basic Logging]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Basic Logging"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024