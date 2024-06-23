---
creation_date: 2024-06-23
modification_date: 2024-06-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code/R
  - Topic/Dev/R
  - Status/WIP
aliases:
  - Excel Helpers R Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Excel Helpers R Code

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
> - *[Excel Tool to R-Shiny App (kotamine.github.io)](https://kotamine.github.io/excel_shiny/tips-from-excel-tool-to-shiny.html)*

## Packages

- [[Tool - R openxlsx|openxlsx]]: Read and manage Excel workbook data
- [[Tool - R readxl|readxl]]: Read and manage Excel workbook data
- [[Tool - R writexl|writexl]]: Write to excel
- [[Tool - R tidyxl|tidyxl]]: Read untidy excel files
- [[Tool - R cellranger|cellranger]]:
- [[Tool - R unpivotr|unpivotr]]:
- [[Tool - R XLConnect|XLConnect]]
- [[Tool - R readxlsb|readxlsb]]
- [[Tool - R flexlsx|flexlsx]]
- [[Tool - R joinXL|joinXL]]
- [[Tool - R knitxl]]: Knits (generates) excel spreadsheets from an [[R Markdown]] file
- [[Tool - R tablexlsx|tablexlsx]]
- [[Tool - R rio|rio]]
- [[Tool - R janitor|janitor]]
- [[Tool - R excelR|excelR]]
- [[Tool - R excel.link|excel.link]]
- [[Tool - R exceldata|exceldata]]
- [[Tool - R xlsx|xlsx]]
- [[Tool - R ExcelFunctionsR|ExcelFunctionsR]]
- [[Tool - R xlcharts|xlcharts]]

and other general purpose data analysis and processing libraries such as [[Tool - R Tidyverse|Tidyvers]] ([[Tool - R dplyr|dplyr]], [[Tool - R tidyr|tidyr]], [[Tool - R purrr|purrr]], etc.)

## Code Examples

### General Purpose Excel Reader

- `read_xl`:

```R
read_xl <- function(
  xl_file,
  xl_sheet,
  num_rows,
  ...
) {

  tryCatch({
    readxl::read_excel(
      xl_file,
      sheet = xl_sheet,
      n_max = if (num_rows > 0) { num_rows } else { Inf },
      col_names = FALSE,
      col_types = 'text',
      .name_repair = 'minimal'
  }, error = function(e) {
    rlang::abort("Error reading excel file: {xl_file}: {e}")
  })
  
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
LIST FROM [[R - Excel Helpers]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/R/R - Excel Helpers"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024