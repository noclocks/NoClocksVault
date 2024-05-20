---
creation_date: 2024-05-17
modification_date: 2024-05-17
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Registry
  - Topic/Dev
  - Topic/Dev/Windows
  - Status/WIP
aliases:
  - Disable Background Apps Registry Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Disable Background Apps Registry Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources
> - *[How to Disable Background Apps in Windows 11 - MajorGeeks](https://www.majorgeeks.com/content/page/disable_background_apps_11.html)*


## Code Snippets

To **Disable**:

```registry
Windows Registry Editor Version 5.00

; MajorGeeks.Com
; How to Disable Background Apps in Windows 11
; https://www.majorgeeks.com/content/page/disable_background_apps_11.html

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications]
"GlobalUserDisabled"=dword:00000001
```

To **Enable**:

```registry
Windows Registry Editor Version 5.00

; MajorGeeks.Com
; How to Disable Background Apps in Windows 11
; https://www.majorgeeks.com/content/page/disable_background_apps_11.html

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications]
"GlobalUserDisabled"=-
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

*Note created on [[2024-05-17]] and last modified on [[2024-05-17]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Registry - Disable Background Apps]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Registry/Registry - Disable Background Apps"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024