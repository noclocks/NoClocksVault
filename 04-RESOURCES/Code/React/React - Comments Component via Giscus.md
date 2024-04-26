---
creation_date: 2024-04-25
modification_date: 2024-04-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Type/Code/TypeScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/TypeScript
  - Topic/JavaScript
  - Topic/TypeScript
  - Status/WIP
aliases:
  - Comments React Component via Giscus
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Comments React Component via [[Tool - Giscus Component|Giscus]]

> [!SOURCE] Sources:
> - *[GPTHub/src/components/Comments.tsx at main · lencx/GPTHub (github.com)](https://github.com/lencx/GPTHub/blob/main/src/components/Comments.tsx)*
> - *[giscus-component/react/src/lib/Giscus.tsx at main · giscus/giscus-component (github.com)](https://github.com/giscus/giscus-component/blob/main/react/src/lib/Giscus.tsx)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

## Code Snippet

```typescript
// src/components/Comments.tsx

import { useEffect, useState } from 'react';
import Giscus from '@giscus/react';

export default function Comments() {
  const [isDark, setDark] = useState(false);

  useEffect(() => {
    setDark(localStorage.getItem('theme') === 'dracula');
  }, [])

  useEffect(() => {
    const targetNode = document.documentElement;
    const observer = new MutationObserver((mutationsList) => {
      for (const mutation of mutationsList) {
        if (mutation.type === 'attributes' && mutation.attributeName === 'data-theme') {
          console.log('data-theme attribute changed:', targetNode.getAttribute('data-theme'));
          setDark(!isDark);
        }
      }
    });

    const config = { attributes: true, attributeFilter: ['data-theme'] };
    observer.observe(targetNode, config);
    return () => {
      observer.disconnect();
    };
  }, [isDark]);

  return (
    <Giscus
      repo="lencx/gpthub"
      repoId="R_kgDOKrn4Tw"
      category="Comments"
      categoryId="DIC_kwDOKrn4T84Ca5ph"
      mapping="og:title"
      term="Welcome to GPTHub!"
      reactionsEnabled="1"
      emitMetadata="0"
      inputPosition="top"
      theme={isDark ? 'dark_dimmed' : 'light_tritanopia'}
      lang="en"
      loading="lazy"
    />
  );
}

```

## Details

This is a [[React]] [[functional component]] named `Comments` that uses the [[Giscus]] component from the `@giscus/react` library to display a comments section.

Here's a breakdown of the code:

1. **useState**: `const [isDark, setDark] = useState(false);` This line declares a state variable `isDark` with its initial value set to `false`. `setDark` is the function to update this state.

2. **useEffect**: The first `useEffect` hook is used to set the `isDark` state based on the 'theme' item in the local storage when the component mounts.
   
3. **useEffect**: The second `useEffect` hook sets up a `MutationObserver` that watches for changes to the `data-theme` attribute on the `document.documentElement`. If the attribute changes, it toggles the `isDark` state.
   
4. **Giscus Component**: The `Giscus` component is a pre-built component from the `@giscus/react` library that provides a comments section for a GitHub repository. The props passed to it configure its behavior:
   
    - `repo` and `repoId` specify the GitHub repository.
    - `category` and `categoryId` specify the category of discussions.
    - `mapping` and `term` specify how discussions are mapped to pages.
    - `reactionsEnabled`, `emitMetadata`, and `inputPosition` control various features of the comments section.
    - `theme` sets the theme of the comments section based on the `isDark` state.
    - `lang` sets the language.
    - `loading` sets the loading strategy.

The component will render a comments section for the specified GitHub repository, with the appearance and behavior controlled by the provided props.

## Expanding the Component with Additional Props

To pass additional props to the `Giscus` component, you can modify the `Comments` component to accept props and then spread those props onto the `Giscus` component. Here's how you can do it:

```typescript
// src/components/Comments.tsx

import { useEffect, useState } from 'react';
import Giscus from '@giscus/react';

interface CommentsProps {
  [key: string]: any; // This allows you to pass any additional props
}

export default function Comments(props: CommentsProps) {
    const [isDark, setDark] = useState(false);

    useEffect(() => {
        setDark(localStorage.getItem('theme') === 'dracula');
    }, [])

    useEffect(() => {
        const targetNode = document.documentElement;
        const observer = new MutationObserver((mutationsList) => {
            for (const mutation of mutationsList) {
                if (mutation.type === 'attributes' && mutation.attributeName === 'data-theme') {
                    console.log('data-theme attribute changed:', targetNode.getAttribute('data-theme'));
                    setDark(!isDark);
                }
            }
        });

        const config = { attributes: true, attributeFilter: ['data-theme'] };
        observer.observe(targetNode, config);
        return () => {
            observer.disconnect();
        };
    }, [isDark]);

    return (
        <Giscus
            repo="lencx/gpthub"
            repoId="R_kgDOKrn4Tw"
            category="Comments"
            categoryId="DIC_kwDOKrn4T84Ca5ph"
            mapping="og:title"
            term="Welcome to GPTHub!"
            reactionsEnabled="1"
            theme={isDark ? 'dark_dimmed' : 'light_tritanopia'}
            lang="en"
            loading="lazy"
            {...props} // Spread the additional props here
        />
    );
}
```

Now, you can pass additional props to the `Comments` component, and they will be passed through to the `Giscus` component. 

For example:

```typescript
<Comments additionalProp1="value1" additionalProp2="value2" />
```

These additional props (`additionalProp1` and `additionalProp2`) will be passed to the `Giscus` component.

## Source Code

The Source Code from the [[Giscus]] library's react component reveals all types accessible as props:

```typescript
export interface GiscusProps {
  id?: string;
  host?: string;
  repo: Repo;
  repoId: string;
  category?: string;
  categoryId?: string;
  mapping: Mapping;
  term?: string;
  theme?: Theme;
  strict?: BooleanString;
  reactionsEnabled?: BooleanString;
  emitMetadata?: BooleanString;
  inputPosition?: InputPosition;
  lang?: AvailableLanguage;
  loading?: Loading;
}
```

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-04-25]] and last modified on [[2024-04-25]].*

### Backlinks

```dataview
LIST FROM [[React - Comments Component via Giscus]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - Comments Component via Giscus"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024