---
creation_date: 2024-09-18
modification_date: 2024-09-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Review Explorer Recent Items Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Review Explorer Recent Items PowerShell Code

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
# Create Shell Object
$sh = New-Object -ComObject WScript.Shell

# Specify Path
$RecentItemsPath = "$Env:APPDATA\Roaming\Microsoft\Windows\Recent"

# Get Recent Items
$RecentItems = Get-ChildItem -Path $RecentItemsPath -Filter "*.lnk" | 
    Sort-Object LastAccessTime

# Loop and Output
$RecentItems | ForEach-Object {
    $lnk = $sh.CreateShortcut($_.FullName)
    $tgt = $lnk.TargetPath
    if ($tgt) {
        if (Test-Path -Path $tgt -PathType Leaf) {
            Write-Host "$($_.LastAccessTime.ToString('yyyy-MM-dd HH:mm:ss'))   $($lnk.TargetPath)"
        }
    }
}
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-09-18]] and last modified on [[2024-09-18]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[PowerShell - Review Explorer Recent Items]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Review Explorer Recent Items"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024