---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/TypeScript
  - Type/Code/React
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/TypeScript
  - Topic/Dev/React
  - Topic/Frontend
  - Topic/React
  - Topic/JavaScript
  - Topic/TypeScript
  - Status/WIP
aliases:
  - useDateFormatter React Hook
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# useDateFormatter React Hook

> [!SOURCE] Sources:
> - *[useDateFormatter – React Aria (adobe.com)](https://react-spectrum.adobe.com/react-aria/useDateFormatter.html)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

`useDateFormatter` wraps a builtin browser [Intl.DateTimeFormat](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat) object to provide a [[React Hook]] that integrates with the [[i18n]] system in [[Tool - React-Aria|React-Aria]]. It handles formatting dates for the current [[locale]], updating when the locale changes, and caching of date formatters for performance. See the [Intl.DateTimeFormat](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat) docs for information on formatting options.

## Code Snippet

```typescript
import { I18nProvider, useDateFormatter } from 'react-aria';

function CurrentDate() {
  let formatter = useDateFormatter();

  return <p>{formatter.format(new Date())}</p>;
}

<>
  <I18nProvider locale="en-US">
    <CurrentDate />
  </I18nProvider>
  <I18nProvider locale="ru-RU">
    <CurrentDate />
  </I18nProvider>
</>
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
LIST FROM [[TS - useDateFormatter React Hook]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/TypeScript/TS - useDateFormatter React Hook"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024