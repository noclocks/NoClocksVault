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
  - Bash Check if Directory Exists Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Check if Directory Exists Code

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
> - *[How do I check if a directory exists or not in a Bash shell script? - Stack Overflow](https://stackoverflow.com/questions/59838/how-do-i-check-if-a-directory-exists-or-not-in-a-bash-shell-script)*

## Code Snippet

- [check-directory-exists.sh](./src/check-directory-exists.sh):

```bash
#!/usr/bin/env bash

# Check if a directory exists
if [ -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does exist."
else
  echo "$DIRECTORY does not exist."
fi

# Taking into account symbolic links
if [ -d "$LINK_OR_DIR" ]; then
  if [ -L "$LINK_OR_DIR" ]; then
    # It is a symlink!
    # Symbolic link specific commands go here.
    rm "$LINK_OR_DIR"
  else
    # It's a directory!
    # Directory command goes here.
    rmdir "$LINK_OR_DIR"
  fi
fi
```

## Details

This script is written in Bash, a popular shell scripting language used in Unix-based systems. The script checks if a directory or a symbolic link exists and performs actions based on the result.

The first line `#!/usr/bin/env bash` is called a shebang. It tells the system that this script should be run using Bash.

The script first checks if a directory exists. The `-d` flag in the `if` statement checks if the `$DIRECTORY` exists and is a directory. If it does, it prints a message saying that the directory exists. If it doesn't, it prints a message saying that the directory does not exist.

The script then checks if a directory or a symbolic link exists. The `-d` flag checks if the `$LINK_OR_DIR` exists and is a directory. If it does, it then checks if it's a symbolic link using the `-L` flag. If it is a symbolic link, it removes the symbolic link using the `rm` command. If it's not a symbolic link (meaning it's a regular directory), it removes the directory using the `rmdir` command.

Note that the `rm` command is used to remove files and symbolic links, while the `rmdir` command is used to remove empty directories. If the directory is not empty, you would need to use `rm -r` to remove it and all of its contents. Be careful when using these commands, as they permanently delete files and directories.

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
LIST FROM [[Bash - Check if Directory Exists]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Check if Directory Exists"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024