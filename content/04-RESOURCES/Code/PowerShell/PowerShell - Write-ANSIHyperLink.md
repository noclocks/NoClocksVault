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
  - PowerShell PowerShell - Write-ANSIHyperLink Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Write-ANSIHyperLink PowerShell Code

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
function Write-AnsiHyperlink {
<#
.SYNOPSIS
Creates an ANSI Hyperlink in a supported terminal such as Windows Terminal 1.4
#>
    [CmdletBinding()]
    param(
        #The Uri that you wish to have as part of the hyperlink
        [Parameter(Mandatory,ValueFromPipeline)][UriBuilder]$Uri,
        #The label text that will actually be shown in Windows Terminal
        [ValidateNotNullOrEmpty()][String]$Label = $Uri.uri
    )

    if ($PSVersionTable.PSVersion -lt '6.0.0') {
        $e = [char]27
    } else {
        $e = "`e"
    }

    "${e}]8;;{0}${e}`\{1}${e}]8;;${e}`\" -f $Uri.uri,$Label
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
LIST FROM [[PowerShell - Write-ANSIHyperLink]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Write-ANSIHyperLink"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024