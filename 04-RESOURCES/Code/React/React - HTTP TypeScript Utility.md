---
creation_date: 2024-04-24
modification_date: 2024-04-24
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/React
  - Type/Code/JavaScript
  - Type/Code/TypeScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/TypeScript
  - Topic/Dev/React
  - Topic/Dev/Web
  - Topic/Dev/Frontend
  - Topic/Dev/UI
  - Topic/JavaScript
  - Topic/TypeScript
  - Topic/React
  - Status/WIP
aliases:
  - HTTP TypeScript Utility Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# HTTP TypeScript Utility

> [!SOURCE] Sources:
> - *[deco/utils/http.ts at main · deco-cx/deco](https://github.com/deco-cx/deco/blob/main/utils/http.ts)*

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
> - Date:: [[2024-04-24]]
> - Source:: *[deco/utils/http.ts at main · deco-cx/deco](https://github.com/deco-cx/deco/blob/main/utils/http.ts)*
> - Language:: [[04-RESOURCES/Code/TypeScript/_README|TypeScript]]
> - Description:: ""

## Code Snippet

```typescript
// src/utils/http.ts

import meta from "@/config/meta.json" assert { type: "json" };

// CacheControl type
export type CacheControl = Partial<{
  "max-age": number;
  "s-maxage": number;
  "stale-while-revalidate": number;
  "stale-if-error": number;
  "public": boolean;
  "private": boolean;
  "no-cache": boolean;
  "no-store": boolean;
  "must-revalidate": boolean;
  "proxy-revalidate": boolean;
  "immutable": boolean;
  "no-transform": boolean;
}>;

// default cache control
export const DEFAULT_CACHE_CONTROL: CacheControl = {
  "s-maxage": 60, // 1minute cdn cache
  "max-age": 10, // 10s browser cache to avoid BYPASS on cloudflare: https://developers.cloudflare.com/cache/about/default-cache-behavior/#cloudflare-cache-responses
  "stale-while-revalidate": 3600, // 1hour
  "stale-if-error": 24 * 3600, // 1day
  public: true,
};



```

## Details

> [!NOTE] About
> This note is about ...

### CacheControl Type

> [!CODE]- View Code:
> ```typescript
> // declare CacheControl type:
> export type CacheControl = Partial<{
>   "max-age": number;
>   "s-maxage": number;
>   "stale-while-revalidate": number;
>    "stale-if-error": number;
>   "public": boolean;
>   "private": boolean;
>   "no-cache": boolean;
>   "no-store": boolean;
>   "must-revalidate": boolean;
>   "proxy-revalidate": boolean;
>   "immutable": boolean;
>   "no-transform": boolean;
>   }>;
> ```

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-04-24]] and last modified on [[2024-04-24]].*

### Backlinks

```dataview
LIST FROM [[React - HTTP TypeScript Utility]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - HTTP TypeScript Utility"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024