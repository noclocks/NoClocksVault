---
creation_date: 2024-09-23
modification_date: 2024-09-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Take Ownership of a Folder Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Take Ownership of a Folder PowerShell Code

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

> [!TIP] See Also:
> - [[CMD - Take Ownership of a Folder]]
> - [[Registry - Add Take Ownership to Explorer Context Menu]]

## Code Snippet

Leveraging CMD's `takeown` command to take ownership of the `%PROGRAMFILES%\WindowsApps` Folder:

```powershell
sudo takeown /f "$Env:PROGRAMFILES\WindowsApps" /r
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-09-23]] and last modified on [[2024-09-23]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[PowerShell - Take Ownership of a Folder]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Take Ownership of a Folder"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024