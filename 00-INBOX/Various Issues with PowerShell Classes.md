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

In [[PowerShell]], classes are implemented through compiling [[.NET]] to the [[Common Intermediate Language (CIL)|Intermediate Language (IL)]] so that it can take advantage of the [[.NET Object Model]]. Not doing this would mean having to re-invent and maintain all [[object-oriented]] features available in [[.NET]] and paying a high runtime overhead on shimming compatibility with the [[.NET]] object model (e.g. faking inheritance from [[.NET]] classes).

Instead, we compile PowerShell classes to dynamic assemblies and bake in calls to PowerShell in the generated IL. To do this at runtime would mean either breaking dynamic- and module-scoped behaviors in classes, or emitting a new dynamic assembly every time we hit a class definition (and since PowerShell's highest compilation unit is the script-block, and script-blocks are permitted in for-loops, the performance penalty here could be extreme). (I'm still a bit hazy on the details about the mechanisms here, especially in terms of why caching is made impossible by module scope or in comparison to `Add-Type`.

The need to compile classes at parse-time means the types required to define a class (in IL) must also be known at parse-time. The module-scoping issue means that a `using module` statement is required to import classes from modules, or by exporting class usage in PowerShell functions (classes having a sort of module-private behavior).

## Classes with Modules

**NEW**

```powershell
# Export Mdule Classes
[psobject].Assembly.GetType("System.Management.Automation.TypeAccelerators")::Add("PSUtils", [PSUtils])
```

I add that at the bottom of my module where I have a PSUtils class defined, and now everything works just the way I've always wanted. Import-Module and #Requires -Modules work as-is, and my code that requires the class available at parse time also works. No more slow and limited "using module" needed!

Obviously this is still just a workaround to missing functionality, but it seems to do everything I need in the meantime.

***

Currently, when classes are defined within a module the only mechanism to access them is via:

```powershell
using module ModuleName
[Foo]::new()
Get-Module ModuleName
```

or by adding the class where needed in-line via `Add-Type`:

```powershell
Add-Type
```

Classes cannot be exported as simply as other module members (i.e. public and private functions, cmdlets, variables, aliases, etc.).



## Improvements

**Classes in Modules**

- Inconsistent Behavior and Issues with Exporting
- Reloading classes in nested modules not updated via `Import-Module`
- `using module` statement
- 