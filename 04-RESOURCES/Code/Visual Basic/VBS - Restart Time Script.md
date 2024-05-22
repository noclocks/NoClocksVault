---
creation_date: 2024-05-20
modification_date: 2024-05-20
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/VBS
  - Topic/Dev
  - Topic/Dev/Windows
  - Status/WIP
aliases:
  - Restart Time Script VBS Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Restart Time Script Visual Basic Script

> [!SOURCE] Sources:
> - *[How to check Windows 11 restart time (winaero.com)](https://winaero.com/how-to-check-windows-11-restart-time/)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> This note is about ...

## Code Snippet

```vb
' Use this script to roughly measure Windows restart time
' It works in Windows 11, Windows 10, Windows 8.1/8, and Windows 7
' Check out the tutorial here: https://winaero.com/how-to-check-windows-11-restart-time/

Option Explicit
On Error Resume Next

Dim WSHell
Dim strRegCurrentTime, strSeflPath, MsgResult, strCloseAppsConfirmation, strMsgboxTitle
Dim ddTimeResult, secs, mins, hours, result

strSeflPath = """" & WScript.ScriptFullName & """"

set WSHell = CreateObject("WScript.Shell")
strRegCurrentTime = WSHell.RegRead("HKEY_CURRENT_USER\Software\CurrentTime")

if strRegCurrentTime = "" then
	MsgResult = Msgbox("This will immediately restart your PC, so save your work right now. Do you want to continue?", VBExclamation + VBYesNo, "Warning!")
	If MsgResult = VBYes then
		WSHell.RegWrite "HKEY_CURRENT_USER\Software\CurrentTime", Now, "REG_SZ"
		WSHell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\CheckRestartTime", strSeflPath, "REG_SZ"
		WSHell.Run "shutdown -r -f -t 0", false, 0 
	end if
else
	WSHell.RegDelete "HKEY_CURRENT_USER\Software\CurrentTime"
	WSHell.RegDelete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\CheckRestartTime"
	secs = DateDiff("s", strRegCurrentTime, Now)
	mins = secs \ 60 
	hours = mins \ 60 
	mins = mins mod 60 
	secs = secs mod 60 
	hours = hours mod 24 
	result = right("00" & hours , 2) & ":" & right("00" & mins, 2) & ":" & right("00" & secs, 2)
	
	MsgBox "Your computer restart time is " & result & ".", VBOKOnly + VbInformation, "Restart time"
end if

set WSHell = nothing
wscript.Quit
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - Technology|Technology Map of Content]]
- [[MOC - Development|Development Map of Content]]
- [[04-RESOURCES/Code/VBA/_README|VBA Code Snippets]]
- [[04-RESOURCES/Code/PowerQuery/_README|PowerQuery M Code]]
- [[Tool - Microsoft Excel|Microsoft Excel]]
- [[Tool - Microsoft Office|Microsoft Office]]

***

## Appendix

*Note created on [[2024-05-20]] and last modified on [[2024-05-20]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[VBS - Restart Time Script]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Visual Basic/VBS - Restart Time Script"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024