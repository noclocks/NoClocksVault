---
creation_date: 2024-04-24
modification_date: 2024-04-24
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Windows
  - Topic/Dev
  - Status/WIP
aliases:
  - Microsoft Standard Installer Command Line Options
publish: true
permalink:
description:
image:
cssclasses:
---


# Microsoft Standard Installer Command Line Options

> [!SOURCE] Sources:
> - *[Microsoft Standard Installer command-line options - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/msi/standard-installer-command-line-options)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

This article describes standard command-line options for the Microsoft Standard Installer `msiexec.exe`, the app you use to interpret packages and install products.

Command-line options are case insensitive.

`Msiexec` sets and returns an error level that corresponds to [system error codes](https://learn.microsoft.com/en-us/windows/win32/debug/system-error-codes).

> [!NOTE]
> The `Msiexec` command-line options are available beginning with Windows Installer 3.0. The [Windows Installer command-line options](https://learn.microsoft.com/en-us/windows/win32/msi/command-line-options) are available with Windows Installer 3.0 and earlier. This article lists the Windows Installer command-line option that corresponds to each Standard Installer option.

## /help

Help and quick reference option. Displays the correct usage of the `msiexec` command, including a list of all switches and behavior. You can display the usage descriptions in the user interface. Incorrect use of any other option invokes this help option.

The equivalent Windows Installer command-line option is `/?`.

Example:

```powershell
msiexec /help
```

## /quiet

Quiet display option. The installer runs an installation without displaying a user interface. No prompts, messages, or dialog boxes display to the user. The user can't cancel the installation.

Use the `/norestart` or `/forcerestart` standard command-line options to control reboots. If no reboot option is specified, the installer restarts the computer whenever necessary without displaying any prompt or warning to the user.

The equivalent Windows Installer command-line option is `/qn`.

Examples:

```powershell
msiexec /package Application.msi /quiet

msiexec /uninstall Application.msi /quiet

msiexec /update msipatch.msp /quiet

msiexec /uninstall msipatch.msp /package Application.msi /quiet
```

## /passive

Passive display option. The installer displays a progress bar to the user that indicates that an installation is in progress, but displays no prompts or error messages to the user. The user can't cancel the installation.

Use the `/norestart` or `/forcerestart` standard command-line options to control reboots. If no reboot option is specified, the installer restarts the computer whenever necessary without displaying any prompt or warning to the user.

The equivalent Windows Installer command-line option is `/qb!`- with `REBOOTPROMPT=S` set on the command line.

Example:

```powershell
msiexec /package Application.msi /passive
```

