---
creation_date: 2024-09-18
modification_date: 2024-09-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Registry
  - Topic/Dev
  - Topic/Dev/Windows
  - Status/WIP
aliases:
  - Set Dark Theme Registry Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Set Dark Theme Registry Code

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

```registry
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize]
"ColorPrevalence"=dword:00000000
"EnableTransparency"=dword:00000001
"AppsUseLightTheme"=dword:00000000
"SystemUsesLightTheme"=dword:00000000
```

Using `cmd`:

```cmd
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f
pause
```

## Details

> [!NOTE] About
> This note is about ...

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

*Note created on [[2024-09-18]] and last modified on [[2024-09-18]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Registry - Set Dark Theme]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Registry/Registry - Set Dark Theme"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024