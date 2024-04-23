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
import defaultTheme from "tailwindcss/defaultTheme";

const config = {
  content: [
    "./src/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      fontFamily: {
        manrope: "var(--font-manrope)",
      },
      colors: {
        ...defaultTheme.colors,
        theme: "#7743DB",
        light: {
          primary: "#FFFFFF",
          secondary: "#f1f1ef",
        },
        dark: {
          primary: "#0F0F0F",
          secondary: "#202020",
        },
        "background": "#F5F5F5",
      },
      screens: {
        ...defaultTheme.screens,
        xs: "340px",
        sm: "420px",
      },
      spacing: {
        spacing: {
          ...defaultTheme.spacing,
          1: '5px',
          2: '10px',
          3: '15px',
          4: '20px',
          5: '25px'
        }
      }
    },
  },
};

export default config;
```

## Avoid Arbitrary Values

Imagine our web application follows some colour scheme where we have `#7743DB` as our theme colour and `#0D0D0D` as our background colour.

We can add these colours to our tailwind configuration and refer to them using class names, such as `bg-background` `text-theme` instead of using arbitrary values at multiple places, i.e. `bg-[#0D0D0D]` or `text-[#7743DB]`.

Now, if we want to change our application's color scheme, we just need to update our tailwind configuration instead of renaming the arbitrary class names at multiple places.

```javascript
import defaultTheme from "tailwindcss/defaultTheme";

const config = {
  content: [
    "./src/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        ...defaultTheme.colors,
        theme: "#7743DB",
        background: "#0D0D0D"
      },
    },
  },
};

export default config;
```

```typescript
const ColoredText = ({ children }) => {
  return (
     <span className="text-theme">
          {children}
     </span>
  );
};
```

## Avoid Dynamically Generated Class Names

You all might have encountered this issue while working with dynamic classes that whenever we apply some dynamic class name based on state or some condition, the class name appears in elements panel on the browser, but its corresponding CSS does not.

```typescript
const BorderBox = ({ borderColor }) => {
  return (
    <div className={`border border-solid border-[${borderColor}]`}>
      Some Random Text
    </div>
  );
};
```

This is because Tailwind scans your source code for classes using regular expressions to extract every string that could possibly be a class name. Hence, any broken class name string such as `border-[${borderColor}]` would not be recognized by tailwind at build time, and it would not be included in the output CSS file of tailwind.

Suppose, we have to change the border color of our element based on the color code passed in props. There are two ways to it:

1.  Defining a separate class name for each state value. This is only applicable if you know all the expected values of the `borderColor` at build time.

> [!TIP]
> `clsx` is utility package for constructing `className` strings conditionally.

```typescript
const BorderBox = ({ borderColor }) => {
  return (
    <div
      className={clsx("border border-solid", {
        "border-black": borderColor === "black",
        "border-red-500": borderColor === "red",
        "border-green-500": borderColor === "green",
      })}
    >
      Some Random Text
    </div>
  );
};
```