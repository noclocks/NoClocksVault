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
  - Topic/Dev/Docker
  - Status/WIP
aliases:
  - Bash Cleanup Docker Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Cleanup Docker Code

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
> - **

## Code Snippet

Simple Version:

```bash
docker images -q | xargs docker rmi
docker ps -q | xargs docker rm
```

```bash
#!/bin/sh
# Cleanup docker files: untagged containers and images.
#
# Use `docker-cleanup -n` for a dry run to see what would be deleted.

untagged_containers() {
    # Print containers using untagged images: $1 is used with awk's print: 0=line, 1=column 1.
    # NOTE: "[0-9a-f]{12}" does not work with GNU Awk 3.1.7 (RHEL6).
    # Ref: https://github.com/blueyed/dotfiles/commit/a14f0b4b#commitcomment-6736470
    docker ps -a | tail -n +2 | awk '$2 ~ "^[0-9a-f]+$" {print $'$1'}'
}

untagged_images() {
    # Print untagged images: $1 is used with awk's print: 0=line, 3=column 3.
    # NOTE: intermediate images (via -a) seem to only cause
    # "Error: Conflict, foobarid wasn't deleted" messages.
    # Might be useful sometimes when Docker messed things up?!
    # docker images -a | awk '$1 == "<none>" {print $'$1'}'
    docker images | tail -n +2 | awk '$1 == "<none>" {print $'$1'}'
}

# Dry-run.
if [ "$1" = "-n" ]; then
    echo "=== Containers with uncommitted images: ==="
    untagged_containers 0
    echo
    echo "=== Uncommitted images: ==="
    untagged_images 0
    echo
    echo "=== Dangling volumes: ==="
    docker volume ls --filter dangling=true -q
    exit
fi
if [ -n "$1" ]; then
    echo "Cleanup docker files: remove untagged containers and images."
    echo "Usage: ${0##*/} [-n]"
    echo " -n: dry run: display what would get removed."
    exit 1
fi

# Remove containers with untagged images.
echo "Removing containers:" >&2
untagged_containers 1 | xargs --no-run-if-empty docker rm --volumes=true

# Remove untagged images
echo "Removing images:" >&2
untagged_images 3 | xargs --no-run-if-empty docker rmi

# Remove dangling volumes
echo "Removing volumes:" >&2
docker volume prune -f | sed '/Total reclaimed space/d'
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

*Note created on [[2024-09-26]] and last modified on [[2024-09-26]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Bash - Cleanup Docker]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Cleanup Docker"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024