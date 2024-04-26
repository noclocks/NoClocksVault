---
creation_date: 2024-04-26
modification_date: 2024-04-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Windows
  - Topic/IT
  - Topic/ComputerS
  - Topic/Dev
  - Status/WIP
aliases:
  - The Anatomy of a Windows Process
publish: true
permalink:
description:
image:
cssclasses:
---

# The Anatomy of a Windows Process

> [!SOURCE] Sources:
> - *[Windows Kernel Opaque Structures - Windows drivers | Microsoft Learn](https://learn.microsoft.com/en-us/windows-hardware/drivers/kernel/eprocess)*
> - *https://winstoreappsummary.blogspot.com/2024/03/process-knowledge.html*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> This note provides a detailed overview of the anatomy of an executable process.

Multiple programs are running on the computer at the same time. It must be managed by the operating system. Managing this process, along with memory management, is one of the main tasks an operating system must perform.

In order for the operating system to manage processes, it must create, store, and handle a lot of information necessary for management. A process has various information related to the process, and the operating system maintains information blocks that record detailed information for each process in the kernel memory (kernel object).

A single process has one or more execution blocks (or execution routines, execution units..) (Thread).

It can also be understood that several threads included in a program are grouped together and called a "process".

When a new process (program) is executed on a [[Microsoft Windows]] operating system:

1. Windows creates a structure named `EPROCESS` in the kernel memory space to manage it
2. The `ETHREAD` structure is created together as many threads as the process uses

## Windows Kernel Opaque Structures

This article lists and describes Windows kernel opaque structures. For many of these structures, drivers shouldn't access or change any members but should instead use system-supplied routines to access the information. See each structure for details.

### EPROCESS

### ETHREAD

### 