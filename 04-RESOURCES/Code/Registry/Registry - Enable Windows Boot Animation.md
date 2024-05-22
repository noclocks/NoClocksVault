---
creation_date: 2024-05-20
modification_date: 2024-05-20
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Registry
  - Topic/Dev
  - Topic/Dev/Windows
  - Status/WIP
aliases:
  - Enable Windows Boot Animation Registry Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Enable Windows Boot Animation Registry Code

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
> - *[How to Enable New Boot Animation in Windows 11 (winaero.com)](https://winaero.com/how-to-enable-new-boot-animation-in-windows-11/)*

![](https://i.imgur.com/EjOrqlF.png)


## Code Snippets

- `Enable_Windows_10X_Boot_Logo.reg`:

```registry
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\BootControl]
"BootProgressAnimation"=dword:00000001
```

- `Disable_Windows_10X_Boot_Logo.reg`:

```registry
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\BootControl]
"BootProgressAnimation"=-
```

## Details

- Registry Key Path: `HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control`
- Registry Key Name: `BootControl`
- Registry Key Value Type: `DWORD (32-bit)`
- Registry Key Value Name: `BootProgressAnimation`
- Registry Key Value: `1` (or `0` to reset)

## See Also

- [[04-RESOURCES/Code/Registry/_README|Windows Registry Code Snippets]]
- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[04-RESOURCES/Code/Cmd/_README|Command Line Code]]
- [[Tool - Microsoft Windows]]
- [[MOC - Development|Development Map of Content]]
- [[MOC - Technology|Technology Map of Content]]
- [[MOC - Computer Science|Computer Science Map of Content]]


***

## Appendix

*Note created on [[2024-05-20]] and last modified on [[2024-05-20]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Registry - Enable Windows Boot Animation]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Registry/Registry - Enable Windows Boot Animation"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024