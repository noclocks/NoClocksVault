---
creation_date: 2024-04-25
modification_date: 2024-04-25
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
  - Bash Logging Functions Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Logging Functions Code

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
> - *`bootstrap-bindown`* (?)

## Code Snippets

### Log Message Prefixes

```shell
#!/bin/sh
set -e

# by default prints the script name ($0)
log_prefix() {
  echo "$0"
}

# by default prints the script name ($0) and the line number
log_prefix_line() {
  echo "$0:$1"
}

# by default prints the script name ($0), the line number, and the function name
log_prefix_line_func() {
  echo "$0:$1:$2"
}

# by default prints the script name ($0), the line number, the function name, and the current date and time
log_prefix_line_func_date() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') $0:$1:$2"
}

# by default prints the script name ($0), the line number, the function name, the current date and time, and the message
log() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') $0:$1:$2 $3"
}
```

### Log Priority

```shell
#!/bin/sh
set -e

# default priority is 6
DEFAULT_PRIORITY=6

log_set_priority() {
  DEFAULT_PRIORITY="$1"
}

log_priority() {
  if test -z "$1"; then
    echo "$DEFAULT_PRIORITY"
    return
  fi
  [ "$1" -le "$DEFAULT_PRIORITY" ]
}

log_tag() {
  case "$1" in
    0) echo "EMERG" ;;
    1) echo "ALERT" ;;
    2) echo "CRIT" ;;
    3) echo "ERR" ;;
    4) echo "WARNING" ;;
    5) echo "NOTICE" ;;
    6) echo "INFO" ;;
    7) echo "DEBUG" ;;
    *) echo "UNKNOWN" ;;
  esac

}

log_debug() {
  log_priority 7 || return 0
  echoerr "$(log_prefix)" "$(log_tag 7)" "$@"
}

log_info() {
  log_priority 6 || return 0
  echoerr "$(log_prefix)" "$(log_tag 6)" "$@"
}

log_err() {
  log_priority 3 || return 0
  echoerr "$(log_prefix)" "$(log_tag 3)" "$@"
}

# log_crit is for platform problems
log_crit() {
  log_priority 2 || return 0
  echoerr "$(log_prefix)" "$(log_tag 2)" "$@"
}
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

*Note created on [[2024-04-25]] and last modified on [[2024-04-25]].*

### Backlinks

```dataview
LIST FROM [[Bash - Logging Functions]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Logging Functions"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
