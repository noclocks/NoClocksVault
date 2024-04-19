---
creation_date: 2024-04-19
modification_date: 2024-04-19
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Windows
  - Topic/PowerShell
  - Status/Complete
aliases:
  - Get Active Window Titles PowerShell Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Get Active Window Titles PowerShell Code

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - *[How to get window title in windows from shell - Super User](https://superuser.com/questions/378790/how-to-get-window-title-in-windows-from-shell)*

## Code Snippet

- One-Liner:

```powershell
# One-Liner:
Get-Process | Where-Object { $_.MainWindowTitle } | Format-Table Id, Name, MainWindowtitle -AutoSize
```

- Retrieve Only the Window Title:

```powershell
(Get-Process -id 8748 -ErrorAction SilentlyContinue).MainWindowTitle
```

- Script:

```powershell
<#
  .SYNOPSIS
    Gets a List of Active Application Window's ID, Name, and MainWindowTitle
#>
[CmdLetBinding()]
Param()

Begin {
  $Processes = Get-Process | Where-Object { $_.MainWindowTitle }
}

Process {
  $Processes | Format-Table Id, Name, MainWindowTitle -AutoSize
}

End {}
```

## Details


## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-04-19]] and last modified on [[2024-04-19]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Get Active Window Titles]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Get Active Window Titles"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024