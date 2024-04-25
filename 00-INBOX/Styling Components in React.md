---
creation_date: 2024-04-25
modification_date: 2024-04-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - Styling Components in React
publish: true
permalink:
description:
image:
cssclasses:
---

# Styling Components in React

> [!SOURCE] Sources:
> - *[Styling Components In React — Smashing Magazine](https://www.smashingmagazine.com/2020/05/styling-components-react/)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Strategies

There are various strategies to follow when planning to style React components, these strategies have also increased and evolved over the years. In this tutorial, we would be talking about the most popular and modern styling strategies, and how to use them to style our React components. 

These styling strategies include:

1. **[CSS and SCSS Stylesheets](https://www.smashingmagazine.com/2020/05/styling-components-react/#css-and-stylesheets)**:  This involves using separate stylesheets like our conventional way of styling our [[Hyper Text Markup Language (HTML)|HTML]] websites either with [[Cascading Style Sheets (CSS)|CSS]] or a CSS preprocessor called **SASS**.
2. **[CSS Modules](https://www.smashingmagazine.com/2020/05/styling-components-react/#css-modules)**: A CSS Module is a CSS file in which all class names and animation names are scoped locally by default.
3. **[`styled-components`](https://www.smashingmagazine.com/2020/05/styling-components-react/#styled-components)**: styled-components is a library for React and React Native that allows you to use component-level styles in your application that are written with a mixture of JavaScript and CSS using a technique called **CSS-in-JS**.
4. **[JSS](https://www.smashingmagazine.com/2020/05/styling-components-react/#jss)**: JSS is an authoring tool for CSS which allows you to use JavaScript to describe styles in a declarative, conflict-free and reusable way. It can compile in the browser, server-side or at build time in Node.

### CSS & SASS Stylesheets

> [!NOTE]
> "Sass has two syntaxes. The most commonly used syntax is known as "SCSS" (for "Sassy CSS") and is a superset of CSS syntax. This means that every valid CSS stylesheet is valid SCSS as well. SCSS files use the extension .scss.
> The second, older syntax is known as the indented syntax (or just “.sass”). Inspired by Haml's terseness, it’s intended for people who prefer conciseness over similarity to CSS. Instead of brackets and semicolons, it uses the indentation of lines to specify blocks. Files in the indented syntax use the extension .sass."

CSS or SCSS Stylesheets is a styling strategy that involves the use of external CSS or SASS stylesheets that can be imported into your React components depending on where you need the styling to be applied.

For example, we have a SASS file of styles called `Box.scss` we need to use in a component called `Box.js`**,** below is the code for our SASS file.

```css
// Box.scss
.Box {
  margin: 40px;
  border: 5px black;
}

.Box_content {
  font-size: 16px;
  text-align: center;
}
```

In order to make use of this styling inside our Box component all we need to do is import the SASS file directly into our `Box.js` component like so:

```javascript
import React from 'react';
import './Box.css';

const Box = () => (
  <div className="Box">
    <p className="Box_content"> Styling React Components </p>
  </div>
);

export default Box;
```

After creating the styles and importing it into `Box.js` file, we can then set the `className` attribute to the match what we have in the stylesheet.

While using this strategy, you could also leverage on existing frameworks like; Bulma, Bootstrap, etc. These frameworks provide you with existing classes and components you could plug into your React application without styling every aspect of your application.

#### Benefits

1. It is **much more popular than the rest** of the styling strategies, so there is a ton of helpful resources when you run into a bug.
2. **Caching & Performance**  
    Standard CSS files are easy for the browser to optimize for, caching the files locally for repeat visits, and ultimately giving performance wins.
3. **Un-opinionated and Universal**  
    CSS and SASS is universal and has no opinion on how you render your UI making it a great choice for teams that have legacy CSS and are migrating over to a new framework or rebuilding their website or product.
4. **Quickly Iterate A New Design**  
    You can very easily rip out the entire stylesheet and create a new one to refresh the look and feel of your app without digging through potentially hundreds of components.
5. **CSS** **Frameworks**  
    CSS frameworks come in handy if you are a new developer, or you want to quickly work on a prototype without diving deep into writing your own full-blown stylesheets. CSS frameworks will provide you with building blocks to get your idea off the ground. Some of these frameworks include, Bootstrap, Bulma, Semantic UI, Materialize.

#### Shortcomings

1. **Readability**  
    If not properly structured, a CSS or SASS stylesheet can become long and difficult to navigate through as the application becomes complex.
2. **Legacy CSS Can Live On For Years**  
    Most times these really large stylesheets can become so complex and long that cleaning up old, outdated or even unused styles can be a pain.


***

## Appendix

*Note created on [[2024-04-25]] and last modified on [[2024-04-25]].*

### See Also

- [[04-RESOURCES/Code/React/_README|React Code]]
- [[Cascading Style Sheets (CSS)]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]

### Backlinks

```dataview
LIST FROM [[Styling Components in React]] AND -"CHANGELOG" AND -"00-INBOX/Styling Components in React"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024