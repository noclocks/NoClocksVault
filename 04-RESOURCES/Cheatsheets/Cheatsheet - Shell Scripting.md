---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Cheatsheet
  - Topic/Dev/Shell
  - Topic/Dev/Bash
  - Topic/Dev/Linux
  - Topic/Dev/Scripting
  - Status/WIP
aliases:
  - Shell Scripting Cheatsheet
  - Shell Scripting Guide
publish: true
permalink:
description:
image:
cssclasses:
---

# Shell Scripting Guide Cheatsheet

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

[[04-RESOURCES/Code/Bash/_README|Bash]] scripting offers a wide range of commands that can be used to perform various tasks. 

Here are some of the most commonly used ones:

1. `echo`: Used to print text or data to the terminal. It's often used for printing variable values or messages. ()
2. `read`: Used to read input from the user. This is often used to get user input during script execution.
3. `cd`: Changes the current directory. This is used to navigate through the file system.
4. `ls`: Lists all files and directories in the current directory.
5. `pwd`: Prints the path of the current directory.
6. `touch`: Creates a new empty file.
7. `cp`: Copies files or directories.
8. `mv`: Moves or renames files or directories.
9. `rm`: Removes files or directories.
10. `cat`: Concatenates and displays the content of files.
11. `grep`: Searches for a specific pattern in files. (See [[Bash - grep Command|grep]])
12. `find`: Searches for files and directories based on a given expression.
13. `chmod`: Changes the permissions of a file or directory.
14. `chown`: Changes the owner and group of a file or directory.
15. `export`: Sets an environment variable.
16. `if`, `else`, `elif`, `fi`: Used for conditional statements.
17. `for`, `while`, `do`, `done`: Used for looping constructs.
18. `case`, `esac`: Used for pattern matching and selection constructs.
19. `function`: Defines a bash function.
20. `exit`: Exits the shell or your script, can include a status message.

> [!INFO]
> Remember, each of these commands has its own set of options and arguments that can be used to modify its behavior. You can use the `man` command followed by the command name to get more information about each command. For example, `man ls` will give you the manual page for the `ls` command.


## Best Practices

Writing efficient and reliable Bash scripts involves following a set of best practices. Here are some of them:

1. **Use Shebang**: Always start your script with a shebang (`#!/bin/bash`) at the top. This tells the system that the script should be executed with Bash.
    
2. **Set 'Strict' Mode**: Include `set -euo pipefail` at the beginning of your scripts. This causes the script to exit if any variables are uninitialized (`set -u`), if any command exits with a non-zero status (`set -e`), or if a command in a pipeline fails (`set -o pipefail`).
    
3. **Quote Your Variables**: Always quote your variables (`"$var"` not `$var`). This prevents word splitting and globbing, and it's especially important for handling arguments and filenames with spaces.
    
4. **Use Functions**: Functions can make your scripts more organized and reusable. They also reduce code duplication.
    
5. **Handle Errors**: Always check the exit status of commands and handle errors appropriately. You can use `if`, `else`, `elif`, and `case` statements to handle different exit statuses.
    
6. **Use Local Variables in Functions**: Use the `local` keyword in functions to avoid variable scope issues.
    
7. **Avoid Using `eval`**: The `eval` command can be dangerous because it executes arbitrary code. Avoid using it unless absolutely necessary.
    
8. **Use Arrays**: If you need to store multiple values, use arrays. They are more efficient and easier to manage than using multiple variables.
    
9. **Use `printf` Instead of `echo`**: `printf` is more reliable and flexible than `echo` for printing formatted output.
    
10. **Comment Your Code**: Always comment your code to explain what it does. This makes it easier for others (and future you) to understand.
    
11. **Check for Command Existence**: If your script depends on certain commands being available, check for their existence at the start of the script.
    
12. **Use Long Options in Scripts**: Long options (`--option` instead of `-o`) improve readability of your script.
    

Remember, the goal is to write scripts that are easy to read, understand, and maintain. Following these best practices can help you achieve that.

***

## Appendix

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Cheatsheet - Shell Scripting]] AND -"CHANGELOG" AND -"04-RESOURCES/Cheatsheets/Cheatsheet - Shell Scripting"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024