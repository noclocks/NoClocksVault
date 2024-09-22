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
  - PowerShell PowerShell - Empty Recycle Bin Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Empty Recycle Bin PowerShell Code

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
Add-Type Shell32 @"
    [DllImport("shell32.dll")]
    public static extern int SHEmptyRecycleBin(
        IntPtr hwnd,
        string pszRootPath,
        int    dwFlags
    );
"@ -NameSpace System

$SHERB_NOCONFIRMATION = 0x1
$SHERB_NOPROGRESSUI   = 0x2
$SHERB_NOSOUND        = 0x4
$dwFlags              = $SHERB_NOCONFIRMATION
$res = [shell32]::SHEmptyRecycleBin([IntPtr]::Zero, $null, $dwFlags)
if ($res) { "Error 0x{0:x8}: {1}" -f $res,`
    (new-object ComponentModel.Win32Exception($res)).Message
}
exit $res
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
LIST FROM [[PowerShell - Empty Recycle Bin]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Empty Recycle Bin"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024