---
creation_date: 2024-08-22
modification_date: 2024-08-22
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code/R
  - Topic/Dev/R
  - Status/WIP
aliases:
  - Generate Package HexSticker R Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Generate Package HexSticker R Code

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
library(sysfonts)
library(showtext)
library(magick)
library(hexSticker)
library(hexmake)

font_add_google("<Font Name>", "<Font Family>")
showtext::showtext_auto()

magick::image_read("<path/to/image.png>") |>
  magick::image_modulate(breightness = 40) |>
  magick::image_write("<path/to/new-image.png>")

hexSticker::sticker(
  "<path/to/new-image.png>",
  package = "<Package Name>",
  p_size=20,
  s_x=1,
  s_y=1,
  s_width=2,
  s_height=2,
  p_y = 0.55,
  p_color = "#d6ccc2",
  p_fontface = "bold",
  p_family = "ant",
  h_color = "#d6ccc2",
  h_size = 2,
  filename="man/figures/hex.png")
)



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
LIST FROM [[R - Generate Package HexSticker]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/R/R - Generate Package HexSticker"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024