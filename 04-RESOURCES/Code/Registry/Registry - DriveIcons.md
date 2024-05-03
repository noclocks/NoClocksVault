---
creation_date: 2024-05-03
modification_date: 2024-05-03
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Registry
  - Topic/Dev
  - Topic/Dev/Windows
  - Status/WIP
aliases:
  - Windows Drive Icons
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Windows Drive Icons Registry Code

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

> [!TIP]
> - The registry path is located at: `HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons`
> - Keys for each drive are nested under that path with an additional sub-key (folder) named `DefaultIcon`
> - Within the `DriveIcons\<DriveLetter>\DefaultIcon\` key the `(Default)` key value is defined as a *quoted absolute path to the `ICO` icon file on the hard drive.*

```registry
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons]

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons\D]

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons\E]

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons\U]

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons\U\DefaultIcon]
@="\"C:\\Icons\\ubuntu.ico\""

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons\X]

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons\X\DefaultIcon]
@="\"C:\\Icons\\dev.ico\""

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons\Z]
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/Registry/_README|Windows Registry Code Snippets]]
- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[04-RESOURCES/Code/Cmd/_README|Command Line Code]]
- [[Microsoft Windows]]
- [[MOC - Development|Development Map of Content]]
- [[MOC - Technology|Technology Map of Content]]
- [[MOC - Computer Science|Computer Science Map of Content]]


***

## Appendix

*Note created on [[2024-05-03]] and last modified on [[2024-05-03]].*

### Backlinks

```dataview
LIST FROM [[Registry - DriveIcons]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Registry/Registry - DriveIcons"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024