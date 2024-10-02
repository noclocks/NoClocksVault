---
creation_date: 2024-09-26
modification_date: 2024-09-26
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
  - Bash DNS Commands Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash DNS Commands Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## nslookup

```bash
# Ask NS for Domain.com IP (bypassing cache)
nslookup [domain.com] [ns server]

# Check Local IP Cache
nslookup [domain.com]

# See Debug Information (TLL, etc.)
nslookup -debug [domain.com]

# Clear DNS Cache
sudo apt-get install nscd
sudo /etc/init.d/nscd restart

# Clear DNS Cache (Windows)
ipconfig /flushdns
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

*Note created on [[2024-09-26]] and last modified on [[2024-09-26]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Bash - DNS Commands]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - DNS Commands"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024