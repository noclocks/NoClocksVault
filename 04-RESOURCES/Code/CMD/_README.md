---
creation_date: 2024-04-10
modification_date: 2024-04-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Type/Code
  - Type/Code/Cmd
  - Topic/Meta
  - Topic/Dev
  - Topic/Dev/Cmd
  - Topic/Dev/Windows
  - Topic/Dev/CLI
  - Status/Ongoing
aliases:
  - Command Line Code
  - Cmd Code
  - CMD Code
  - CMD
  - Cmd
  - DOS
  - DOS Code
  - Command Line
  - Command Prompt
  - Windows Command Prompt
  - Windows Command Line
  - Command Line Code Readme
publish: true
permalink:
description:
image:
cssclasses:
  - readme
---


# Command Line (CMD) Code

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
> This note serves as an index for all notes under the `04-RESOURCES/Code/CMD` directory.

## Index

- [[Cmd - Add or Review Administrator Account Password]]
- [[Cmd - Check Available WSL Disk Space]]
- [[Cmd - Clear WSL2 Disk Space and Optimize VHD]]
- [[Cmd - Fix Corrupted Recycle Bin]]

## Dataview

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`**  individual notes in the `04-RESOURCES/Code/CMD` folder, excluding this note.*

```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM "04-RESOURCES/Code/CMD" AND -"04-RESOURCES/Code/CMD/_README"
WHERE file.name != this.file.name
SORT file.name asc
```

***

## Appendix

*Note created on [[2024-04-10]] and last modified on [[2024-04-30]].*

### See Also

- [[Cmd - Fix Corrupted Recycle Bin]]
- [[Cmd]]
- [[Microsoft Windows]]
- [[Batch Scripts]]
- [[MOC - Development|Development Map of Content]]
- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[Tool - Windows Terminal|Windows Terminal]]
- [[Cheatsheet - Windows CMD|Windows CMD Commands]]



### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CMD/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024