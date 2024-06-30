---
creation_date: 2024-06-30
modification_date: 2024-06-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Bash
  - Type/Code/Shell
  - Topic/Dev
  - Topic/Dev/Linux
  - Topic/Dev/Bash
  - Topic/Dev/Shell
  - Topic/Dev/Windows
  - Status/WIP
aliases:
  - Bash Print Values of `$PATH` Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Print Values of `$PATH` Code

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
> - *[Print value of \`$PATH\` in readable format | Today I Learned](https://til.bhupesh.me/shell/print-value-of-path-readable-format)*

## Code Snippet

```bash
echo "${PATH//:/$'\n'}"
```

for [[Tool - Zsh|Zsh]]:

```bash
# for zsh omit the $ char
echo "${PATH//:/'\n'}"
```



## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code Snippets]]
- [[Linux]], [[Tool - Ubuntu|Ubuntu]], [[Tool - Kali Linux|Kali Linux]]
- [[Tool - Zsh|Zsh]]
- [[MOC - Development|Development Map of Content]]
- [[Tool - WSL|Windows Sub-System for Linux (WSL)]]

***

## Appendix

*Note created on [[2024-06-30]] and last modified on [[2024-06-30]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Bash - Print Values of `$PATH`]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Print Values of `$PATH`"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024