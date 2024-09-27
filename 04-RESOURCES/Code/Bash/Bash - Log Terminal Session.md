---
creation_date: 2024-09-26
modification_date: 2024-09-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Bash
  - Type/Code/Shell
  - Topic/Dev
  - Topic/Dev/Linux
  - Topic/Dev/Bash
  - Topic/Dev/Shell
  - Topic/Dev/Windows/WSL
  - Status/WIP
aliases:
  - Log Terminal Session Bash Script
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Log Terminal Session using Bash

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
> - *https://gist.github.com/subfuzion/8bd387d99b53a39b1df3b5fd688a8e90*

## Code Snippet

Will log sessions to `~/.config/session/history`:

```bash
#!/bin/bash

timestamp() {
  printf "%s" $(date +%D)
}

mkdir -p ~/.config/session
printf "%s\t%s\n" $(timestamp) $PWD >> ~/.config/session/history
```

## Details

Sometimes I have a number of terminal sessions open and I want to remember where I left off (for example, when rebooting). I'm sure there's a better way to automate this, but I haven't put thought into it.

For now, I just enter `log-session` to log the current directory, and later when I want to view previous sessions, I enter `sessions`.

## See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code Snippets]]
- [[Tool - Ubuntu|Ubuntu]], [[Tool - Kali Linux|Kali Linux]]
- [[Tool - Zsh|Zsh]]
- [[../../../01-SLIPBOX/UNIX Shell Scripting Tactics|UNIX Shell Scripting Tactics]]
- [[MOC - Development|Development Map of Content]]
- [[Tool - WSL|Windows Sub-System for Linux (WSL)]]

***

## Appendix

*Note created on [[2024-09-26]] and last modified on [[2024-09-26]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Bash - Log Terminal Session]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Log Terminal Session"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024