---
creation_date: 2024-08-04
modification_date: 2024-08-04
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/CSS
  - Type/Code/SASS
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/CSS
  - Status/WIP
aliases:
  - CSS Typography Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Typography Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - *https://gist.github.com/sebastiano-guerriero/2d05b319b9ae7618d99809797a67c0a0*

## Code Snippet

- [typography.scss](https://gist.github.com/sebastiano-guerriero/2d05b319b9ae7618d99809797a67c0a0):

```scss
/* -------------------------------- 
Typography
-------------------------------- */

:root {
    --font-primary: sans-serif;
    --font-secondary: serif;

    /* set base values */
    --text-base-size: 1em;
    --text-scale-ratio: 1.2;

    /* type scale */
    --text-xs: calc(1em / (var(--text-scale-ratio) * var(--text-scale-ratio)));
    --text-sm: calc(1em / var(--text-scale-ratio));
    --text-md: calc(1em * var(--text-scale-ratio));
    --text-lg: calc(1em * var(--text-scale-ratio) * var(--text-scale-ratio));
    --text-xl: calc(1em * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio));
    --text-xxl: calc(1em * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio));
    --text-xxxl: calc(1em * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio));

    /* line-height */
    --heading-line-height: 1.2;
    --body-line-height: 1.4;
}

@include breakpoint(md) {
    :root {
        --text-base-size: 1.25em;
        --text-scale-ratio: 1.25;
    }
}

body {
    font-size: var(--text-base-size);
    font-family: var(--font-primary);
    color: var(--color-text);
}

h1, h2, h3, h4, form legend {
    color: var(--color-text-heading);
    margin-bottom: var(--space-xxs);
    line-height: var(--heading-line-height);
}

/* text size */
.text--xxxl {
    font-size: var(--text-xxxl);
}

h1, .text--xxl {
    font-size: var(--text-xxl);
}

h2, .text--xl {
    font-size: var(--text-xl);
}

h3, .text--lg {
    font-size: var(--text-lg);
}

h4, .text--md {
    font-size: var(--text-md);
}

.text--sm, small {
    font-size: var(--text-sm);
}

.text--xs {
    font-size: var(--text-xs);
}

p {
    line-height: var(--body-line-height);
}

a {
    color: var(--color-link);

    &:visited {
        color: var(--color-link-visited);
    }
}

b, strong {
    font-weight: bold;
}

.text-container {
    h2, h3, h4 {
        margin-top: var(--space-sm);
    }
    
    ul, ol, p {
        margin-bottom: var(--space-md);
    }

    ul, ol {
		list-style-position: outside;
        padding-left: 24px;
	}

	ul {
		list-style-type: disc;
	}

	ol {
		list-style-type: decimal;
    }

    ul li, ol li {
        line-height: var(--body-line-height);
    }
    
    em {
        font-style: italic;
    }

    u {
        text-decoration: underline;
    }
}

/* utility classes */
.truncate {
    // truncate text if it exceeds parent
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/CSS/_README|CSS Code]]
- [[Cascading Style Sheets (CSS)]]
- [[Hyper Text Markup Language (HTML)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-08-04]] and last modified on [[2024-08-04]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[CSS - Typography]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Typography"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024