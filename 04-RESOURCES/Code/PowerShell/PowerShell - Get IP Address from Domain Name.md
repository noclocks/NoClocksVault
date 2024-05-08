---
creation_date: 2024-05-08
modification_date: 2024-05-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Get IP Address from Domain Name Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Get IP Address from Domain Name PowerShell Code

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
[System.Net.Dns]::GetHostAddresses('noclocks.dev').IPAddressToString
```

to 

## Details

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]
- [[PowerShell - Get Email DNS Records]]

***

## Appendix

*Note created on [[2024-05-08]] and last modified on [[2024-05-08]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Get IP Address from Domain Name]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Get IP Address from Domain Name"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024