---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/Web
  - Status/WIP
aliases:
  - JavaScript Arrow Functions Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Arrow Functions

> [!SOURCE] Sources:
> - *[Arrow function expressions - JavaScript | MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)*
> - *[JavaScript Features You Need to Know to Master React - Kinsta®](https://kinsta.com/blog/javascript-react/#arrow-functions)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!ABOUT]
> Arrow functions are an alternative to anonymous functions (functions without names) in JavaScript but with some differences and limitations.

An **arrow function expression** is a compact alternative to a traditional [function expression](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/function), with some semantic differences and deliberate limitations in usage:

- Arrow functions don't have their own [bindings](https://developer.mozilla.org/en-US/docs/Glossary/Binding) to [`this`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this), [`arguments`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments), or [`super`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/super), and should not be used as [methods](https://developer.mozilla.org/en-US/docs/Glossary/Method).
- Arrow functions cannot be used as [constructors](https://developer.mozilla.org/en-US/docs/Glossary/Constructor). Calling them with [`new`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/new) throws a [`TypeError`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypeError). They also don't have access to the [`new.target`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/new.target) keyword.
- Arrow functions cannot use [`yield`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/yield) within their body and cannot be created as generator functions.


## Code Snippet

The following declarations are all valid Arrow Functions examples:

```javascript
// Arrow function without parameters
const myFunction = () => expression;

// Arrow function with one parameter
const myFunction = param => expression;

// Arrow function with one parameter
const myFunction = (param) => expression;

// Arrow function with more parameters
const myFunction = (param1, param2) => expression;

// Arrow function without parameters
const myFunction = () => {
	statements
}

// Arrow function with one parameter
const myFunction = param => {
	statements
}

// Arrow function with more parameters
const myFunction = (param1, param2) => {
	statements
}
```

You may omit the round brackets if you only pass one parameter to the function. If you pass two or more parameters, you must enclose them in brackets. Here is an example of this:

```javascript
const render = ( id, title, category ) => `${id}: ${title} - ${category}`;
console.log( render ( 5, 'Hello World!', "JavaScript" ) );
```

One-line Arrow Functions return a value by default. If you use the multiple-line syntax, you will have to manually return a value:

```javascript
const render = ( id, title, category ) => {
	console.log( `Post title: ${ title }` );
	return `${ id }: ${ title } - ${ category }`;
}
console.log( `Post details: ${ render ( 5, 'Hello World!', "JavaScript" ) }` );
```

**✍️ You will usually use Arrow Function in React applications unless there’s a specific reason not to use them.**


## Details

One key difference between normal functions and Arrow Functions to bear in mind is that Arrow functions don’t have their own bindings to the keyword `this`. If you try to use `this` in an Arrow Function, it will go outside the function scope.

For a more in-depth description of Arrow functions and examples of use, read also [mdn web docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions).

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
LIST FROM [[JS - Arrow Functions]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Arrow Functions"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024