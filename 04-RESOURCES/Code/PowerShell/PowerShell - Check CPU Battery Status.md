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
  - PowerShell PowerShell - Check CPU Battery Status Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Check CPU Battery Status PowerShell Code

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
$b = get-cimInstance Win32_Battery

$batteryStatus =( @{
    1 = 'Discharging'
    2 = 'Connected to AC' # 'Unknown'
    3 = 'Fully charged'
    4 = 'Low'
    5 = 'Critical'
    6 = 'Charging'
    7 = 'Charging/High'
    8 = 'Charging/Low'
    9 = 'Charging/Critical'
   10 = 'Undefined'
   11 = 'Partially Charged'
}
)[ $b.batteryStatus -as [int] ]


"$($b.caption) $($b.name): $($b.status)"
"  Status:              $batteryStatus ($($b.batteryStatus))"
"  Charged:             $($b.estimatedChargeRemaining) %"

if ($b.timeToFullCharge) {
"  Time to full charge: $($b.timeToFullCharge) Minutes"
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
LIST FROM [[PowerShell - Check CPU Battery Status]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Check CPU Battery Status"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024