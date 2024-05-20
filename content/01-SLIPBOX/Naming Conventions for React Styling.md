---
creation_date: 2024-05-13
modification_date: 2024-05-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev/React
  - Status/WIP
aliases:
  - Naming Conventions for React Styling
publish: true
permalink:
description:
image:
cssclasses:
---


# Naming Conventions for React Styling

> [!SOURCE] Sources:
> - **

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
> It's a good idea to use a consistent naming convention for your [[Cascading Style Sheets (CSS)|CSS]] classes to keep your styles organized and easy to understand. 
> Some popular conventions include [[Block-Element-Modifier (BEM)]] and [[Scalable and Modular Architecture for CSS (SMACSS)]].

## Examples

Here's an example of how these conventions might be used together in a React component:

```jsx
import React from 'react';
import './ProfileInfo.css';

function ProfileInfo(props) {
  return (
    <div className="profile-info">
      <h2>{props.name}</h2>
      <p>{props.bio}</p>
    </div>
  );
}

export default ProfileInfo;
```

And the corresponding CSS:

```css
.profile-info {
  background-color: #f5f5f5;
  padding: 20px;
}
```

In this code, the following naming conventions are used:

- The [[Tool - React.js|React]] functional component is named `ProfileInfo`, which follows the `UpperCamelCase` or `PascalCase` convention for naming [[Tool - React.js|React]] components.
- The [[Cascading Style Sheets (CSS)|CSS]] file imported is named `ProfileInfo.css`, which also follows the `UpperCamelCase` convention and matches the name of the component.
- The class in the [[Tool - JSX|JSX]] template is `profile-info`, which follows the lowercase and hyphen-separated convention, also known as `kebab-case`, for naming CSS classes.

You can [read more about naming conventions here](https://www.freecodecamp.org/news/snake-case-vs-camel-case-vs-pascal-case-vs-kebab-case-whats-the-difference/) if you like.

***

## Appendix

*Note created on [[2024-05-13]] and last modified on [[2024-05-13]].*

### See Also

- [[Tool - CSSLint|CSSLint]]
- [[Tool - Stylelint|Stylelint]]
- [[Tool - ESLint|ESLint]]

### Backlinks

```dataview
LIST FROM [[Naming Conventions for React Styling]] AND -"CHANGELOG" AND -"//Naming Conventions for React Styling"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024