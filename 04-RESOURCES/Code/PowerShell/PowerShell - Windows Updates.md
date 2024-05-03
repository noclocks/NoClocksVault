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
  - PowerShell PowerShell - Windows Updates Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Windows Updates PowerShell Code

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
#Requires -RunAsAdministrator

# Transcript
$TranscriptFile = "$((Get-Date).ToString('yyyy-MM-dd-HHmmss'))-Scoop.log"
$TranscriptPath = Join-Path "$Env:TEMP\Scoop\$TranscriptFile"
Start-Transcript -Path $TranscriptPath -ErrorAction Ignore | Out-Null

# Execution Policy
Set-ExecutionPolicy Unrestricted -Scope CurrentUser

# PSWindowsUpdate
if (!(Get-PSResource -Name PSWindowsUpdate)) {
  Write-Verbose "Installing Module: PSWindowsUpdate..."
  Install-PSResource -Name PSWindowsUpdate -Scope CurrentUser -Force
  Import-Module PSWindowsUpdate
}

# Install Updates


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
LIST FROM [[PowerShell - Windows Updates]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Windows Updates"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024