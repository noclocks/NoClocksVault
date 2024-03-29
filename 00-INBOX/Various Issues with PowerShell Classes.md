---
creation_date: 2024-03-29
modification_date: 2024-03-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - Various Issues with PowerShell Classes
publish: true
permalink:
description:
image:
cssclasses:
---

# Issues with PowerShell Classes

> [!SOURCE] Sources:
> - *[Fix Various PowerShell Class Issues · Issue #6652 · PowerShell/PowerShell (github.com)](https://github.com/PowerShell/PowerShell/issues/6652)*
> - 

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE]
> [[PowerShell]] classes have been a finnicky feature of the language, and this not serves the purpose of identifying some of the primary issues and pain points with them.

In [[PowerShell]], classes are implemented through compiling [[.NET]] to the [[Common Intermediate Language (CIL)|Intermediate Language (IL)]] so that it can take advantage of the [[.NET Object Model]]. Not doing this would mean having to re-invent and maintain all [[object-oriented]] features available in [[.NET]] 