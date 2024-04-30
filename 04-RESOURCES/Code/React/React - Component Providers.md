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
  - Component Providers React Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Component Providers in React

> [!SOURCE] Sources:
> - *[ariakit/guide/400-component-providers at main · ariakit/ariakit (github.com)](https://github.com/ariakit/ariakit/tree/main/guide/400-component-providers)*

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
> This note is about the practice of providing state to [[Tool - React.js|React]] components using a simple wrapper that supports controlled and un-contolled props.

Component Providers are optional components that act as a higher-level [[Application Programming Interface (API)|API]] on top of [[component stores]]. They wrap components and automatically provide a store to them.

## Code Example

For instance, let's wrap `ComboBox` and `ComboBoxPopOver` within `ComboBoxProvider`, where both components will be connected to the same store automatically: 

- `src/components/Example.tsx`

```typescript
<ComboBoxProvider>
  <ComboBox />
  <ComboBoxPopOver>
    <ComboBoxItem vaule="Apple" />
    <ComboBoxItem vaule="Banana" />
    <ComboBoxItem vaule="Orange" />
  </ComboBoxPopOver>
</ComboBoxProvider>  
```

If you choose not to use component providers, you will need to manually pass the [`store`](https://github.com/ariakit/ariakit/blob/main/reference/combobox#store) prop to each top-level component.

## Managing State

Component Providers can also act as uncontrolled containers. In such a scenario, you can supply initial state using props.

### Default State

```typescript
<SelectProvider defaultValue="Banana>
```


### State Setters

Component providers may also accept callbacks for state changes. These functions conventionally bear the name of the state property they modify, prefixed with the word `set`. They are invoked with the new state whenever an update occurs.

These state setters serve various purposes, such as updating another state, executing side effects, or implementing features like `onChange`, `onValuesChange`, `onToggle`, `onOpenChange`, and so on.

```typescript

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
LIST FROM [[React - Component Providers]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - Component Providers"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
