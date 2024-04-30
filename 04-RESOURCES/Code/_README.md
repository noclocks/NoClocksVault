---
creation_date: 2024-04-01
modification_date: 2024-04-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Type/Code
  - Topic/Meta
  - Topic/Dev
  - Status/Ongoing
aliases:
  - Code
  - Code Snippets
  - Code Folder
  - Code Readme
publish: true
permalink:
description:
image:
cssclasses:
  - readme
  - clean-embeds
---


# Code

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
> This note serves as an index for all notes under the `04-RESOURCES/Code` directory.

## Structure

```plaintext

```

## Index

> [!CODE]- [[04-RESOURCES/Code/AppsScript/_README|AppsScript Code]]:
> ![[04-RESOURCES/Code/AppsScript/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/Bash/_README|Bash Code]]:
> ![[04-RESOURCES/Code/Bash/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/Cmd/_README|Command Line Code]]:
> ![[04-RESOURCES/Code/Cmd/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/CSS/_README|CSS Code]]:
> ![[04-RESOURCES/Code/CSS/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/HTML/_README|HTML Code]]:
> ![[04-RESOURCES/Code/HTML/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]:
> ![[04-RESOURCES/Code/JavaScript/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/PowerQuery/_README|PowerQuery M Code]]:
> ![[04-RESOURCES/Code/PowerQuery/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]:
> ![[04-RESOURCES/Code/PowerShell/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/Python/_README|Python Code]]:
> ![[04-RESOURCES/Code/Python/_README#Notes]]

> [!CODE]- [[04-RESOURCES/Code/R/_README|R Code]]:
> ![[04-RESOURCES/Code/R/_README#Index]]

> -[!CODE]- [[04-RESOURCES/Code/React/_README|React Code]]:
> ![[04-RESOURCES/Code/React/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/Registry/_README|Registry Code]]:
> ![[04-RESOURCES/Code/Registry/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/SQL/_README|SQL Code]]:
> ![[04-RESOURCES/Code/SQL/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/Terraform/_README|Terraform Code]]:
> ![[04-RESOURCES/Code/Terraform/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/TypeScript/_README|TypeScript Code]]:
> ![[04-RESOURCES/Code/TypeScript/_README#Index]]

> [!CODE]- [[04-RESOURCES/Code/VBA/_README|VBA Code]]:
> ![[04-RESOURCES/Code/VBA/_README#Index]]

### Individual Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`**  individual notes in the `04-RESOURCES/Code` folder, excluding this note.*

```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified", file.
FROM "04-RESOURCES/Code" AND -"04-RESOURCES/Code/_README"
WHERE file.name != this.file.name
SORT file.name asc
```

***

## Appendix

*Note created on [[2024-04-01]] and last modified on [[2024-04-30]].*

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024