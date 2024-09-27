---
creation_date: 2024-09-22
modification_date: 2024-09-22
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Topic/Dev
  - Status/WIP
aliases:
  - Tool - git-annex
  - git-annex
publish: true
permalink:
description:
image:
cssclasses:
  - tool
---


# git-annex

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
> - *https://git-annex.branchable.com/*

```bash
cd <vault>
git init
git annex init --version 10
git checkout main
git annex config --set annex.dotfiles true
git config core.longpaths true
git config core.safecrlf false
'' > .git/info/attributes
'* annex.largefiles=largerthan=0 filter=annex' >> .gitattributes
'*.md text eol=lf annex.largefiles=nothing !filter' >> .gitattributes
'**/.obsidian*/** text=auto eol=lf annex.largefiles=nothing !filter' >> .gitattributes
'.git* annex.largefiles=nothing !filter' >> .gitattributes
'.stignore text eol=lf annex.largefiles=nothing !filter' >> .gitattributes
git add .gitattributes
git commit -m 'Init git-annex'

```

***

## Appendix

*Note created on [[2024-09-22]] and last modified on [[2024-09-22]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Tool - git-annex]] AND -"CHANGELOG" AND -"04-RESOURCES/Tools/Tool - git-annex"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024