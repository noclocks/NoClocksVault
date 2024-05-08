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
  - PowerShell PowerShell - Create Scheduled Tasks Inventory Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Create Scheduled Tasks Inventory PowerShell Code

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
> - *[Powershellisfun/Create a Scheduled Tasks inventory running local and domain accounts/Scheduled Tasks inventory.ps1 at main · HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Create%20a%20Scheduled%20Tasks%20inventory%20running%20local%20and%20domain%20accounts/Scheduled%20Tasks%20inventory.ps1)*

## Code Snippet

```powershell
$CSVlocation = 'C:\Temp\ScheduledTasks.csv'
$total = foreach ($server in Get-ADComputer -Filter 'OperatingSystem -like "Windows Server*"' | Sort-Object Name) {
    try {
        $scheduledtasks = Get-ChildItem "\\$($Server.name)\c$\Windows\System32\Tasks" -Recurse -File -ErrorAction Stop
        Write-Host ("Retrieving Scheduled Tasks list for {0}" -f $server.Name) -ForegroundColor Green
    }
    catch {
        Write-Warning ("Unable to retrieve Scheduled Tasks list for {0}" -f $server.Name)
        $scheduledtasks = $null
    }
    foreach ($task in $scheduledtasks | Sort-Object Name) {
        try {
            $taskinfo = [xml](Get-Content -Path $task.FullName -ErrorAction stop)
            Write-Host ("Processing Task {0} on {1}" -f $task.Name, $server.name)
        }
        catch {
            Write-Warning ("Could not read {0}" -f $task.FullName)
            $taskinfo = $null
        }
        
        if ($taskinfo.Task.Settings.Enabled -eq 'true' `
                -and $taskinfo.Task.Principals.Principal.GroupId -ne 'NT AUTHORITY\SYSTEM' `
                -and $taskinfo.Task.Principals.Principal.GroupId -ne 'S-1-5-32-544' `
                -and $taskinfo.Task.Principals.Principal.LogonType -ne 'InteractiveToken' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'Administrators' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'EVERYONE' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'INTERACTIVE' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'LOCAL SERVICE' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'NETWORK SERVICE' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'NT AUTHORITY\SYSTEM' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'SYSTEM' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'S-1-5-18' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'S-1-5-19' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'S-1-5-20' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'USERS' `
                -and $taskinfo.Task.Triggers.LogonTrigger.Enabled -ne 'True' 
        ) {
            [PSCustomObject]@{
                Server    = $Server.name
                TaskName  = $task.Name
                RunAsUser = $taskinfo.Task.Principals.Principal.UserId
            }    
        }
    }
}
if ($total.count -gt 0) {
    $Total | Sort-Object Server, TaskName | Export-CSV -NoTypeInformation -Delimiter ';' -Encoding UTF8 -path $CSVlocation
    Write-Host ("Saved results to {0}" -f $CSVlocation) -ForegroundColor Green
}
else {
    Write-Warning ("No Scheduled Tasks were found running on local or Domain accounts")
}
```

## Details

This PowerShell script is designed to retrieve and analyze scheduled tasks from all Windows Server machines in an Active Directory (AD) environment. The results are then saved to a CSV file.

The script starts by defining the location of the CSV file where the results will be stored. It then enters a loop where it retrieves each server in the AD that runs a Windows Server operating system.

For each server, the script attempts to retrieve the list of scheduled tasks. If it can't retrieve the list (for example, due to a network error or insufficient permissions), it issues a warning and skips to the next server.

For each scheduled task, the script attempts to read the task's XML definition. If it can't read the definition, it issues a warning and skips to the next task.

The script then checks various properties of the task to determine if it meets certain criteria. Specifically, it checks if the task is enabled, if it's not run by certain system or well-known accounts, and if it's not triggered by a user logon. These checks are designed to filter out tasks that are likely to be system tasks or tasks that don't pose a security risk.

If a task meets all the criteria, the script creates a custom object with the server name, task name, and the user account that the task runs as. This object is added to a list of all tasks that meet the criteria.

After all servers and tasks have been processed, the script checks if it found any tasks that meet the criteria. If it did, it sorts the list by server and task name, exports it to the CSV file, and informs you that it saved the results. If it didn't find any tasks, it issues a warning.

This script is a useful tool for auditing scheduled tasks in an AD environment. It can help you identify tasks that run as non-system accounts, which could pose a security risk if they're not properly managed.

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-05-08]] and last modified on [[2024-05-08]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Create Scheduled Tasks Inventory]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Create Scheduled Tasks Inventory"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024