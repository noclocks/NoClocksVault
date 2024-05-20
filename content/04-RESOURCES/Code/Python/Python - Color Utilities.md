---
creation_date: 2024-05-01
modification_date: 2024-05-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Python
  - Status/WIP
aliases:
  - Color Utilities Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Color Utilities Python Code

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
> - *[futino/scripts/color\_utils.py at alpha · Futino/futino](https://github.com/Futino/futino/blob/alpha/scripts/color_utils.py)*

## Code

The code defines the following functions:

- `hex_to_rgb`
- `rgb_to_hsl`
- `hsl_to_rgb`
- `hsl_to_255rgb`
- `generate_tonal_palette`
- `rgb_to_normalized`
- `remove_light_dark`
- `format_css`

### Conversions


```python
import re
import colorsys

def hex_to_rgb(hex_color):
    # Remove the '#' character if present
    hex_color = hex_color.lstrip('#')
    
    # Check if the hex_color is in a valid format (either 3 or 6 characters)
    if len(hex_color) != 3 and len(hex_color) != 6:
        raise ValueError("Invalid hex color format. It should be either 3 or 6 characters long.")

    # If the hex_color is 3 characters long, expand it to 6 characters
    if len(hex_color) == 3:
        hex_color = ''.join([c * 2 for c in hex_color])

    # Convert hex values to integers for red, green, and blue
    r = int(hex_color[0:2], 16)
    g = int(hex_color[2:4], 16)
    b = int(hex_color[4:6], 16)

    return r, g, b


def rgb_to_hsl(rgb):
    r,g,b = rgb
    r /= 255
    g /= 255
    b /= 255
    h,l,s = colorsys.rgb_to_hls(r,g,b)
    return { h,s,l }


def hsl_to_255rgb(hsl):
    h,s,l = hsl
    r,g,b = colorsys.hls_to_rgb(h,l,s)
    return round(r*255),round(g*255),round(b*255)


def hsl_to_rgb(hsl):
    h,s,l = hsl
    r,g,b = colorsys.hls_to_rgb(h,l,s)
    return r,g,b


def rgb_to_normalized(rgb):
    r,g,b = rgb
    r/=255
    g/=255
    b/=255
    return r,g,b
```

### Formatters

```python
def format_css(file_path):
    with open(file_path, 'r') as file:
            content = file.read()

    # Remove brackets and commas
    content = content.replace('(', '').replace(')', '').replace(',', '')

    with open(file_path, 'w') as file:
        file.write(content)

    print(f'{file_path} has been formatted to fit tailwinds standards.')
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python]]
- [[Tool - Python Flask]]


***

## Appendix

*Note created on [[2024-05-01]] and last modified on [[2024-05-01]].*

### Backlinks

```dataview
LIST FROM [[Python - Color Utilities]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Color Utilities"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024