---
creation_date: 2024-05-09
modification_date: 2024-05-09
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
  - Managing SVGs React Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Managing SVGs React Code

> [!SOURCE] Sources:
> - *[The best way to manage icons in React/Nextjs (pranavp.xyz)](https://pranavp.xyz/blog/the-best-way-to-manage-icons-in-react-js)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE]
> When constructing a UI, the significance of SVG cannot be overstated. As the code base expands, the utilization of SVG also grows. In this blog, we will explore the top three methods for rendering SVG and identify the most optimal solution among them.

![](https://i.imgur.com/3KGUeRE.png)


## Initial Approach

Initially, the approach was to use a simple `<img>` [[Hyper Text Markup Language (HTML)|HTML]] tag:

```typescript
const ImageSvg = () => <img src="logo.svg" />
```

> [!pros]-
> This method is recommended exclusively for handling large [[Scalable Vector Graphics (SVG)]] files.

> [!cons]-
> There is a delay before it appears on the screen, and styling the SVG is not possible in this scenario.

## Most Common Approach

We'll craft an SVG component named `PlusSVG.tsx`, allowing us to conveniently utilize this component in various locations.

```typescript
// src/svg/PlusSVG.tsx
const PlusSVG = () => (
  <svg viewBox="0 0 50 50">
    <path d="M 25 2 C 12.309295 2 2 12.309295 2 25 C 2 37.690705 12.309295 48 25 48 C 37.690705 48 48 37.690705 48 25 C 48 12.309295 37.690705 2 25 2 z M 25 4 C 36.609824 4 46 13.390176 46 25 C 46 36.609824 36.609824 46 25 46 C 13.390176 46 4 36.609824 4 25 C 4 13.390176 13.390176 4 25 4 z M 24 13 L 24 24 L 13 24 L 13 26 L 24 26 L 24 37 L 26 37 L 26 26 L 37 26 L 37 24 L 26 24 L 26 13 L 24 13 z"></path>
  </svg>
);
```

We will render the previously created component in the relevant sections as needed.

```typescript
// src/App.tsx
import PlusSVG from "@/svg/PlusSvg"

const App = () => (
  <div>
    <PlusSVG />
  </div>
);
```

> [!pros]-
> Easy to implement, customizable styling, and no flickering issues.

> [!cons]-
> If you use the same [[Scalable Vector Graphics (SVG)|SVG]] in multiple places, it adds unnecessary weight to the [[Document Object Model (DOM)|DOM]], leading to an increase in bundle size, especially when dealing with numerous SVGs in your project.

## Most Effective Method: SVG Sprites

Creating a reusable "Icon" component for rendering [[Scalable Vector Graphics (SVG)|SVG]] icons.

```typescript
// src/components/Icon.tsx
import { SVGProps } from "react";

type ISvgPropType = {
iconName: string;
} & SVGProps<SVGSVGElement>;

const Icon = ({ iconName, ...props }: ISvgPropType) => (
<svg {...props} >
    <use href={`#${name}`} />
</svg>
);

export default Icon;
```

Developing a "Sprite" component to handle all SVG icons.

```typescript
// src/components/SVGSprite.tsx
const SVGSprite = () => (
  <svg xmlns="http://www.w3.org/2000/svg">
      <defs>
      <symbol id="plus" viewBox="0 0 24 24">
          <path d="M 25 2 C 12.309295 2 2 12.309295 2 25 C 2 37.690705 12.309295 48 25 48 C 37.690705 48 48 37.690705 48 25 C 48 12.309295 37.690705 2 25 2 z M 25 4 C 36.609824 4 46 13.390176 46 25 C 46 36.609824 36.609824 46 25 46 C 13.390176 46 4 36.609824 4 25 C 4 13.390176 13.390176 4 25 4 z M 24 13 L 24 24 L 13 24 L 13 26 L 24 26 L 24 37 L 26 37 L 26 26 L 37 26 L 37 24 L 26 24 L 26 13 L 24 13 z"></path>
      </symbol>
      <symbol id="heart" viewBox="0 0 24 24">
          <path d="M 25 2 C 12.309295 2 2 12.309295 2 25 C 2 37.690705 12.309295 48 25 48 C 37.690705 48 48 37.690705 48 25 C 48 12.309295 37.690705 2 25 2 z M 25 4 C 36.609824 4 46 13.390176 46 25 C 46 36.609824 36.609824 46 25 46 C 13.390176 46 4 36.609824 4 25 C 4 13.390176 13.390176 4 25 4 z M 24 13 L 24 24 L 13 24 L 13 26 L 24 26 L 24 37 L 26 37 L 26 26 L 37 26 L 37 24 L 26 24 L 26 13 L 24 13 z"></path>
      </symbol>
      </defs>
  </svg>
);
```

Render the `SpriteSvg` in the App component

```typescript
// src/App.tsx
import SpriteSvg from "@/SpriteSvg";

const App = () => (
  <div>
    // remaining code
    <SpriteSvg />
  </div>
);
```

How to use:

```typescript
// src/components/Component.tsx
import Icon from "@/Icon";

const App = () => (
  <div>
    <Icon name="plus" />
  </div>
);
```

## How to Handle Large Sprites in Large Projects

1. Create an SVG file for sprites and place it within the public folder.

```xml
<!-- sprites.svg -->
<svg xmlns="http://www.w3.org/2000/svg">
  <defs>
    <symbol id="plus" viewBox="0 0 24 24">
      <path
        d="M 25 2 C 12.309295 2 2 12.309295 2 25 C 2 37.690705 12.309295 48 25 48 C 37.690705 48 48 37.690705 48 25 C 48 12.309295 37.690705 2 25 2 z M 25 4 C 36.609824 4 46 13.390176 46 25 C 46 36.609824 36.609824 46 25 46 C 13.390176 46 4 36.609824 4 25 C 4 13.390176 13.390176 4 25 4 z M 24 13 L 24 24 L 13 24 L 13 26 L 24 26 L 24 37 L 26 37 L 26 26 L 37 26 L 37 24 L 26 24 L 26 13 L 24 13 z"
      ></path>
    </symbol>
    <symbol id="heart" viewBox="0 0 24 24">
      <path
        d="M 25 2 C 12.309295 2 2 12.309295 2 25 C 2 37.690705 12.309295 48 25 48 C 37.690705 48 48 37.690705 48 25 C 48 12.309295 37.690705 2 25 2 z M 25 4 C 36.609824 4 46 13.390176 46 25 C 46 36.609824 36.609824 46 25 46 C 13.390176 46 4 36.609824 4 25 C 4 13.390176 13.390176 4 25 4 z M 24 13 L 24 24 L 13 24 L 13 26 L 24 26 L 24 37 L 26 37 L 26 26 L 37 26 L 37 24 L 26 24 L 26 13 L 24 13 z"
      ></path>
    </symbol>
  </defs>
</svg>
```

2. Pre-load the mentioned `sprite.svg` file by adding the following to `index.html`:

```html
<head>
  // remaining code
  <link rel="preload" as="image/svg+xml" href="/sprite.svg" />
</head>
```

3. Utilize the previously constructed Icon.tsx component by passing the respective name to it.



## Code Snippet

- `src/components/Example.tsx`

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

*Note created on [[2024-05-09]] and last modified on [[2024-05-09]].*

### Backlinks

```dataview
LIST FROM [[React - Managing SVGs]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - Managing SVGs"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024