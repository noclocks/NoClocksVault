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
  - JavaScript Convert Image to Base64 Data URI Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Convert Image to Base64 Data URI

> [!SOURCE] Sources:
> - *[Read Image (PNG/JPEG) From Disk and Convert it to base64-encoded string on Node Server](https://gist.github.com/MarkoCen/0ee9437439e00e313926)*

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
import fs from 'fs';
import path from 'path';

const convert = (imgPath) => {
    // read image file
    fs.readFile(imgPath, (err, data)=>{
        // error handle
        if(err) {
            throw err;
        }
        
        // get image file extension name
        const extensionName = path.extname(imgPath);
        
        // convert image file to base64-encoded string
        const base64Image = Buffer.from(data, 'binary').toString('base64');
        
        // combine all strings
        const base64ImageStr = `data:image/${extensionName.split('.').pop()};base64,${base64Image}`;
    })
}
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
LIST FROM [[JS - Convert Image to Base64 Data URI]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Convert Image to Base64 Data URI"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024