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
  - Bash String Manipulation Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash String Manipulation Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

Bash scripting provides several ways to manipulate strings. Here are some common techniques:

1. **Substring Extraction**: You can extract a substring from a string using the syntax `${string:start:length}`. For example, if `str="Hello, World!"`, then `${str:7:5}` will return `World`.
    
2. **String Length**: You can get the length of a string using the syntax `${#string}`. For example, if `str="Hello, World!"`, then `${#str}` will return `13`.
    
3. **String Replacement**: You can replace the first occurrence of a substring in a string using the syntax `${string/substring/replacement}`. If you want to replace all occurrences, use `${string//substring/replacement}`. For example, if `str="Hello, World!"`, then `${str/o/0}` will return `Hell0, World!` and `${str//o/0}` will return `Hell0, W0rld!`.
    
4. **Substring Removal**: You can remove the shortest/longest part of a string matching a pattern from the beginning/end of the string. For example, `${string#substring}` removes the shortest match from the beginning, `${string##substring}` removes the longest match from the beginning, `${string%substring}` removes the shortest match from the end, and `${string%%substring}` removes the longest match from the end.
    
5. **String Concatenation**: You can concatenate strings simply by writing them one after another. For example, `str1="Hello, "; str2="World!"; str3=$str1$str2` will make `str3` contain `Hello, World!`.
    
6. **String Comparison**: You can compare strings using comparison operators. For example, `if [ "$str1" == "$str2" ]` checks if `str1` and `str2` are equal.
    
7. **String to Lowercase/ Uppercase**: You can convert a string to lowercase or uppercase using `${string,,}` and `${string^^}` respectively. For example, if `str="Hello, World!"`, then `${str,,}` will return `hello, world!` and `${str^^}` will return `HELLO, WORLD!`.
    

Remember, string manipulation in Bash is quite different from other programming languages, so it's important to understand these techniques and how to use them effectively.

## Code Snippet

```bash

```

## Details

> [!NOTE] About
> This note is about ...

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
LIST FROM [[Bash - String Manipulation]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - String Manipulation"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024