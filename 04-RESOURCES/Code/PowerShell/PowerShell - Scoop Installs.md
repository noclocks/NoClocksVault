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
  - PowerShell PowerShell - Scoop Installs Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Scoop Installs PowerShell Code

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
# Execution Policy
Set-ExecutionPolicy Unrestricted -Scope CurrentUser

# Install Scoop
if (!Get-Command scoop) {
  irm get-scoop.sh | iex
}

# Apps
$ScoopApps = @(
  '7zip'
  'bat'
  'cmake'
  'everything'
  'fd'
  'ffmpeg'
  'fzf'
  'gcc'
  'geekuninstaller'
)

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
LIST FROM [[PowerShell - Scoop Installs]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Scoop Installs"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024