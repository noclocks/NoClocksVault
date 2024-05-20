---
creation_date: 2024-04-30
modification_date: 2024-04-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Type/Code/React
  - Type/Code/TypeScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/TypeScript
  - Topic/Dev/Frontend
  - Topic/Dev/Web
  - Topic/Dev/React
  - Status/WIP
aliases:
  - TS - MergeProps Utility Function React Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# TS - MergeProps Utility Function React Code

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

> [!NOTE] About
> This note is about ...


## Code Snippet

- `src/utils/mergeProps.ts`:

```typescript
import { hasOwnProperty } from "@/utils/hasOwnProperty"
import type {
  HTMLAttributes,
  MutableRefObject,
  ReactElement,
  Ref,
  RefCallback,
} from "react";
import { isValidElement } from "react";


/**
 * Merges two sets of props.
 */
export function mergeProps<T extends HTMLAttributes<any>>(
  base: T,
  overrides: T,
) {
  const props = { ...base };

  for (const key in overrides) {
    if (!hasOwnProperty(overrides, key)) continue;

    if (key === "className") {
      const prop = "className";
      props[prop] = base[prop]
        ? `${base[prop]} ${overrides[prop]}`
        : overrides[prop];
      continue;
    }

    if (key === "style") {
      const prop = "style";
      props[prop] = base[prop]
        ? { ...base[prop], ...overrides[prop] }
        : overrides[prop];
      continue;
    }

    const overrideValue = overrides[key];

    if (typeof overrideValue === "function" && key.startsWith("on")) {
      const baseValue = base[key];
      if (typeof baseValue === "function") {
        type EventKey = Extract<keyof HTMLAttributes<any>, `on${string}`>;
        props[key as EventKey] = (...args) => {
          overrideValue(...args);
          baseValue(...args);
        };
        continue;
      }
    }

    props[key] = overrideValue;
  }

  return props;
}
```

## Details



## See Also

- [[04-RESOURCES/Code/React/_README|React Code]]
- [[Tool - React.js|React]] (Tool)
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[04-RESOURCES/Code/TypeScript/_README|TypeScript Code]]
- [[MOC - Development|Development Map of Content]]
- [[MOC - React|React Map of Content]]
- [[MOC - JavaScript|JavaScript Map of Content]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - JS - Next.js|Next.js]]


***

## Appendix

*Note created on [[2024-04-30]] and last modified on [[2024-04-30]].*

### Backlinks

```dataview
LIST FROM [[TS - MergeProps Utility Function]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/TypeScript/TS - MergeProps Utility Function"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
