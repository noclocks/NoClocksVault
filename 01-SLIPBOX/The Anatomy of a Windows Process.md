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

When a new process (program) is executed on a [[Microsoft Windows]] operating system:

1. Windows creates a structure named `EPROCE` 