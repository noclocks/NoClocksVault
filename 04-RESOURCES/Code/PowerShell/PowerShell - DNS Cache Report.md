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
  - PowerShell PowerShell - DNS Cache Report Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# DNS Cache Report PowerShell Code

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
> - *[Powershellisfun/Create a Report on DNS lookups/Get-DnsCacheReport.ps1 at main · HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Create%20a%20Report%20on%20DNS%20lookups/Get-DnsCacheReport.ps1)*

## Code Snippet

```powershell
function Get-DnsCacheReport {
    param (
        [parameter(Mandatory = $true)][string]$Minutes,
        [parameter(Mandatory = $false)][string]$CSVPath
    )
    
    #check if a valid $CSVPath was provided if used
    if ($CSVPath) {
        if (New-Item -Path $CSVPath -ItemType File -Force:$true -ErrorAction SilentlyContinue) {
            Write-Host ("Path {0} is valid, continuing..." -f $CSVPath) -ForegroundColor Green
        }
        else {
            Write-Warning ("Path {0} is not valid, please check path or permissions. Aborting..." -f $CSVPath)
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
    while ($remain.TotalSeconds -gt 0) {
        Write-Host (" {0} " -f $spinner[$spinnerPos % 4]) -ForegroundColor Green -NoNewline
        write-host ("Gathering DNS Cache information, {0}D {1:d2}h {2:d2}m {3:d2}s remaining..." -f $remain.Days, $remain.Hours, $remain.Minutes, $remain.Seconds) -NoNewline -ForegroundColor Green
        $host.UI.RawUI.CursorPosition = $origpos
        $spinnerPos += 1
        Start-Sleep -seconds $TickLength
        
        #Get DNS Cache and add to $Total variable during the amount of minutes specified
        $dnscache = Get-DnsClientCache
        $total = foreach ($item in $dnscache) {
            #Switch table date is from https://www.darkoperator.com/blog/2020/1/14/getting-dns-client-cached-entries-with-cimwmi
            switch ($item.status) {
                0 { $status = 'Success' }
                9003 { $status = 'NotExist' }
                9501 { $status = 'NoRecords' }
                9701 { $status = 'NoRecords' }        
            }

            switch ($item.Type) {
                1 { $Type = 'A' }
                2 { $Type = 'NS' }
                5 { $Type = 'CNAME' }
                6 { $Type = 'SOA' }
                12 { $Type = 'PTR' } 
                15 { $Type = 'MX' }
                28 { $Type = 'AAAA' }
                33 { $Type = 'SRV' }
            }

            switch ($item.Section) {
                1 { $Section = 'Answer' }
                2 { $Section = 'Authority' }
                3 { $Section = 'Additional' }
            }

            [PSCustomObject]@{
                Entry      = $item.Entry
                RecordType = $Type
                Status     = $status
                Section    = $Section
                Target     = $item.Data            
            }
        }
        $remain = ($d - (get-date))
    }
    $host.UI.RawUI.CursorPosition = $origpos
    Write-Host (" * ")  -ForegroundColor Green -NoNewline
    write-host (" Finished gathering DNS Cache information, displaying results in a Out-Gridview now...") -ForegroundColor Green
    if ($CSVPath) {
        write-host ("Results are also saved as {0}" -f $CSVPath) -ForegroundColor Green
    }
    
    #Save results to $CSVPath if specified as parameter
    if ($CSVPath) {
        $total | Select-Object Entry, RecordType, Status, Section, Target -Unique | Sort-Object Entry | Export-Csv -Path $CSVPath -Encoding UTF8 -Delimiter ';' -NoTypeInformation -Force
    }
    
    #Return results in Out-Gridview
    return $total | Select-Object Entry, RecordType, Status, Section, Target -Unique | Sort-Object Entry | Out-GridView  
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

*Note created on [[2024-05-08]] and last modified on [[2024-05-08]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - DNS Cache Report]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - DNS Cache Report"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024