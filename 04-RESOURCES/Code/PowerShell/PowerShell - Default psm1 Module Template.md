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
  - PowerShell PowerShell - Default psm1 Module Template Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Default psm1 Module Template PowerShell Code

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
# MyModule.psm1

$PublicDir = Join-Path $PSScriptRoot "Public"
$PrivateDir = Join-Path $PSScriptRoot "Private"
$Public = Get-ChildItem -Path "$PublicDir\*.ps1"
$Private = Get-ChildItem -Path "$PrivateDir\*.ps1"

@($Public + $Private) | ForEach-Object {
  try {
    . $_.FullName
  } catch {
    Write-Error -Message "Failed to import function $($_.FullName): $_"
  }
}

Export-ModuleMember -Function $Public.BaseName
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
LIST FROM [[PowerShell - Default psm1 Module Template]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Default psm1 Module Template"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024