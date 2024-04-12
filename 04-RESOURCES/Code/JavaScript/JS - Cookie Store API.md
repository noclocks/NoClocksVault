---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/JavaScript
  - Status/WIP
aliases:
  - JavaScript Cookie Store API Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Cookie Store API

> [!SOURCE] Sources:
> - *[Cookie Store API - Web APIs | MDN (mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/API/Cookie_Store_API)*
> - *[Secure contexts - Security on the web | MDN (mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts)*
> - *[14 Lesser-Known but Incredibly Useful Web APIs You Should Know About | by Nebula Nomad | Mar, 2024 | JavaScript in Plain English](https://javascript.plainenglish.io/14-lesser-known-but-incredibly-useful-web-apis-you-should-know-about-91ba92ea8cf4)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!example] **Code Snippet Metadata**:
> - Date:: [[2024-04-12]]
> - Source: **
> - Language: [[MOC - JavaScript|JavaScript]]
> - Description:: ""

## Code Snippet

> [!WARNING]
> This feature is available only in [secure contexts](https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts) (HTTPS), in some or all supporting browsers.

```javascript
cookieStore.getAll().then(console.log)
```

The API also has functions to manage cookies:

- `[cookieStore.delete](https://developer.mozilla.org/en-US/docs/Web/API/CookieStore/delete)`: to delete a cookie,
- `[cookieStore.get](https://developer.mozilla.org/en-US/docs/Web/API/CookieStore/get)`: to get info on a single cookie,
- `[cookieStore.set](https://developer.mozilla.org/en-US/docs/Web/API/CookieStore/set)`: to set a single cookie's info.

## Details

In the past, developers used `document.cookie` to get cookie information. But it has its limits, like not showing the domain, path, or expiration details.

![](https://i.imgur.com/RcBkYmm.png)

However, developers could use dev tools for more details. Now, the [Cookie Store API](https://developer.mozilla.org/en-US/docs/Web/API/Cookie_Store_API) gives access to those detailed cookie attributes, just like dev tools. But it can’t reach cookies with the `HttpOnly` attribute.

![](https://i.imgur.com/NvmQ9GI.png)


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
LIST FROM [[JS - Cookie Store API]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Cookie Store API"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024