---
creation_date: 2024-06-23
modification_date: 2024-06-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code/R
  - Topic/Dev/R
  - Status/WIP
aliases:
  - Console Message Feedback Utilities R Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Console Message Feedback Utilities R Code

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
> - **

## Code

```R
#' Feedback Message Utility Functions
#'
#' @description
#' A set of helper functions for providing verbose feedback to the developer using
#' this packages functions.
#'
#' @param x The string passed to various `msg_` functions.
#' @param bullet What to use for the message's `bullet`. Defaults to `cli::symbol$bullet`
#'
#' @name feedback
#' @family Feedback Utilities
#' @keywords feedback
#'
#' @seealso
#'   - [usethis::ui-questions()]
#'   - [cli::list_symbols()]
NULL

#' @rdname feedback
#' @importFrom crayon green
#' @importFrom glue glue_collapse
msg_field <- function(x) {
  x <- crayon::green(x)
  x <- glue::glue_collapse(x, sep = ", ")
  x
}

#' @rdname feedback
#' @importFrom crayon yellow
#' @importFrom glue glue_collapse
msg_value <- function(x) {

  if (is.character(x)) {
    x <- encodeString(x, quote = "'")
  }
  x <- crayon::yellow(x)
  x <- glue::glue_collapse(x, sep = ", ")
  x

}

#' @rdname feedback
#' @importFrom glue glue glue_collapse
#' @importFrom crayon green
#' @importFrom cli symbol
msg_done <- function(x) {
  x <- glue::glue_collapse(x, "\n")
  x <- glue::glue(x, .envir = parent.frame())
  msg_bullet(x, crayon::green(cli::symbol$tick))
}

#' @rdname feedback
#' @importFrom cli symbol
msg_bullet <- function(x, bullet = cli::symbol$bullet) {
  bullet <- paste0(bullet, " ")
  x <- indent(x, bullet, "  ")
  inform(x)
}

#' @rdname feedback
#' @importFrom crayon red
#' @importFrom cli symbol
msg_err <- function(x) {
  x <- glue::glue_collapse(x, "\n")
  x <- glue::glue(x, .envir = parent.frame())
  msg_bullet(x, crayon::red(cli::symbol$cross))
}

#' @rdname feedback
#' @importFrom fs is_dir path_rel path_tidy
#' @importFrom here here
msg_path <- function(x) {
  is_directory <- fs::is_dir(x) | grepl("/$", x)
  x_rel <- fs::path_rel(x, start = here::here())
  x_tidy <- fs::path_tidy(x_rel)
  out <- ifelse(is_directory, paste0(x_tidy, "/"), x_tidy)
  msg_value(out)
}

#' @rdname feedback
#' @importFrom cli symbol
#' @importFrom crayon yellow
#' @importFrom glue glue_collapse glue
msg_info <- function(x) {
  x <- glue::glue_collapse(x, "\n")
  x <- glue::glue(x, .envir = parent.frame())
  msg_bullet(x, crayon::yellow(cli::symbol$info))
}

#' @rdname feedback
#' @importFrom glue glue_collapse
#' @importFrom crayon silver
msg_code <- function(x) {
  x <- encodeString(x, quote = "`")
  x <- crayon::silver(x)
  x <- glue::glue_collapse(x, sep = ", ")
  x
}

#' @rdname feedback
#' @importFrom glue glue_collapse
#' @importFrom crayon green
msg_feedback <- function(x) {
  x <- crayon::green(x)
  x <- glue_collapse(x, sep = ", ")
  x
}

#' Inform
#'
#' @description
#' A wrapper around [rlang::inform()] for providing feedback to developers using
#' this packages functions.
#'
#' @inheritDotParams rlang::inform
#'
#' @family Feedback Utilities
#' @seealso [rlang::inform()]
#'
#' @return feedback in console
#' @export
#'
#' @importFrom rlang inform
inform <- function(...) {
  rlang::inform(paste0(...))
}

#' Indent
#'
#' @description
#' Indentation around various `msg_` feedback functions.
#'
#' @param x The string passed to various `msg_` functions.
#' @param first what to indent with - defaults to `"  "`.
#' @param indent indentation of next line - defaults to `first`
#'
#' @family Feedback Utilities
#'
#' @export
#' @return string
indent <- function(x, first = "  ", indent = first) {
  x <- gsub("\n", paste0("\n", indent), x)
  paste0(first, x)
}
```

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
LIST FROM [[R - Console Message Feedback Utilities]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/R/R - Console Message Feedback Utilities"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024