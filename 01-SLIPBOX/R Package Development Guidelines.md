---
creation_date: 2024-04-08
modification_date: 2024-04-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Guide
  - Topic/R
  - Topic/Dev
  - Status/WIP
aliases:
  - R Package Development Guidelines
publish: true
permalink:
description:
image:
cssclasses:
---

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

The script should be used to document all changes and additions to package code. In addition, git-flow branches should be used for all added features and bug fixes. The **development** branch serves as the “test” / “work-in-progress” branch while the **master** branch is the “production” branch and should only be updated when creating a new **release**.

For example, say I wanted to add a new feature / function - the following steps would be used:

1. Using _Git-Flow_, a new branch should be created off the current **development** branch with a name corresponding to the new feature.
    
2. Once in the new branch, add functions via the **devhist.R** script via .
    
3. Edit the new .R file and commit changes and push to feature branch.
    
4. Add tests for new function and document additions via , and document this in the **devhist.R** script.
    
5. Add example usage of the new feature via , and document this in the **devhist.R** script.
    
6. Document, Test, Check, Build, and Install.
    
7. Finally, merge feature branch with development branch using git-flow and if desired create a new release and merge with master branch updating the package version.

