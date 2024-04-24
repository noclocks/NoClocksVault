---
creation_date: 2024-04-24
modification_date: 2024-04-24
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Windows
  - Topic/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Windows Sandbox Development Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Windows Sandbox Development PowerShell Code

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
> - **

## Code Snippet

### InSandboxScript.ps1

> [!SOURCE] Sources:
> - *[winget-cli/tools/DevInSandbox/InSandboxScript.ps1 at master · microsoft/winget-cli](https://github.com/microsoft/winget-cli/blob/master/tools/DevInSandbox/InSandboxScript.ps1)*

- `InSandboxScript.ps1`:

```powershell
Param(
  [String[]] $DesktopAppInstallerDependencyPath
)

$ProgressPreference = 'SilentlyContinue'

$desktopPath = "C:\Users\WDAGUtilityAccount\Desktop"

Write-Host @"
--> Installing WinGet

"@

foreach($dependency in $DesktopAppInstallerDependencyPath)
{
  Write-Host @"
  ----> Installing $dependency
"@
  Add-AppxPackage -Path $dependency
}

Write-Host @"
  ----> Enabling dev mode
"@
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"

$devPackageManifestPath = Join-Path $desktopPath "DevPackage\AppxManifest.xml"
Write-Host @"
  ----> Installing $devPackageManifestPath
"@
Add-AppxPackage -Path $devPackageManifestPath -Register
```

### Launch-DevPackageInSandbox.ps1

> [!SOURCE] Sources:
> - *[winget-cli/tools/DevInSandbox/Launch-DevPackageInSandbox.ps1 at master · microsoft/winget-cli](https://github.com/microsoft/winget-cli/blob/master/tools/DevInSandbox/Launch-DevPackageInSandbox.ps1)*

```powershell


```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-04-24]] and last modified on [[2024-04-24]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Windows Sandbox Development]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Windows Sandbox Development"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024