---
creation_date: 2024-08-14
modification_date: 2024-08-14
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Guide
  - Topic/Dev/R
  - Status/WIP
aliases:
  - bs4Dash vs bslib
publish: true
permalink:
description:
image:
cssclasses:
---


# bs4Dash vs bslib

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

> [!NOTE] About
> This note is about ...

- **[bs4Dash]():** [[Tool - R|R]] package that provides [[Tool - Bootstrap|Bootstrap]] 4 components and utilities for building dashboards in [[R Shiny]]. It is built on top of the `shinydashboard` package.

- **bslib**: A modern UI toolkit for Shiny and R Markdown based on Bootstrap. It supports Bootstrap 3, 4 and 5 as well as Bootswatch themes and enables easy custom theming of Shiny apps and R Markdown documents. [1](https://rstudio.github.io/bslib/)

## Features

### Components

- `bs4Dash` provides pre-built Bootstrap 4 components like boxes, value boxes, info boxes, etc. specifically designed for dashboards
- `bslib` offers a fresh take on components that build on the latest Bootstrap versions, add new features (e.g. full screen expansion, sidebars), and are more customizable. [2](https://shiny.posit.co/blog/posts/bslib-dashboards/) It includes essential dashboard components like cards, value boxes, sidebar layouts, accordions and more. [2](https://shiny.posit.co/blog/posts/bslib-dashboards/)

### Theming

- bs4Dash allows theming via Bootswatch themes and custom CSS.
- bslib provides more extensive theming options [2](https://shiny.posit.co/blog/posts/bslib-dashboards/):
    - Real-time theming of apps
    - Support for Bootswatch themes across Bootstrap versions
    - Customization of main colors, fonts and more via the `bs_theme()` function
    - Portability - themes can be used across Shiny apps, R Markdown docs and websites

### Layout

- bs4Dash uses the grid layout system from Bootstrap 4.
- bslib provides enhanced layout tools like `layout_columns()` and `layout_column_wrap()` for creating responsive grid layouts more easily. [2](https://shiny.posit.co/blog/posts/bslib-dashboards/) It also supports filling layouts and localized sidebars in cards. [8](https://gist.github.com/gadenbuie/74ba1d0a4d597aba20caf1b6bf41922f)

## Recommendations

- If you are already using bs4Dash and it meets your needs, there may not be a pressing reason to switch.
- However, bslib is actively being developed as a "complete" dashboarding solution in Shiny. [2](https://shiny.posit.co/blog/posts/bslib-dashboards/) It provides a more modern, flexible and customizable approach, especially around theming.
- bslib makes it easy to experiment with and implement custom themes for your Shiny dashboard. Features like real-time theming with `bs_themer()` and the ability to use newer Bootstrap and Bootswatch versions are significant advantages. [5](https://rstudio.github.io/bslib/articles/theming/index.html)
- The bslib package overall seems to be the more powerful and future-forward choice for creating custom themed dashboards in Shiny, with a steadily growing feature set. Making the switch from bs4Dash to bslib is likely to be beneficial in the long run.



## Appendix

*Note created on [[2024-08-14]] and last modified on [[2024-08-14]].*

### Sources

**Sources:**
- [(1) Custom Bootstrap Sass Themes for shiny and rmarkdown • bslib](https://rstudio.github.io/bslib/)
- [(2) Towards easy, delightful, and customizable dashboards in Shiny for ...](https://shiny.posit.co/blog/posts/bslib-dashboards/)
- [(3) making the switch from shinydashboardPlus to bslib - Posit Community](https://forum.posit.co/t/making-the-switch-from-shinydashboardplus-to-bslib/176061)
- [(4) PDF bslib: Custom 'Bootstrap' 'Sass' Themes for 'shiny' and 'rmarkdown'](https://cran.r-project.org/web/packages/bslib/bslib.pdf)
- [(5) Theming • bslib - rstudio.github.io](https://rstudio.github.io/bslib/articles/theming/index.html)
- [(6) R Shiny bslib - How to Work With Bootstrap Themes in Shiny](https://www.appsilon.com/post/r-shiny-bslib)
- [(7) Package index • bslib - rstudio.github.io](https://rstudio.github.io/bslib/reference/index.html)
- [(8) Example apps using bslib v0.5.0 - GitHub Gist](https://gist.github.com/gadenbuie/74ba1d0a4d597aba20caf1b6bf41922f)

### Backlinks

```dataview
LIST FROM [[bs4Dash vs bslib]] AND -"CHANGELOG" AND -"00-INBOX/bs4Dash vs bslib"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024