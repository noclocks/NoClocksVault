---
creation_date: 2024-09-23
modification_date: 2024-09-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code/R
  - Topic/Dev/R
  - Status/WIP
aliases:
  - Build Electron Desktop App Installer for Shiny App R Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Build Electron Desktop App Installer for an R Shiny App

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
> - *[self-insurance-kpi-app/build-electron.R at main · jimbrig/self-insurance-kpi-app · GitHub](https://github.com/jimbrig/self-insurance-kpi-app/blob/main/scripts/build-electron.R)*

## Installation

Code requires the `RInno` package.

Install it via:

```R
pak::pak("ficonsulting/RInno")
```

Also, [[../../Tools/Tool - Inno Setup|Inno Setup]] needs to be installed and on the System's `PATH`:

```R
require(RInno)

if (Sys.which("ISCC.exe") == "") {
  RInno::install_inno()
}
```

## Code

```R
require(RInno)
require(here)
require(installr)

libs <- c("shiny", 
		  "shinyjs",
          "shinyWidgets",
          "shinycssloaders",
          "purrr",
          "lubridate",
          "tibble",
          "dplyr",
          "highcharter",
          "stringr",
          "rintrojs",
          "DT",
          "knitr",
          "rmarkdown",
          "qs")

if (Sys.which("ISCC.exe") == "") {
  RInno::install_inno(quick_start_pack = TRUE)
}

RInno::create_app(
  app_name = "<Name of Application>",
  app_dir = here::here(),
  dir_out = "build",
  pkgs = libs,
  pkgs_path = "bin",
  repo = getOption("repo"),
  remotes = NULL,
  include_R = TRUE,
  R_version = .rs.rVersionString(),
  overwrite = TRUE
)

RInno::compile_iss()
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

*Note created on [[2024-09-23]] and last modified on [[2024-09-23]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[R - Build Electron Desktop App Installer for Shiny App]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/R/R - Build Electron Desktop App Installer for Shiny App"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024