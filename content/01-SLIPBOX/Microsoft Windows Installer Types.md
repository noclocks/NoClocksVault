---
creation_date: 2024-05-17
modification_date: 2024-05-17
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev/Windows
  - Status/Complete
aliases:
  - Windows Installer Types
publish: true
permalink:
description:
image:
cssclasses:
---

# Microsoft Windows Installer Types

> [!SOURCE] Sources:
> - *[Install a winget app with custom arguments and command line switches (winaero.com)](https://winaero.com/install-a-winget-app-with-custom-arguments-and-command-line-switches/)*
> - *[Inno Setup (jrsoftware.org)](https://jrsoftware.org/isinfo.php)*
> - *[NSIS Wiki (sourceforge.io)](https://nsis.sourceforge.io/Main_Page)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> This note is about ...

## Installer Types

- **[Inno Setup](#inno-setup)**
- **[Nullsoft Scriptable Install System (NSIS)](#nullsoft-scriptable-install-system%20(nsis))**

| Extension | Description |
| :--------: | :-------------: |
| `.msi` | Windows Installer Database |
| `.msm` | Windows Installer Merge Module |

### Windows Installer Service (MSI)

> [!INFO] About
> **Windows Installer** (`msiexec.exe`) is a [[Software Component]] and [[Application Programming Interface (API)]] of the [[Tool - Microsoft Windows]] [[Operating System]] that is used for installing software, programs and applications onto the machine.


The installation information, and optionally the files themselves, are packaged in installation packages, loosely relational databases structured as COM Structured Storages and commonly known as "MSI files", from their default filename extensions. The packages with the file extensions mst contain Windows Installer "Transformation Scripts", those with the msm extensions contain "Merge Modules" and the file extension pcp is used for "Patch Creation Properties". Windows Installer contains significant changes from its predecessor, Setup API. New features include a GUI framework and automatic generation of the uninstallation sequence. Windows Installer is positioned as an alternative to stand-alone executable installer frameworks such as older versions of InstallShield and NSIS.

#### InstallShield with MSI

#### Custom MSI Arguments



### Inno Setup

> [!INFO] About
> 

### Nullsoft Scriptable Install System

> [!INFO] About
> *Nullsoft Scriptable Install System (NSIS)* is 

### WISE Installer

### InstallShield

### Windows Installer Service (MSI)

***

## Appendix

*Note created on [[2024-05-17]] and last modified on [[2024-05-17]].*

### See Also

- [[Tool - Microsoft Windows]]

### Backlinks

```dataview
LIST FROM [[Microsoft Windows Installer Types]] AND -"CHANGELOG" AND -"01-SLIPBOX/Microsoft Windows Installer Types"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024