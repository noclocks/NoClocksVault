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
  - Bash Get Lines of Text Between Two Words Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Get Lines of Text Between Two Words Code

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
> - *[Print lines between 2 words | Today I Learned](https://til.bhupesh.me/shell/print-lines-between-two-words)*

You may arrive in a situation where you may want to "extract" out text between two words. For example to view the latest changelog (where `x.x.x` is the latest version) in a [CHANGELOG.md](https://github.com/Bhupesh-V/dotman/blob/master/CHANGELOG.md) file.

## Code

### Using `sed`

> `sed -e '1d;$d'` removes the first & last line.

```bash
sed -n -e '/x.x.x/,/0.1.0/ p' CHANGELOG.md | sed -e '1d;$d'
```

### Using `awk`

```bash
awk '/x.x.x/,/0.1.0/' CHANGELOG.md | awk 'NR>2 {print last} {last=$0}'
```

> `awk 'NR>2 {print last} {last=$0}'` removes the first & last line.

> [!NOTE]
> `NR` means which Line number is being processed

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
LIST FROM [[Bash - Get Lines of Text Between Two Words]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Get Lines of Text Between Two Words"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024