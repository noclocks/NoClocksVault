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
  - Add Windows Terminal Context Menu Registry Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Add Windows Terminal Context Menu Registry Code

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
> - *https://www.majorgeeks.com/content/page/open_in_windows_terminal.html*

## Code Snippet

- **Add**: Context Menu to open [[Tool - Windows Terminal|Windows Terminal]] for **All Users**:

```registry
Windows Registry Editor Version 5.00

; MajorGeeks.Com
; Add or Remove 'Open in Windows Terminal' in Windows 11
; https://www.majorgeeks.com/content/page/open_in_windows_terminal.html

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked]
"{9F156763-7844-4DC4-B2B1-901F640F5155}"=-
```

- **Remove**: Context Menu to open [[Tool - Windows Terminal|Windows Terminal]] for **All Users**:

```registry
Windows Registry Editor Version 5.00

; MajorGeeks.Com
; Add or Remove 'Open in Windows Terminal' in Windows 11
; https://www.majorgeeks.com/content/page/open_in_windows_terminal.html

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked]
"{9F156763-7844-4DC4-B2B1-901F640F5155}"=""
```

- **Add**: Context Menu to open [[Tool - Windows Terminal|Windows Terminal]] for **Current User**:

```registry
Windows Registry Editor Version 5.00

; MajorGeeks.Com
; Add or Remove 'Open in Windows Terminal' in Windows 11
; https://www.majorgeeks.com/content/page/open_in_windows_terminal.html

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked]
"{9F156763-7844-4DC4-B2B1-901F640F5155}"=-
```

- **Remove**: Context Menu to open [[Tool - Windows Terminal|Windows Terminal]] for **Current User**:

```registry
Windows Registry Editor Version 5.00

; MajorGeeks.Com
; Add or Remove 'Open in Windows Terminal' in Windows 11
; https://www.majorgeeks.com/content/page/open_in_windows_terminal.html

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked]
"{9F156763-7844-4DC4-B2B1-901F640F5155}"=""
```

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
LIST FROM [[Registry - Add Windows Terminal Context Menu]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Registry/Registry - Add Windows Terminal Context Menu"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024