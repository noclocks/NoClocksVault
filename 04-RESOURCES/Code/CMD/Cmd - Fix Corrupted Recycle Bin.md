---
creation_date: 2024-04-30
modification_date: 2024-04-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Cmd
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/Cmd
  - Status/WIP
aliases:
  - Fix Corrupted Recycle Bin
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Fix Corrupted Recycle Bin

> [!SOURCE] Sources:
> - *[Recycle bin not emptying - Microsoft Community](https://answers.microsoft.com/en-us/windows/forum/all/recycle-bin-not-emptying/404e6fbc-3647-403e-84a1-b53821b119a6)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!ABOUT]
> Use this code to fix a corrupted recycle bin in a [[Microsoft Windows]] machine.

## Code

```powershell
# cmd as admin
rd /s /q "C:\$Recycle.bin"
```

## See Also

- [[04-RESOURCES/Code/CMD/_README|Command Line Code]]
- [[Microsoft Windows]]
- [[Batch Scripts]]
- [[MOC - Development|Development Map of Content]]
- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[Tool - Windows Terminal|Windows Terminal]]
- [[Cheatsheet - Windows CMD|Windows CMD Commands]]

***

## Appendix

*Note created on [[2024-04-30]] and last modified on [[2024-04-30]].*

### Backlinks

```dataview
LIST FROM [[Cmd - Fix Corrupted Recycle Bin]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CMD/Cmd - Fix Corrupted Recycle Bin"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024