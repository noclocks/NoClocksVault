---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Cheatsheet
  - Topic/Windows
  - Topic/CLI
  - Topic/Dev
  - Topic/IT
  - Topic/Tech
  - Topic/CMD
  - Status/WIP
aliases:
  - Windows Command Line Cheatsheet
  - Windows Command Line Commands
  - Windows CMD Commands
  - Windows CMD
publish: true
permalink:
description:
image:
cssclasses:
---

# Windows Command Line Cheatsheet

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

The [[Microsoft Windows|Windows]] [[Command Line]] (Windows command prompt) is the command-line interface (CLI) on Microsoft Windows machines, analogous to the Terminal in [Unix](https://www.stationx.net/unix-commands-cheat-sheet/)/[Linux](https://www.stationx.net/linux-command-line-cheat-sheet/). It emulates many command-line abilities in Microsoft’s deprecated text-only operating system MS-DOS (but [it’s not MS-DOS](https://superuser.com/questions/451432/are-the-command-prompt-and-ms-dos-the-same-thing)).

Methods to open the Windows CLI:

- On Windows 10 or above, click **Start** on the bottom left corner, type **cmd**, and select **Command Prompt**.
- On Windows 8.x or earlier, press **Ctrl+R** to open the **Run** dialog box, type **cmd** into it, and press **Enter**.

Hence, another name for Windows CLI is “cmd.”

Scripts containing Windows commands (batch scripts) have “.bat” as the file extension. All cmd commands are case-insensitive, so `arp` and `ARP` are the same. If you need help using any command, add `/?` to it, e.g., `ARP /?` will show the manual for `ARP:`