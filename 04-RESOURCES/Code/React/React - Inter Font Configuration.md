---
creation_date: 2024-04-25
modification_date: 2024-04-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/JavaScript
  - Status/WIP
aliases:
  - JavaScript React - Inter Font Configuration Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# React - Inter Font Configuration

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

Configuring fonts for a [[React.js]] application can be done in many ways.

- Manually Download and Import Font Files
- Use a [[Content Delivery Network (CDN)]]
- Use a published [[Node Package Manager (NPM)]] package

## Code Snippet

Assumes usage of the [[Tool - FontSource|FontSource]] library:

```bash
pnpm add @fontsource-variable/inter
```

Add import to project's entry-point/root layout: 

```typescript
// src/index.tsx
import '@fontsource-variable/inter'; // Supports weights 100-900
```

Include [[Cascading Style Sheets (CSS)|CSS]]:

```css
body {
  font-family: 'Inter Variable', sans-serif;
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

*Note created on [[2024-04-25]] and last modified on [[2024-04-25]].*

### Backlinks

```dataview
LIST FROM [[React - Inter Font Configuration]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - Inter Font Configuration"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024