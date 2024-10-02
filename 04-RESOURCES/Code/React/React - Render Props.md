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
  - Render Props React Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Render Props React Code

> [!SOURCE] Sources:
> - *[Render Props – React (reactjs.org)](https://legacy.reactjs.org/docs/render-props.html)*
> - *[# (reakit.io)](https://reakit.io/docs/composition/#render-props)*

> [!WARNING]
> Render props are used in modern [[Tool - React.js|React]], but aren’t very common.
> For many cases, they have been replaced by [custom Hooks](https://react.dev/learn/reusing-logic-with-custom-hooks).

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
> The term [“render prop”](https://cdb.reacttraining.com/use-a-render-prop-50de598f11ce) refers to a technique for sharing code between React components using a prop whose value is a function.

See Also: [[React - as Prop|as Prop]]

Compared to the `as` prop, `render` props has the disadvantage of adding more nesting into the code. On the other hand, you have more control over the components and props added.

## Code Snippet

- `src/components/Example.tsx`

```typescript
import { useCheckboxState } from "@/hooks/useCheckboxState"
import { Checkbox, Button } from "@/components/Elements"

function Example() {
  const checkbox = useCheckboxState();
  return (
    <Button {...checkbox}>
      {(props) => (
        <Checkbox {...props} as="div">
          {checkbox.state ? "Happy" : "Sad"}
        </Checkbox>
      )}
    </Button>
  );
}

```

## Details



## See Also

- [[Tool - Reakit]]
- [[React - as Prop|as Prop]]

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
LIST FROM [[React - Render Props]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - Render Props"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024