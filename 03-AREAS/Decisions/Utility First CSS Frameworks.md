---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Decision
  - Topic/Dev
  - Status/WIP
aliases:
  - Utility First CSS Frameworks
publish: true
permalink:
description:
image:
cssclasses:
---

# Utility First CSS Frameworks

> [!SOURCE] Sources:
> - **

## Context

Styling frontend components is a topic of large debate.

> [!NOTE]
> [[TailwindCSS]] is a utility first [[Cascading Style Sheets (CSS)|CSS]] framework.

A good introduction is this article from the [[TailwindCSS]] documentation: [Utility-First Fundamentals](https://tailwindcss.com/docs/utility-first).

Summary of the article by [[GPT-4]]:

> Utility-first CSS is an approach that involves using predefined utility classes to build custom designs without writing custom CSS. This method offers benefits such as reducing time spent on inventing class names, limiting CSS file growth, and making changes with a lower risk of breaking other elements. Despite some similarities with inline styles, utility classes provide advantages in designing with constraints, responsive design, and handling hover, focus, and other states.

Extra reading/listening:

- [Why I Love Tailwind](https://mxstbr.com/thoughts/tailwind/) from the creator of Styled Components
- [Diana Mounter on using utility classes at GitHub](https://fullstackradio.com/75), podcast interview

## Motivation


## Decision

Adopting [TailwindCSS](https://tailwindcss.com/) - a utility-first [[Cascading Style Sheets (CSS)|CSS]] framework - as our main approach to styling.

Suggested packages/tools for a full utility-first styling solution:

![](https://github.com/opencollective/opencollective/blob/main/rfcs/015-utility-first-css-framework.md#suggested-packagestools-for-a-full-utility-first-styling-solution)

- [TailwindCSS](https://tailwindcss.com/) - utilify-first CSS framework
- [`class-variance-authority`](https://cva.style/docs) - library to help create CSS class compositions and variants of components (e.g button sizes, colors, intents)

## Alternatives

- Styled Components
- Vanilla CSS
- SASS
- CSS Modules
- CSS Frameworks
- 

## Consequences

If we were to use [[TailwindCSS]], we remove the need to break out of the component return statement to apply styles (while still having that option when needed for reusability), resulting in a shorter more condensed file.

The design system is also working on any [[Hyper Text Markup Language (HTML)|HTML]] element by default - not having to import any special utility components that accept the styled-system props. 

Another benefit is easily seeing the styles they apply by hovering over the class name.

- More consistent styling
    - TailwindCSS by itself provides a predefined set of of font sizes, widths, breakpoints, colors (which all can be modified)
- Higher overall quality of UI
    - Having to write less custom CSS through TailwindCSS, and having to build fewer basic components ourselves by using Tailwind UI should result in a overall higher quality of components, including better accessibility
- Increased efficiency of building and maintaining UI
    - Less naming things, less writing fully custom css, less importing of packages (styled-components, styled-system), less importing of abstracted "utility" components (, )
    - Easier to maintain, read and understand existing UI code (with utility classes being present directly in the composition of html elements)
- design and developers can focus less on making sure that basic components like Buttons, Dropdowns, Modals, Forms, etc, look good and function well - and focus more on domain-specific design challenges that are unique to Open Collective - and have access to more consistent primitives while doing so

## Affected Projects

## Examples

```typescript
import React from "react";

import { cn } from "@lib/style";

export default function ListWidget({ items = [] }) {
  const [selectedId, setSelectedId] = React.useState(null);
  return (
    <div className="max-w-lg bg-gray-100 p-8">
      <div className="grid grid-cols-3 gap-2">
        <div className="col-span-2 overflow-y-scroll">
          <h3 className="text-2xl font-medium">Items</h3>
          <ul className="space-y-2">
            {items.map((item) => (
              <li
                key={item.id}
                className={cn(
                  "font-bold",
                  selectedId === item.id ? "text-blue-700" : "text-gray-500"
                )}
              >
                <button onClick={() => setSelectedId(item.id)}>
                  {item.title}
                </button>
              </li>
            ))}
          </ul>
        </div>
      </div>
    </div>
  );
}
```

## See Also

- [[Architectural Decision Record (ADR)]]
- [[Decision Record (DR)]]

***

## Appendix

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[Utility First CSS Frameworks]] AND -"CHANGELOG" AND -"03-AREAS/Decisions/Utility First CSS Frameworks"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024