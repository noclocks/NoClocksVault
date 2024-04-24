---
creation_date: 2024-04-24
modification_date: 2024-04-24
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Windows
  - Topic/Dev
  - Status/WIP
aliases:
  - Microsoft Standard Installer Command Line Options
publish: true
permalink:
description:
image:
cssclasses:
---


# Microsoft Standard Installer Command Line Options

> [!SOURCE] Sources:
> - *[Microsoft Standard Installer command-line options - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/msi/standard-installer-command-line-options)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

This article describes standard command-line options for the Microsoft Standard Installer `msiexec.exe`, the app you use to interpret packages and install products.

Command-line options are case insensitive.

`Msiexec` sets and returns an error level that corresponds to [system error codes](https://learn.microsoft.com/en-us/windows/win32/debug/system-error-codes).

> []