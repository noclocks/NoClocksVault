---
creation_date: 2024-08-11
modification_date: 2024-08-11
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Bash
  - Type/Code/Shell
  - Topic/Dev
  - Topic/Dev/Linux
  - Topic/Dev/Bash
  - Topic/Dev/Shell
  - Topic/Dev/Web
  - Status/WIP
aliases:
  - Make Web Icons Bash Code
  - Make Web Icons
  - make-web-icons.sh
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Make Web Icons Code

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
> - *[aaronsnoswell/make-web-icons: A script for generating apple-touch and favicons for websites (github.com)](https://github.com/aaronsnoswell/make-web-icons)*

## Code Snippet

```bash
#!/usr/bin/env bash

convert $1 -resize 114x114 apple-touch-icon-114x114-precomposed.png
convert $1 -resize 72x72 apple-touch-icon-72x72-precomposed.png
convert $1 -resize 57x57 apple-touch-icon-57x57-precomposed.png
cp apple-touch-icon-57x57-precomposed.png apple-touch-icon-precomposed.png
cp apple-touch-icon-57x57-precomposed.png apple-touch-icon.png

convert $1 -resize 16x16 favicon.ico
```

Usage:

```bash
./make-web-icons.sh logo.png
```

## Details

> [!WARNING] Requirements
> The Script depends on [[Tool - ImageMagick|ImageMagick]] for the `convert` command.



## See Also

- [[JS - Make Web Icons|Make Web Icons JavaScript Code]]

- [[04-RESOURCES/Code/Bash/_README|Bash Code Snippets]]
- [[Linux]], [[Tool - Ubuntu|Ubuntu]], [[Tool - Kali Linux|Kali Linux]]
- [[Tool - Zsh|Zsh]]
- [[MOC - Development|Development Map of Content]]
- [[Tool - WSL|Windows Sub-System for Linux (WSL)]]

***

## Appendix

*Note created on [[2024-08-11]] and last modified on [[2024-08-11]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Bash - Make Web Icons]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Make Web Icons"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024