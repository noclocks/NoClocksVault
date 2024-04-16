---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/JavaScript
  - Status/WIP
aliases:
  - JavaScript TS - Base Components Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Base Components

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

- **Theme**
- **Button**
- **Environment**

## Code Snippet

```typescript
import { useTheme } from '@/theme'

const Button = ({ className, children }) => {
  const { primaryColor } = useTheme();
  const style = { background: primaryColor };
  return (
    <button style={style} className={className}>
      {children}
    </button>;
  )
};
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

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### Backlinks

```dataview
LIST FROM [[TS - Base Components]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/TypeScript/TS - Base Components"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024