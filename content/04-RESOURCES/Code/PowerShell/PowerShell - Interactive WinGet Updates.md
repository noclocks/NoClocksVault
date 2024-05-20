---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - Interactive WinGet Updates PowerShell Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Interactive WinGet Updates PowerShell Code

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
> - *[jdhitsolutions/WingetTools: A set of PowerShell tools for working with the winget package manager.](https://github.com/jdhitsolutions/WingetTools)*
> - *[WingetTools/docs/Get-WGUpgrade.md at main · jdhitsolutions/WingetTools](https://github.com/jdhitsolutions/WingetTools/blob/main/docs/Get-WGUpgrade.md)*
> - **

This note showcases using the [[PowerShell]] Module [[Tool - PowerShell WingetTools|WingetTools]] by [[jdhitsolutions]] to implement an interactive way to display upgradeable [[Tool - WinGet|WinGet]] packages on a [[Tool - Microsoft Windows|Windows]] machine, select the packages to update/upgrade, and invoke the updates.

## Code Snippets

Dependencies:
- `WinGet` and `PowerShell` (Core)
- `PowerShellGet` or `PSResourceGet`
- `Microsoft.PowerShell.ConsoleGuiTools` for `Out-ConsoleGridView` Function
- `WingetTools` Module

### Installation

Install from the [[Tool - PowerShell Gallery|PowerShell Gallery]] using a method from below.

Installation Methods:

- Installation via [[Tool - PowerShell PowerShellGet|PowerShellGet]]
- Installation via [[Tool - Powershell PSResourceGet|PSResourceGet]]

```powershell
# Install via PowerShellGet
Install-Module WingetTools -Scope CurrentUser -Force

# Install via PSResourceGet
Install-PSResource WingetTools -Scope CurrentUser -Force

# Import into Current Session
Import-Module WingetTools

# Test Getting Help for a Function
Get-Help Get-WGUpgrade -Full
```

### Usage

```powershell
#Requires -RunAsAdministrator
Get-WGUpgrade | Out-ConsoleGridView -OutputMode Multiple | Invoke-WGUpgrade
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Interactive WinGet Updates]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Interactive WinGet Updates"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024