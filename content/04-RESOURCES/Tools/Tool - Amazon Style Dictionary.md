---
creation_date: 2024-04-30
modification_date: 2024-04-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Topic/NA
  - Status/WIP
aliases:
  - Tool - Amazon Style Dictionary
  - Amazon Style Dictionary
publish: true
permalink:
description:
image:
cssclasses:
  - tool
---


# Amazon Style Dictionary

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

![](https://i.imgur.com/R8lY3Na.png)

## Usage

### Command Line

```shell
# global install
npm install -g style-dictionary

# dev dependency
npm install --save-dev style-dictionary
```

Edit `package.json`:

```json
"scripts": {
  "build:style-dictionary": "style-dictionary build"
},
```

```shell
mkdir styledict && cd styledict
npx style-dictionary init basic
style-dictionary build
```
***

## Appendix

*Note created on [[2024-04-30]] and last modified on [[2024-04-30]].*

### Backlinks

```dataview
LIST FROM [[Tool - Amazon Style Dictionary]] AND -"CHANGELOG" AND -"04-RESOURCES/Tools/Tool - Amazon Style Dictionary"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024