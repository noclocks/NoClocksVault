---
creation_date: 2024-05-09
modification_date: 2024-05-09
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - PowerShell Naming Conventions
publish: true
permalink:
description:
image:
cssclasses:
---


# PowerShell Naming Conventions

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

## Overview

## Powershell object name
| Object    | Verb-Noun | Notation              | Length | Plural| Prefix | Suffix | Example             |
|-----------|-----------|-----------------------|--------|-------|--------|--------|---------------------|
| Cmdlet    | Yes       | PascalCase (for Noun) | 50     | No    | Yes    | No     | Import-PREFIXModule |
| Function  | Yes       | PascalCase (for Noun) | 50     | No    | Yes    | No     | Get-PREFIXDbRecord  |
| Parameter | No        | PascalCase            | 30     | No    | No     | No     | MyParameter         |


## Useful Links
 - [MSDN Development Guidelines]
 - [MSDN Approved Verbs]

[MSDN Development Guidelines]:https://msdn.microsoft.com/en-us/library/dd878270%28v=vs.85%29.aspx
[MSDN Approved Verbs]:https://msdn.microsoft.com/en-us/library/ms714428%28v=vs.85%29.aspx

## Resources

***

## Appendix

*Note created on [[2024-05-09]] and last modified on [[2024-05-09]].*

### Backlinks

```dataview
LIST FROM [[PowerShell Naming Conventions]] AND -"CHANGELOG" AND -"//PowerShell Naming Conventions"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024