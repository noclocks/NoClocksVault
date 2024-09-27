---
creation_date: 2024-09-25
modification_date: 2024-09-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Acronym
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/CS
  - Status/WIP
aliases:
  - Immediately Invoke Function Expression (IIFE)
  - IIFE
  - Immediately Invoke Function Expression
publish: true
permalink:
description:
image:
cssclasses:
---

# Immediately Invoke Function Expression (IIFE)

> [!SOURCE] Sources:
> - *[Immediately invoked function expression - Wikipedia](https://en.wikipedia.org/wiki/Immediately_invoked_function_expression)*

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
> An **Immediately Invoked Function Expression** (or **IIFE**, pronounced "iffy") is a [programming language idiom](https://en.wikipedia.org/wiki/Programming_idiom "Programming idiom") which produces a [lexical scope](https://en.wikipedia.org/wiki/Scope_(computer_science) "Scope (computer science)") using [function scoping](https://en.wikipedia.org/wiki/Function_scoping "Function scoping"). It was popular in [JavaScript](https://en.wikipedia.org/wiki/JavaScript "JavaScript") as a method to support [modular programming](https://en.wikipedia.org/wiki/Modular_programming "Modular programming") before the introduction of more standardized solutions such as [CommonJS](https://en.wikipedia.org/wiki/CommonJS "CommonJS") and [ES modules](https://en.wikipedia.org/wiki/ECMAScript#6th_Edition_%E2%80%93_ECMAScript_2015 "ECMAScript").
>
> From [Wikipedia](https://en.wikipedia.org/wiki/Immediately_invoked_function_expression).

Immediately invoked function expressions can be used to avoid [variable hoisting](https://en.wikipedia.org/wiki/JavaScript_syntax#Scoping_and_hoisting "JavaScript syntax") from within blocks, protect against polluting the [global environment](https://en.wikipedia.org/wiki/Global_variable "Global variable") and simultaneously allow public access to methods while retaining privacy for variables defined within the function.

## Usage

Immediately invoked function expressions may be written in a number of different ways. A [common convention](https://en.wikipedia.org/wiki/Coding_conventions "Coding conventions") is to enclose the function expression – and optionally its invocation operator – with the grouping operator, in parentheses, to tell the parser explicitly to expect an expression. Otherwise, in most situations, when the parser encounters the `function` keyword, it treats it as a function declaration (statement), and not as a function expression.

```javascript
(function () { /* ... */ })();
(function () { /* ... */ }());

// With ES6 arrow functions (though parentheses only allowed on outside)
(() => { /* ... */ })(); 
```

There are also other ways to enforce a function expression:

```javascript
!function () { /* ... */ }();
~function () { /* ... */ }();
-function () { /* ... */ }();
+function () { /* ... */ }();
void function () { /* ... */ }();
delete function () { /* ... */ }();
typeof function () { /* ... */ }();
await function () { /* ... */ }();
```

In contexts where an expression is expected, wrapping in parentheses is not necessary:

```javascript
let f = function () { /* ... */ }();
true && function () { /* ... */ }();
0, function () { /* ... */ }();
```

Passing variables into the scope is done as follows:

```javascript
(function(a, b) { /* ... */ })("hello", "world");
```

An initial parenthesis is one case where the [automatic semicolon insertion](https://en.wikipedia.org/wiki/Automatic_semicolon_insertion "Automatic semicolon insertion") (ASI) in JavaScript can cause problems; the expression is instead interpreted as a call to the last term on the preceding line. In some styles that omit optional semicolons, the semicolon is placed _in front_ of the parenthesis, and is known as a [defensive semicolon](https://en.wikipedia.org/wiki/Defensive_semicolon "Defensive semicolon").

For example:

```javascript
a = b + c
;(function () {
  // code
})();
```

to avoid being parsed as `c()`.

## Examples

```javascript
let v, getValue;
v = 1;
getValue = function () { return v; };
v = 2;

getValue(); // 2
```

***

## Appendix

*Note created on [[2024-09-25]] and last modified on [[2024-09-25]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Immediately Invoke Function Expression (IIFE)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Acronyms/Immediately Invoke Function Expression (IIFE)"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024


