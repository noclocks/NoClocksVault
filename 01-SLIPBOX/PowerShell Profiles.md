---
creation_date: 2024-05-17
modification_date: 2024-05-17
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev
  - Topic/Dev/PowerShell
  - Topic/Dev/Windows
  - Status/WIP
aliases:
  - PowerShell Profile
publish: true
permalink:
description:
image:
cssclasses:
---


# PowerShell Profiles

> [!SOURCE] Sources:
> - **

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

| PowerShell Version | Profile | Path | Usage |
| :--: | :-----: | :----: | :--: |
| Windows PowerShell 1.0 | All Users All Hosts | `%WINDIR%\system32\WindowsPowerShell\v1.0\profile.ps1` | Use for Windows PowerShell Version 1 Machine Wide Profile |
| Windows PowerShell 1.0 | All Users Current Host | `%WINDIR%\system32\WindowsPowerShell\v1.0\Microsoft.PowerShell_profile.ps1` |  |
| Windows PowerShell 1.0 | Current User All Hosts | `%USERPROFILE%\Documents\WindowsPowerShell\profile.ps1` |  |
| Windows PowerShell 1.0 | Current User Current Host | `%USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1` |  |
| PowerShell Core | All Users All Hosts | `%PROGRAMFILES%\PowerShell\7\profile.ps1` |  |
| PowerShell Core | All Users Current Host | `%PROGRAMFILES%\PowerShell\7\Microsoft.PowerShell_profile.ps1` | Use for Windows PowerShell Version 1 Machine Wide Profile |
| PowerShell Core | Current User All Hosts | `%USERPROFILE%\Documents\PowerShell\profile.ps1` | Use for Windows PowerShell Version 1 Machine Wide Profile |
| PowerShell Core | Current User Current Host | `%USERPROFILE%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1` | Use for Windows PowerShell Version 1 Machine Wide Profile |
| PowerShell Core (Preview) | All Users All Hosts | `%PROGRAMFILES%\PowerShell\7-preview\profile.ps1` | Use for Windows PowerShell Version 1 Machine Wide Profile |
| PowerShell Core (Preview) | All Users Current Host | `%PROGRAMFILES%\PowerShell\7-preview\Microsoft.PowerShell_profile.ps1` | Use for Windows PowerShell Version 1 Machine Wide Profile |

***

## Appendix

*Note created on [[2024-05-17]] and last modified on [[2024-05-17]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]
- [[Cheatsheet - Windows CMD|Windows CMD]]

### Backlinks

```dataview
LIST FROM [[PowerShell Profiles]] AND -"CHANGELOG" AND -"01-SLIPBOX/PowerShell Profiles"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024