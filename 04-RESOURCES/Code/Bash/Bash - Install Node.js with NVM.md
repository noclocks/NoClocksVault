---
creation_date: 2024-04-22
modification_date: 2024-04-22
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
  - Bash Install Node.js with NVM Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Install Node.js with NVM Code

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
#!/usr/bin/env bash
 
sudo apt-get -y update
 
# set config
XDG_CONFIG_HOME = ~/.config
 
# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
 
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
 
# config
nvm alias default node # Always default to the latest available node version on a shell
nvm set-colors "yMeBg"
 
# install latest node and npm
nvm install node --latest-npm
nvm install-latest-npm
 
nvm use node
npm install -g npm
 
# setup npm
npm login
npm install -g eslint jshint prettier yarn npm-check doctoc tldr speedtest-cli serve
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

*Note created on [[2024-04-22]] and last modified on [[2024-04-22]].*

### Backlinks

```dataview
LIST FROM [[Bash - Install Node.js with NVM]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Install Node.js with NVM"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024