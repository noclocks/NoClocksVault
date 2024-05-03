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
  - PowerShell PowerShell - Take Screenshots using all Active Monitors Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Take Screenshots using all Active Monitors PowerShell Code

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
> - *[Capture Screenshot of All Monitors](https://gist.github.com/csdy/915a4734a310ab0d2054f984f8140c65)*

## Code Snippet

```powershell
[Reflection.Assembly]::LoadWithPartialName("System.Drawing")

function CaptureScreenshot([Drawing.Rectangle]$Bounds, $Path) {
    # Initialize image
    $Image    = New-Object Drawing.Bitmap $Bounds.Width, $Bounds.Height
    $Graphics = [Drawing.Graphics]::FromImage($Image)
    $Graphics.CopyFromScreen($Bounds.Location, [Drawing.Point]::Empty, $Bounds.Size)

    # Save screenshot
    $Image.Save($Path)

    # Cleanup
    $Graphics.Dispose()
    $Image.Dispose()
}

# Initialize path
$BasePath = "C:\screenshots"
if (-not (Test-Path -Path $BasePath -PathType Container)) {
    New-Item -Path $BasePath -ItemType Directory -Force
}

# Get monitors
Add-Type -AssemblyName System.Windows.Forms
$Screens = [System.Windows.Forms.Screen]::AllScreens

# Capture monitors
$DateTime = Get-Date -Format yyyyMMddHHmmss
for ($i = 0; $i -lt $Screens.Length; $i++) {
    # Initialize screenshot
    $Screen   = $Screens[$i]
    $Left     = $Screen.Bounds.X
    $Top      = $Screen.Bounds.Y
    $Right    = $Screen.Bounds.X + $Screen.Bounds.Width
    $Bottom   = $Screen.Bounds.Y + $Screen.Bounds.Height
    $Bounds   = [Drawing.Rectangle]::FromLTRB($Left, $Top, $Right, $Bottom)
    $FileName = "${BasePath}\${DateTime}_${i}.png"
    # Capture screenshot
    CaptureScreenshot $Bounds $FileName
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

*Note created on [[2024-05-03]] and last modified on [[2024-05-03]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Take Screenshots using all Active Monitors]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Take Screenshots using all Active Monitors"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024