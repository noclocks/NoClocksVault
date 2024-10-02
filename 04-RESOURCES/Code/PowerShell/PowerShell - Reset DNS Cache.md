---
creation_date: 2024-09-27
modification_date: 2024-09-27
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - Reset DNS Cache
  - Reset DNS Cache on Windows with PowerShell
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Reset DNS Cache on Windows with PowerShell

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

## Code Snippet

```powershell
ipconfig /flushdns
nbtstat -R
nbtstat -RR
netsh int reset all
netsh int ip reset
netsh winsock reset
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-09-27]] and last modified on [[2024-09-27]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[PowerShell - Reset DNS Cache]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Reset DNS Cache"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024