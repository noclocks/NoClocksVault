---
creation_date: 2024-04-08
modification_date: 2024-04-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Type/List
  - Topic/Dev
  - Topic/Dev/Zsh
  - Topic/Linux
  - Topic/WSL
  - Topic/Bash
  - Status/WIP
aliases:
  - Zsh Startup Files
publish: true
permalink: 
description: 
image: 
cssclasses:
---

# Zsh Startup Files

> [!SOURCE] Sources:
> - **

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

There are **five** primary startup files for [[Z Shell (Zsh)]]:

1. `.zshenv`: [[Zsh]] Environment Configuration
2. `.zprofile`: [[Zsh]] Profile Configuration
3. `.zshrc`: [[Zsh]] Interactive Shell Configuration
4. `.zlogin`: [[Zsh]] Login Configuration
5. `.zlogout`: [[Zsh]] Logout Configuration

### `.zshenv` - Zsh Environment Configuration

`.zshenv` is sources on *all invocations of the shell, unless the `-f` option flag is set.*

What to Include:

- Command Search Path
- Environment Variable Exports
- Commands for setting up aliases and functions that are needed for other scripts

What to Exclude:

- Commands the product output
- Anything that assumes the shell is attached to a [[TTY]]

### `.zprofile` - Zsh Profile Configuration

`.zprofile` is sourced in all login shells. It is meant to serve as an alternative to `zlogin` for `ksh`.

What to Include:

- Commands that should be executed only in login shells
- As a general rule, it should not change the shell environment at all.
- As a general rule, set the terminal type then run a series of external commands e.g. fortune, msgs, etc.

What to Exclude:

- Alias Definitions
- Function Definitions
- Options
- Environment Variable Settings

### `.zshrc` - Zsh Interactive Shell Configuration

`zshrc` is sourced in interactive shells.

What to Include:

- Commands to setup aliases, functions, options, key bindings, etc.

### `.zlogin` - Zsh Login Configuration

`.zlogin` is similar to `.zprofile`, except sourced after `.zshrc`.

### `.zlogout` - Zsh Logout Configuration

`.zlogout` is sourced when a login shell exits.

## Extras

- `.zsh-update`
- `.zshrc-e`

## File Paths

Default System Files:

```plaintext
/etc/zshenv
/etc/sprofile
/etc/zshrc
/etc/zlogin
/etc/zlogout
```

Default User Files:

```plaintext
$HOME/.zshenv
$HOME/.zprofile
$HOME/.zshrc
$HOME/.zlogin
$HOME/.zlogout
```

When using `ZDOTFIR`