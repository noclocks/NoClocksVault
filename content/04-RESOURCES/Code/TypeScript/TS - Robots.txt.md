---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/JavaScript
  - Status/WIP
aliases:
  - JavaScript TS - Robots.txt Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# TS - Robots.txt

> [!SOURCE] Sources:
> - **

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

## Code Snippet

`robots.ts`:

```typescript
// src/utils/robots.ts
import { MetadataRoute } from 'next'

export default function robots(): MetadataRoute.Robots {
  return {
    rules: {
      userAgent: '*',
      allow: '/',
      disallow: '/private/',
    },
    sitemap: 'https://acme.com/sitemap.xml',
    host:
  }
}
```


```typescript
import type { MetadataRoute } from 'next'

export default function robots(): MetadataRoute.Robots {
  return {
    rules: [
      {
        userAgent: 'Googlebot',
        allow: ['/'],
        crawlDelay: 10
      },
      {
        userAgent: ['Applebot', 'Bingbot'],
        allow: ['/'],
      },
      {
        userAgent : 'GPTBot',
        disallow : ["/"]
      }
    ], 
    sitemap: 'https://your-site.dev/sitemap.xml',
  }
}
```

## Details

You customize every individual web crawler and allow and disallow them.

1. **userAgent**: The name of the bot or web crawler.
2. **allow**: It gives access to a particular webpage such as URL, Path or directory.
3. **disallow**: It prevents the bots from accessing specific web pages such as URLs, paths, or directories on the website.
4. **crawlDelay**: how often bots can request pages from a website.

Verify whether your robots.txt file is created or not. Just visit [http://localhost:3000/robots.txt](http://localhost:3000/robots.txt) URL in your browser.

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[TS - Robots.txt]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/TypeScript/TS - Robots.txt"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024