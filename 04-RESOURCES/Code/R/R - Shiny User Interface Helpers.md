---
creation_date: 2024-06-23
modification_date: 2024-06-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code/R
  - Topic/Dev/R
  - Topic/Dev/R/Shiny
  - Status/WIP
aliases:
  - Shiny User Interface Helpers R Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# R Shiny User Interface Helpers

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
> - *[EDA/R/ui_helpers.R at master · jimbrig/EDA (github.com)](https://github.com/jimbrig/EDA/blob/master/R/ui_helpers.R)*

## Code

### Insert Logo (`insert_logo`)

```R
#' Insert Logo
#' 
#' @description
#' Inserts a customized HTML `div` element with an anchor tag `<a></a>` and an
#' embedded image tag (`<img></img>`) representing a `logo` element.
#'
#' @param file (Required) Character string specifying the path to the
#'   logo image file to use.
#' @param style (Optional) Character string containing valid `CSS` styles.
#'   Defaults to `"background-color:#FFF; width:100%; height:100%;"`.
#' @param width (Optional) Width to use
#' @param ref (Optional) What to use as the `href` attribute for the anchor tag.
#'   Defaults to `"#"`.
#'
#' @return HTML `div`
#' 
#' @export
#' 
#' @importFrom htmltools tags
insert_logo <- function(
  file,
  style = "background-color: #FFF; width: 100%; height: 100%;",
  width = NULL,
  ref = "#"
) {

  htmltools::tags$div(
    style = style,
    htmltools::tags$a(
      htmltools::tags$img(
        src = file,
        width = width
      ),
      href = ref
    )
  )

}

```

### Repeat Break Points (`<br>`)

### Icon Text

### Fluid c



## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - R|R Map of Content]]
- [[04-RESOURCES/Code/R/_README|R Code Index]]
- [[Tool - R|R Programming Language]]

***

## Appendix

*Note created on [[2024-06-23]] and last modified on [[2024-06-23]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[R - Shiny User Interface Helpers]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/R/R - Shiny User Interface Helpers"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024