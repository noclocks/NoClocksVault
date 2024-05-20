---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/TypeScript
  - Topic/Dev
  - Topic/Dev/TypeScript
  - Status/WIP
aliases:
  - 404 Not Found Error Page TypeScript Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# 404 Not Found Error Page TypeScript Example Code

> [!SOURCE] Sources:
> - *[website/src/app/not-found.tsx at main · Effect-TS/website](https://github.com/Effect-TS/website/blob/main/src/app/not-found.tsx)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

## Code Snippets

Example **404 Not Found Error Page in [[04-RESOURCES/Code/TypeScript/_README|TypeScript]]** (`src/app/pages/NotFound.tsx`):

```typescript
import { Search } from "@/components/ui/search"
import { Navigation } from "@/components/layout/navigation"

export default function NotFound() {
  return (
    <>
      <Navigation />
      <main className="w-full overflow-x-hidden min-h-screen relative pt-16 sm:pt-24 flex justify-center">
        <div className="mt-16 sm:mt-28 lg:mt-40 text-center flex flex-col items-center gap-8">
          <h1 className="font-display text-6xl sm:text-7xl lg:text-8xl text-transparent bg-clip-text bg-gradient-to-br from-red-400 to-red-600">
            404
          </h1>
          <p>This page could not be found.</p>
          <Search />
        </div>
      </main>
    </>
  )
}
```

## Details

> [!WARNING] Assumptions:
> - Project uses [[TailwindCSS]]
> - Project already has pre-existing `search` and `navigation` components

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
LIST FROM [[TS - 404 Not Found Error Page]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/TypeScript/TS - 404 Not Found Error Page"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024