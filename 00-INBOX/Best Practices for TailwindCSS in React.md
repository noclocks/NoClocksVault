---
creation_date: 2024-04-23
modification_date: 2024-04-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - Best Practices for TailwindCSS in React
publish: true
permalink:
description:
image:
cssclasses:
---

# Best Practices for TailwindCSS in React

- [[TailwindCSS]]
- [[React.js]]

## DRY Class Names for Elements

Prefer to create separate components which have uniform styles throughout the application instead of rewriting the same class names at multiple places or creating a new class name which includes all the tailwind class names using `@apply` directive.

Doing so would offer us the flexibility of updating our styles with minimal efforts, as we have to update the class names at a single place only.

Suppose we have a `h1` tag which will be used at multiple places. We have two approaches to achieve it:

1. Create a component `H1Heading` with TailwindCSS classes applied to it and reuse this component wherever required.

```typescript
function H1Heading({ children }) {
  return (
      <h1 className="text-2xl md:text-4xl lg:text-5xl xl:text-6xl font-bold text-black">
      {children}
    </h1>
  )
}
```

2. Create a class in our CSS file which includes all the tailwind class names for the particular element and use the class name wherever required.

```css
@tailwind base;
@tailwind components;
@tailwind utilities;

.heading-1 {
    @apply text-2xl md:text-4xl lg:text-5xl xl:text-6xl font-bold text-black
}
```

## Maintain Organized Style Guides using Design Tokens

> [!NOTE] About
> Design tokens are a way to store and manage your design variables, such as colour palette, spacing scale, typography scale, or breakpoints. With design tokens, you can create consistent and reusable styles that are easy to update and maintain.

You can create the design tokens in the `tailwind.config.js` file. This is a good way to centralize your design tokens and make them available to all of your Tailwind CSS classes.

Suppose our application follows a particular design system, we can add these guidelines to our tailwind configuration:

```javascript

```

