---
creation_date: 2024-05-03
modification_date: 2024-05-03
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Invoke-SystemCommand Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Invoke-SystemCommand PowerShell Code

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

## Code Snippet

```powershell
function Invoke-SystemCommand {
	<#
	.SYNOPSIS
		Execute a scriptblock as SYSTEM by setting up a temporary scheduled task.
	
	.DESCRIPTION
		Execute a scriptblock as SYSTEM by setting up a temporary scheduled task.
	
	.PARAMETER Name
		The name of the task
	
	.PARAMETER Scriptblock
		The code to run
	
	.PARAMETER Mode
		Whether to run it right away (instant) or after the next reboot (OnBoot).
		Default: Instant
	.PARAMETER Wait
		Wait for the task to complete.
		Only applicable in "Instant" mode.
	.PARAMETER Timeout
		Timeout how long we are willing to wait for the task to complete.
		Only applicable in combination with "-Wait"
	
	.EXAMPLE
		PS C:\> Invoke-SystemCommand -Name 'WhoAmI' -ScriptBlock { whoami | Set-Content C:\temp\whoami.txt }
		Executes the scriptblock as system
	#>
	[CmdletBinding()]
	Param (
		[Parameter(Mandatory = $true)]
		[ValidateScript({
			if ($_ -notmatch "'") { return $true }
			throw "Name may not contain a single-quote in it. Value: $Name"
		})]
		[string]
		$Name,

		[Parameter(Mandatory = $true)]
		[string]
		$Scriptblock,

		[ValidateSet('Instant', 'OnBoot')]
		[string]
		$Mode = 'Instant',

		[switch]
		$Wait,

		[timespan]
		$Timeout = '00:00:30'
	)
	
	process {
		if ($Mode -eq 'OnBoot') { $Scriptblock = "Unregister-ScheduledTask -TaskName 'PowerShell_System_$Name' -Confirm:`$false", $Scriptblock -join "`n`n" }
		$bytes = [System.Text.Encoding]::Unicode.GetBytes($Scriptblock)
		$encodedCommand = [Convert]::ToBase64String($bytes)

		$action = New-ScheduledTaskAction -Execute 'powershell.exe' -Argument "-NoProfile -EncodedCommand $encodedCommand"
		$principal = New-ScheduledTaskPrincipal -UserId SYSTEM -RunLevel Highest -LogonType Password
		switch ($Mode) {
			'Instant' { $trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) }
			'OnBoot' { $trigger = New-ScheduledTaskTrigger -AtStartup }
		}
		$task = Register-ScheduledTask -TaskName "PowerShell_System_$Name" -Description "PowerShell Task - $Name" -Action $action -Trigger $trigger -Principal $principal
		if ($Mode -eq 'Instant') {
			$task | Start-ScheduledTask
			if (-not $Wait) {
				Start-Sleep -Seconds 1
			}
			else {
				$limit = (Get-Date).Add($Timeout)
				while (($task | Get-ScheduledTask).State -ne "Ready") {
					if ($limit -lt (Get-Date)) {
						$task | Unregister-ScheduledTask -Confirm:$false
						throw "Task execution exceeded time limit ($Timeout)"
					}
				}
			}
			$task | Unregister-ScheduledTask -Confirm:$false
		}
	}
}
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-05-03]] and last modified on [[2024-05-03]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Invoke-SystemCommand]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Invoke-SystemCommand"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024