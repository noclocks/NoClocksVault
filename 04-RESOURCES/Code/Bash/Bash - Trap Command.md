---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Bash
  - Type/Code/Shell
  - Topic/Dev
  - Topic/Linux
  - Topic/Bash
  - Topic/Shell
  - Topic/Windows
  - Status/WIP
aliases:
  - Bash Trap Command Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Trap Command

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - **

## Code Snippet

```bash
#!/bin/bash

# traptest.sh
# notice you cannot make Ctrl-C work in this shell, 
# try with your local one, also remeber to chmod +x 
# your local .sh file so you can execute it!

trap "echo Booh!" SIGINT SIGTERM
echo "it's going to run until you hit Ctrl+Z"
echo "hit Ctrl+C to be blown away!"

while true        
do
    sleep 60       
done
```

You can substitute the `"echo Booh!"` trap with a function:

```bash
function booh {
  echo "booh!"
}
```

then:

```bash
trap booh SIGINT SIGTERM
```

Some of the common signal types you can trap:

- `SIGINT`: user sends an interrupt signal (`Ctrl+C`)
- `SIGQUIT`: user sends a quit signal (`Ctrl+D`)    
- `SIGFPE`: attempted an illegal mathematical operation

You can check out all signal types by entering the following command:

```bash
kill -l
```

Notice the numbers before each signal name, you can use that number to avoid typing long strings in trap:

```bash
#2 corresponds to SIGINT and 15 corresponds to SIGTERM
trap booh 2 15
```

one of the common usage of trap is to do cleanup temporary files:

```bash
trap "rm -f folder; exit" 2
```


## Details

> [!NOTE] About
> This note is about the `trap` command in a [[Linux]] [[Shell]], or [[Bash]]

## See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code Snippets]]
- [[Linux]], [[Tool - Ubuntu|Ubuntu]], [[Tool - Kali Linux|Kali Linux]]
- [[Tool - Zsh|Zsh]]
- [[MOC - Development|Development Map of Content]]
- [[Tool - WSL|Windows Sub-System for Linux (WSL)]]

***

## Appendix

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### Backlinks

```dataview
LIST FROM [[Bash - Trap Command]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Trap Command"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024