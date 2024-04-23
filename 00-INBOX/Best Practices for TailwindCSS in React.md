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

1. Create a component `H1Heading` with tailwind classes applied to it and reuse this component wherever required.