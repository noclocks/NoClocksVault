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
  - as Prop
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# `as` Prop

> [!SOURCE] Sources:
> - *[# (reakit.io)](https://reakit.io/docs/composition/#as-prop)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!TIP]
> Utilize the `as` component property to compose components in [[Tool - React.js|React]]. This way you can change the underlying element of a composed component or combine it with another component (i.e. render a `checkbox` component as a `button` element).

> [!NOTE]
> The topmost component (i.e. `checkbox` in the example above) will take precedence if there is a conflict between `props`.

## Code Snippet

- `src/components/Example.tsx`

```typescript
import { useCheckboxState } from "@/hooks/useCheckboxState"
import { Checkbox, Button } from "@/components/Elements"

function Example() {
  const checkbox = useCheckboxState();
  return (
    <Checkbox {...checkbox} as={Button}>
      {checkbox.state ? "Happy" : "Sad"}
    </Checkbox>
  );
}
```

## Details

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-04-30]] and last modified on [[2024-04-30]].*

### Backlinks

```dataview
LIST FROM [[React - as Prop]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - as Prop"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024