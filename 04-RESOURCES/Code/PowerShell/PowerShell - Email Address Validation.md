---
creation_date: 2024-05-20
modification_date: 2024-05-20
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Email Address Validation Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Email Address Validation PowerShell Code

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
> - *[How to validate email addresses in Powershell (check-mail.org)](https://check-mail.org/sample-code/validate-email-and-block-disposable-email-in-powershell/)*

## Code Snippet

*Using `Invoke-RestMethod`:*

```powershell
$headers=@{}
$headers.Add("x-rapidapi-host", "mailcheck.p.rapidapi.com")
$headers.Add("x-rapidapi-key", "YOUR-API-KEY")
$response = Invoke-RestMethod -Uri 'https://mailcheck.p.rapidapi.com/?domain=EMAIL-OR-DOMAIN' -Method GET -Headers $headers
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-05-20]] and last modified on [[2024-05-20]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[PowerShell - Email Address Validation]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Email Address Validation"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024