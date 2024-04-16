---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/JavaScript
  - Status/WIP
aliases:
  - JavaScript TS - Base Components Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Base Components

> [!SOURCE] Sources:
> - **

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

- **Theme**
- **Button**
- **Environment**

## Code Snippet

Example using a custom `useTheme` hook:

```typescript
import { useTheme } from '@/theme'

const Button = ({ className, children }) => {
  const { primaryColor } = useTheme();
  const style = { background: primaryColor };
  return (
    <button style={style} className={className}>
      {children}
    </button>
  );
};
```

Example using a `className` custom Prop, custom `button.styles.css`, and exported Prop type along with component:

```typescript
import React, { ButtonHTMLAttributes } from 'react';

import classNames from 'classnames';
import styles from './button.styles.css'

type ButtonVariant = 'filled' | 'outlined';

export type ButtonProps = {
  /**
  * Button Variant to Use
  * @default 'outlined'
  */
  variant?: ButtonVariant;
  /**
  * Children
  */
  children?: ReactNode;
  /**
  * Class Name
  */
  className?: string;
} & React.HTMLAttributes<HTMLButtonElement>;

const ButtonStyles: { [key in ButtonVariant]: React.CSSProperties } = {  
  filled: {  
    backgroundColor: 'blue',
    color: 'white',
  },
  outlined: {
    border: '2px solid blue',
    backgroundColor: 'transparent',
    color: 'blue',
    },  
};

export function Button({ variant = 'outlined', children, className, ...props }: ButtonProps) {
  return (
    <button
      type='button'
      style{...props} className={classNames(styles.button, className)}>
      {children}
    </button>
  );
};
```

In this snippet, the `className` prop works alongside the `classNames` utility. The `styles.button` provides the default styling defined in the component's stylesheet. The `className` prop, however, is for additional style — adding or overriding the original base style, by the consumer of the component.

The sequence in which these class names are applied is significant. Placing the `className` prop last in the `classNames` function ensures that any styles provided by this prop override the default styles in case of any conflicts. This design allows users to maintain the fundamental design and functionality of the component while customizing its appearance to suit specific requirements. It strikes a balance between maintaining a consistent base style and offering flexibility for customization, a vital aspect of creating reusable, adaptable components.


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
LIST FROM [[TS - Base Components]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/TypeScript/TS - Base Components"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024