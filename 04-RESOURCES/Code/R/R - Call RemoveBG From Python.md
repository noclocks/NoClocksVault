---
creation_date: 2024-08-22
modification_date: 2024-08-22
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code/R
  - Topic/Dev/R
  - Status/WIP
aliases:
  - Call RemoveBG From Python R Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Call RemoveBG From Python R Code

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
> - *[cropcircles/dev/scripts/run-removebg.R at main · doehm/cropcircles (github.com)](https://github.com/doehm/cropcircles/blob/main/dev/scripts/run-removebg.R)*

## Code

```R
# remove bg ---------------------------------------------------------------

library(reticulate)

# only takes png or jpg
# can be a vector of images paths
# must be stored in 'images'
images <- "/path/to/the/images.png"

# the output path of the new image with background removed
# must be same length as 'images'
# must be stored in 'to'
to <- "/path/to/write/the/new/image.png"

# your api key from https://www.remove.bg/
api_key <- "your_api_key"

# run the python script
# this will call the removebg api for each image
py_run_file("dev/scripts/removebg.py")
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

*Note created on [[2024-08-22]] and last modified on [[2024-08-22]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[R - Call RemoveBG From Python]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/R/R - Call RemoveBG From Python"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024