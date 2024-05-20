---
creation_date: 2024-05-03
modification_date: 2024-05-03
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Create Desktop Shortcut Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Create Desktop Shortcut PowerShell Code

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
$TargetFile = "$Env:SYSTEMROOT\System32\notepad.exe"
$ShortcutFile = "$Env:Public\Desktop\Notepad.lnk"
$Wsh = New-Object -ComObject WScript.Shell
$Shortcut = $Wsh.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-05-03]] and last modified on [[2024-05-03]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Create Desktop Shortcut]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Create Desktop Shortcut"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024