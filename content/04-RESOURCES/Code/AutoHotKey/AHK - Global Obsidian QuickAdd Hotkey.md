---
creation_date: 2024-04-23
modification_date: 2024-04-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/AutoHotKey
  - Topic/Dev
  - Topic/Dev/AutoHotKey
  - Status/WIP
aliases:
  - Global Obsidian QuickAdd Hotkey
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Global Obsidian QuickAdd Hotkey with AutoHotKey

> [!SOURCE]
> - *[Open QuickAdd from Desktop | QuickAdd Docs](https://quickadd.obsidian.guide/docs/Misc/AHK_OpenQuickAddFromDesktop)*

```table-of-contents
title: ## Contents
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```


> [!TIP]
> **UPDATE: A more reliable method is to use the [Global Hotkeys](https://github.com/mjessome/obsidian-global-hotkeys) plugin for Obsidian.**

## Overview

This is an [AutoHotkey](https://www.autohotkey.com/) script which unminimizes/focuses Obsidian and sends some keypresses to it.

I've bound this to my QuickAdd activation hotkey, so this script automatically brings Obsidian to the front of my screen with QuickAdd open.

## Code Snippets

- `!^+g` is the hotkey to activate the script.

```ahk
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, RegEx

!^+g::
    WinActivate, i) Obsidian
    ControlSend,, {CtrlDown}{AltDown}{ShiftDown}G{CtrlUp}{CtrlUp}{ShiftUp}, i)Obsidian
Return
```

Use `CTRL+SHIFT+ALT+G` as the shortcut, both in Obsidian and for the AHK script to activate.

I use a keyboard shortcut to send those keys. Here's a guide to what the `!^+` mean, and how you can customize it: https://www.autohotkey.com/docs/Hotkeys.htm

#### Update

If you are willing to install the `Obsidian Advanced URI` plugin, this script is much easier for you to use.

```ahk
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, RegEx

!^+g::
    WinActivate, i) Obsidian

    Run "obsidian://advanced-uri?vault=<YOUR_VAULT_NAME>&commandname=QuickAdd: Run QuickAdd"
Return
```

Simply replace `<YOUR_VAULT_NAME>` with the name of your vault.

**This version is more reliable**, as the other one can fail to activate occasionally.

It uses the same hotkey to activate as above (`CTRL+SHIFT+ALT+G`). If you wish to change it:

-   `!` means `Alt`
-   `^` means `Ctrl`
-   `+` means `Shift`

So, you can replace the `!^+g` with any hotkey of your choosing.
