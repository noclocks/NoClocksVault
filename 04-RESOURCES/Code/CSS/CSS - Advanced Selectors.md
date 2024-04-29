---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/CSS
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/CSS
  - Status/WIP
aliases:
  - CSS Advanced Selectors Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Advanced Selectors Code

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - *[Obsidian/Computer Science/Programming/HTML & CSS/Advanced CSS Tutorials/Advanced Selectors.md at main · archsinner/Obsidian](https://github.com/archsinner/Obsidian/blob/main/Computer%20Science/Programming/HTML%20%26%20CSS/Advanced%20CSS%20Tutorials/Advanced%20Selectors.md)*

> [!TIP]
> There are many special selectors in [[Cascading Style Sheets (CSS)|CSS]] that allow us to query for a list of elements using advanced methods.

## Code Snippets

### Child Selectors

Child selectors allow us to select a specific set of children of an element according to their internal ordering.

#### First Child and Last Child

To select the first and last child contained withing a parent element, use the `:first-child` and `:last-child` selectors:

```css
li:first-child {
    color: blue;
}

li:last-child {
    color: green;
}
```

then in the [[Hyper Text Markup Language (HTML)|HTML]]:

```html
<ul>
  <li>First item</li>
  <li>Second item</li>
  <li>Third item</li>
  <li>Fourth item</li>
</ul>
```

To make sure that we select only `<li>` elements within a `<ul>` element, we can use a relational selector:

```css
ul li:first-child {
    color: blue;
}

ul li:last-child {
    color: green;
}
```

#### Nth Child and Nth Last Child

Similarly to first-child and last-child, we can select using a fixed offset from the start and end of the list of children of the parent container. 

Take a look at the following example:

```css
ul li:nth-child(2) {
    color: blue;
}

ul li:nth-last-child(2) {
    color: green;
}
```

```html
<ul>
    <li>First item</li>
    <li>Second item</li>
    <li>Third item</li>
    <li>Fourth item</li>
</ul>
```

#### First of Type and Last of Type

The first-of-type selector is very similar to the first-child selector, only that it is less restrictive - it only looks at elements of its type as opposed to the first-child selector.  

```html
<style>
ul li:first-child {
    color: blue;
}

ul li:first-of-type {
    color: red;
}

ul li:last-of-type {
    color: green;
}
</style>
<ul>
    <dl><dt>First descriptive list item</dt></dl>
    <li>First regular list item</li>
    <li>Second regular list item</li>
    <li>Third regular list item</li>
    <li>Fourth regular list item</li>
</ul>
```

Notice how the first [[Cascading Style Sheets (CSS)|CSS]] rule for coloring the first `<li>` child in blue does not do anything, since it will only be applied to the first child element which is also an `<li>` element. This example also shows that the first-of-type selector is usually less useful than its counterpart first-of-type.

#### Nth of Type and Nth Last of Type

Similarly to the previous section, `nth-of-type` and `nth-of-last-type` also is less restrictive by counting elements similar to its type, but also allows selecting an element using a fixed offset from either the start or the end of the list.

```html
<style>
ul li:nth-child(2) {
    color: blue;
}

ul li:nth-of-type(2) {
    color: red;
}

ul li:nth-last-of-type(2) {
    color: green;
}
</style>
<ul>
    <dl><dt>First descriptive list item</dt></dl>
    <li>First item</li>
    <li>Second item</li>
    <li>Third item</li>
    <li>Fourth item</li>
</ul>
```

#### Only Child and Only of Type

The `:only-child` selector will only select an element if it does not have any siblings at all contained within its parent element. The `:only-of-type` is similar, only that it will only consider elements from the same type as itself.

Let's take a look at both in action:

```html
<style>
ul dl:only-child {
    color: red;
}

ul li:only-of-type {
    color: blue;
}
</style>

<ul>
    <dl><dt>Only descriptive list item in the list</dt></dl>
    <li>Only list item in the list</li>
</ul>
```

Notice how in this example the only-child selector fails to color the `<dl>` element in read because of the presence of the `<li>` element as a sibling. However, for the only-of-type selector, having a `<dl>` element as a sibling is not an issue, since there are no other `<li>` elements contained within the same parent.

### Hierarchy Selectors

#### Empty Selector

The `:empty` selector applies only to elements that are empty and contain only whitespaces and/or [[Hyper Text Markup Language (HTML)|HTML]] comments. 

Example:

```html
<style>
ul li {
    background-color: [[cff]];
}

ul li:empty {
    background-color: [[fcf]];
}
</style>
<ul>
    <li>First item</li>
    <li>Second item</li>
    <li></li>
    <li>Fourth item</li>
</ul>
```

## Todo

- [ ] Adjacent sibling selectors (`+` and `~`)
- [ ] Special Selectors
	- [ ] The Universal Selector (`*`)
	- [ ] The `not` Selector
- [ ] Attribute Selectors
	- [ ] Basic Attribute Selector
	- [ ] Attribute Equals Value Selector (`=`)
	- [ ] Attribute Contains Value Selector (`~=` and `*=`)
	- [ ] Attribute Starts With Selectors (`|=` and `^=`)
	- [ ] Attribute Ends With Selector (`$=`)

## See Also

- [[04-RESOURCES/Code/CSS/_README|CSS Code]]
- [[Cascading Style Sheets (CSS)]]
- [[Hyper Text Markup Language (HTML)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### Backlinks

```dataview
LIST FROM [[CSS - Advanced Selectors]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Advanced Selectors"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024