---
creation_date: 2024-08-06
modification_date: 2024-08-06
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Bash
  - Type/Code/Shell
  - Topic/Dev
  - Topic/Dev/Linux
  - Topic/Dev/Bash
  - Topic/Dev/Shell
  - Topic/Dev/Windows
  - Status/WIP
aliases:
  - Bash Find Most Used Commands from History Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Find Most Used Commands from History Code

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
> - *https://www.adamsdesk.com/posts/find-most-used-terminal-commands/*

## Code Snippet

Here are three variations:

```bash
history | awk 'BEGIN {FS="[ \t]+|\\|"} {print $3}' | sort | uniq -c | sort -nr | head -n25

history | awk '{print $2}' | sort | uniq -c | sort -nr | head -n25

history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -nr | head -n25
```

## Bonus: Get Command Statistics

This is a very interesting approach I found online that outputs, line number, usage count, percentage used, and command. I have not been able to figure out how to make this method work beyond using [[04-RESOURCES/Code/Bash/_README|Bash]]. 

I would first need to learn about what exactly the `fc` command does. I did figure out that the `fc` is a built-in command in [[Bash]] and [[Tool - Zsh|Zsh]].

```bash
function shstats() { fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n25; }

shstats
```

Example Output:

```bash
> shstats
     1  469  12.4967%    cd
     2  232  6.18172%    ls
     3  197  5.24913%    docker
     4  175  4.66294%    poetry
     5  165  4.39648%    git
     6  124  3.30402%    dnscontrol
     7  112  2.98428%    gh
     8  109  2.90434%    pip
     9  95   2.53131%    brew
    10  87   2.31815%    mkdir
    11  86   2.2915%     python
    12  86   2.2915%     code
    13  79   2.10498%    echo
    14  74   1.97176%    sudo
    15  73   1.94511%    npm
    16  65   1.73195%    bun
    17  64   1.7053%     source
    18  63   1.67866%    which
    19  61   1.62537%    touch
    20  58   1.54543%    az
    21  51   1.35891%    nx
    22  47   1.25233%    pyenv
    23  42   1.1191%     curl
    24  38   1.01252%    cat
    25  33   0.879297%   terraform
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[PowerShell - Find Most Used Commands from History]]


- [[04-RESOURCES/Code/Bash/_README|Bash Code Snippets]]
- [[Linux]], [[Tool - Ubuntu|Ubuntu]], [[Tool - Kali Linux|Kali Linux]]
- [[Tool - Zsh|Zsh]]
- [[MOC - Development|Development Map of Content]]
- [[Tool - WSL|Windows Sub-System for Linux (WSL)]]

***

## Appendix

*Note created on [[2024-08-06]] and last modified on [[2024-08-06]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Bash - Find Most Used Commands from History]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Find Most Used Commands from History"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024