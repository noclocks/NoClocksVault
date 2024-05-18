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
  - Bash Control Flow Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Control Flow Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

Control flow statements in Bash scripting allow you to control the execution of your script based on conditions and loops. Here are some common control flow statements:

1. **If Statement**: The `if` statement is used to test a condition and execute a block of code if the condition is true. If the condition is false, the code block is skipped.
    
```bash
if [ condition ]; then
    # code to execute if condition is true
fi
```
    
2. **If-Else Statement**: The `if-else` statement is an extension of the `if` statement that allows you to execute a different block of code if the condition is false.

```bash
if [ condition ]; then
    # code to execute if condition is true
else
    # code to execute if condition is false
fi
```
    
3. **Elif Statement**: The `elif` (else if) statement allows you to test multiple conditions and execute a different block of code for each condition.

```bash
if [ condition1 ]; then
    # code to execute if condition1 is true
elif [ condition2 ]; then
    # code to execute if condition2 is true
else
    # code to execute if both conditions are false
fi
```

4. **For Loop**: The `for` loop is used to repeat a block of code a certain number of times.

```bash
for variable in list; do
    # code to execute for each item in the list
done
```

5. **While Loop**: The `while` loop is used to repeat a block of code as long as a condition is true.

```bash
while [ condition ]; do
    # code to execute while condition is true
done
```

6. **Case Statement**: The `case` statement is used to match a variable against several patterns and execute a different block of code for each match.

```bash
case variable in
pattern1)
    # code to execute if variable matches pattern1
    ;;
pattern2)
    # code to execute if variable matches pattern2
    ;;
esac
```

Remember, the conditions in these control flow statements are tested using test constructs like `[ condition ]` or `[[ condition ]]`. The double bracket `[[ ]]` construct is a more modern version that supports more complex conditions and regular expressions.

## See Also

- [[Bash - Check if Directory Exists]]

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
LIST FROM [[Bash - Control Flow]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Control Flow"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024