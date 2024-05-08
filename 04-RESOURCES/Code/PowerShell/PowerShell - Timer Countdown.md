---
creation_date: 2024-05-08
modification_date: 2024-05-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Timer Countdown Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Timer Countdown PowerShell Code

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
> - *[Powershellisfun/Create a Focus Time countdown clock/Start-FocusTime.ps1 at main · HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Create%20a%20Focus%20Time%20countdown%20clock/Start-FocusTime.ps1)*

## Code Snippet

```powershell
function Start-FocusTime {
    param (
        [Parameter(Mandatory = $true, HelpMessage = "Enter the amount of minutes you want to focus in")][string]$Minutes

    )

    #Get a list from your Task Manager for the correct names, look for them in the Details pane and add them without the extension
    #For example Outlook instead of Outlook.exe
    $ProgramsToKill = @(
        "Outlook",
        "Spotify",
        "Teams"
    )
    
    #Close all programs in the $ProgramsToKill variable
    Write-Host ("Starting Focus Time for {0} minutes, please close and save open document (if any) in the following programs:" -f $Minutes) -ForegroundColor Green
    $ProgramsToKill -join ', ' | Sort-Object
    Read-Host -Prompt "Press Enter to continue" 
    Write-Host "Closing programs if active..." -ForegroundColor Green
    foreach ($program in $ProgramsToKill) {
        if (Get-Process $program -ErrorAction SilentlyContinue) {
            try {
                Get-Process $Program | Stop-Process -Force:$true -Confirm:$false -ErrorAction Stop
                Write-Host ("Closing {0}" -f $program) -ForegroundColor Green
            }
            catch {
                Write-Warning ("Could not close {0}, please close it manually..." -f $program)
            }
        }
    }

    #Start countdown, countdown to zero and restart programs again
    #Used countdown procedure from https://www.powershellgallery.com/packages/start-countdowntimer/1.0/Content/Start-CountdownTimer.psm1
    $t = New-TimeSpan -Minutes $Minutes
    $origpos = $host.UI.RawUI.CursorPosition
    $spinner = @('|', '/', '-', '\')
    $spinnerPos = 0
    $remain = $t
    $d = ( get-date) + $t
    [int]$TickLength = 1
    $remain = ($d - (get-date))
    Write-Host ("Starting focus time for {0} minutes" -f $Minutes) -ForegroundColor Green
    while ($remain.TotalSeconds -gt 0) {
        Write-Host (" {0} " -f $spinner[$spinnerPos % 4]) -ForegroundColor Green -NoNewline
        write-host (" {0}D {1:d2}h {2:d2}m {3:d2}s " -f $remain.Days, $remain.Hours, $remain.Minutes, $remain.Seconds) -NoNewline
        $host.UI.RawUI.CursorPosition = $origpos
        $spinnerPos += 1
        Start-Sleep -seconds $TickLength
        $remain = ($d - (get-date))
    }
    $host.UI.RawUI.CursorPosition = $origpos
    Write-Host " * "  -ForegroundColor Green -NoNewline
    write-host " Countdown finished, restarting programs..." -ForegroundColor Green
    
    foreach ($program in $ProgramsToKill) {
        try {
            Write-Host ("Starting {0}" -f $program) -ForegroundColor Green
            Start-Process $program
        }
        catch {
            Write-Warning ("Could not start {0}, please start it manually..." -f $program)
        }
    }
}
```

## Details

The [`Start-FocusTime`](command:_github.copilot.openSymbolFromReferences?%5B%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22Untitled-2%22%2C%22_sep%22%3A1%2C%22path%22%3A%22Untitled-2%22%2C%22scheme%22%3A%22untitled%22%7D%2C%7B%22line%22%3A0%2C%22character%22%3A9%7D%5D "Untitled-2") function in this PowerShell script is designed to help you focus on a task by closing certain programs for a specified amount of time, and then reopening them when the time is up.

The function takes one mandatory parameter, `$Minutes`, which specifies the amount of time you want to focus. This parameter is a string, and the function will prompt you to enter the number of minutes you want to focus if you don't provide it when calling the function.

The script defines a list of programs to close, stored in the [`$ProgramsToKill`](command:_github.copilot.openSymbolFromReferences?%5B%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22Untitled-2%22%2C%22_sep%22%3A1%2C%22path%22%3A%22Untitled-2%22%2C%22scheme%22%3A%22untitled%22%7D%2C%7B%22line%22%3A8%2C%22character%22%3A4%7D%5D "Untitled-2") array. In this case, the programs are 'Outlook', 'Spotify', and 'Teams'. You can modify this list to include the programs you want to close during your focus time.

The function then informs you that it's starting the focus time and lists the programs it will close. It waits for you to press Enter before proceeding, giving you a chance to save any open documents in these programs.

Next, the function goes through each program in the [`$ProgramsToKill`](command:_github.copilot.openSymbolFromReferences?%5B%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22Untitled-2%22%2C%22_sep%22%3A1%2C%22path%22%3A%22Untitled-2%22%2C%22scheme%22%3A%22untitled%22%7D%2C%7B%22line%22%3A8%2C%22character%22%3A4%7D%5D "Untitled-2") array and tries to close it. If it can't close a program for some reason, it will issue a warning and ask you to close it manually.

Once all the programs are closed, the function starts a countdown for the specified focus time. It displays a spinner and the remaining time in the console to give you a visual indication of the countdown. The countdown is based on a procedure from the `start-countdowntimer` package on the PowerShell Gallery.

When the countdown reaches zero, the function announces that the focus time is over and attempts to restart the programs it closed. If it can't start a program, it will issue a warning and ask you to start it manually.

This function is a useful tool for managing distractions and improving productivity. You can customize it to suit your needs by changing the list of programs to close or adjusting the countdown display.

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-05-08]] and last modified on [[2024-05-08]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Timer Countdown]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Timer Countdown"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024