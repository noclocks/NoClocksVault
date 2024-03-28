---
creation_date: 2024-03-28
modification_date: 2024-03-28
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - 00-INBOX
  - Inbox
  - Inbox Readme
publish: true
permalink: /inbox/readme
description: "Readme for the 00-INBOX folder."
image:
cssclasses:
  - readme
---


# Inbox

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes under the `00-INBOX` directory.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length`** individual notes in the `00-INBOX` folder, including this note.*

```dataview
LIST FROM "00-INBOX" AND -"CHANGELOG" AND -"00-INBOX/_README"
```

***

## Appendix

*Note created on [[2024-03-28]] and last modified on [[2024-03-28]].*

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"00-INBOX/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024