---
creation_date: 2024-05-17
modification_date: 2024-05-17
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
  - Bash Iterating over Files Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Iterating over Files Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

Iterating over files in a directory is a common task in Bash scripting. Here are a few ways to do it:

1. **Using a for loop with wildcard (*)**: The wildcard (*) character matches any number of characters in a filename. You can use it in a for loop to iterate over all files in a directory.

```bash
for file in /path/to/directory/*; do
    echo "$file"
done
```

This will print the full path of each file in the directory.

2. **Using a for loop with find command**: The `find` command is very powerful and can be used to find files based on various criteria. Here's how you can use it in a for loop:

```bash
for file in $(find /path/to/directory -type f); do
    echo "$file"
done
```

This will print the full path of each file in the directory and its subdirectories. The `-type f` option tells `find` to only match files (not directories).

3. **Using a while loop with read and find command**: If your filenames contain spaces, the above methods will not work correctly. In that case, you can use a while loop with the `read` command:

```bash
find /path/to/directory -type f | while read -r file; do
    echo "$file"
done
```

This will correctly handle filenames with spaces.

Remember, in these examples, `echo "$file"` is just a placeholder for whatever operation you want to perform on each file. Replace it with your own command or script.

## See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code Snippets]]
- [[Linux]], [[Tool - Ubuntu|Ubuntu]], [[Tool - Kali Linux|Kali Linux]]
- [[Tool - Zsh|Zsh]]
- [[MOC - Development|Development Map of Content]]
- [[Tool - WSL|Windows Sub-System for Linux (WSL)]]

***

## Appendix

*Note created on [[2024-05-17]] and last modified on [[2024-05-17]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Bash - Iterating over Files]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Iterating over Files"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024