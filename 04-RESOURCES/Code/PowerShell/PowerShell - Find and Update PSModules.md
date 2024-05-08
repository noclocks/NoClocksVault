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
  - PowerShell PowerShell - Find and Update PSModules Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Find and Update PSModules PowerShell Code

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
> - *[Powershellisfun/Check for PowerShell modules updates/Find-ModuleUpdates.ps1 at main · HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Check%20for%20PowerShell%20modules%20updates/Find-ModuleUpdates.ps1)*

## Code Snippet

- [`Find-ModuleUpdates.ps1`](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Check%20for%20PowerShell%20modules%20updates/Find-ModuleUpdates.ps1)

```powershell
# Parameter for filtering modules for specific pattern, e.g. *Graph*
param (
    [Parameter(Mandatory = $false)][string]$NameFilter = '*'
)

#Retrieve all installed modules
Write-Host ("Retrieving installed PowerShell modules") -ForegroundColor Green
[array]$InstalledModules = Get-InstalledModule -Name $NameFilter -ErrorAction SilentlyContinue

#Retrieve current versions of modules (63 at a time because of PSGallery limit) if $InstalledModules is greater than 0
if ($InstalledModules.Count -eq 1) {
    $onlineversions = $null
    Write-Host ("Checking online versions for installed module {0}" -f $name) -ForegroundColor Green
    $currentversions = Find-Module -Name $CurrentModules.name
    $onlineversions = $onlineversions + $currentversions
}

if ($InstalledModules.Count -gt 1) {
    $startnumber = 0
    $endnumber = 62
    $onlineversions = $null
    while ($InstalledModules.Count -gt $onlineversions.Count) {
        Write-Host ("Checking online versions for installed modules [{0}..{1}/{2}]" -f $startnumber, $endnumber, $InstalledModules.Count) -ForegroundColor Green
        $currentversions = Find-Module -Name $InstalledModules.name[$startnumber..$endnumber]
        $startnumber = $startnumber + 63
        $endnumber = $endnumber + 63
        $onlineversions = $onlineversions + $currentversions
    }
}
if (-not $onlineversions) {
    Write-Warning ("No modules were found to check for updates, please check your NameFilter. Exiting...")
    return
}

#Loop through all modules and check for newer versions and add those to $total
$number = 1
Write-Host ("Checking for updated versions") -ForegroundColor Green
$total = foreach ($module in $InstalledModules) {
    Write-Progress ("[{0}/{1} Checking module {2}" -f $number, $InstalledModules.count, $module.name)
    try {
        $PsgalleryModule = $onlineversions | Where-Object name -eq $module.Name
        if ([version]$module.version -lt [version]$PsgalleryModule.version) {
            [PSCustomObject]@{
                Repository          = $module.Repository
                'Module name'       = $module.Name
                'Installed version' = $module.Version
                'Latest version'    = $PsgalleryModule.version
                'Published on'      = $PsgalleryModule.PublishedDate
            }
        }
    }
    catch {
        Write-Warning ("Could not find module {0}" -f $module.Name)
    }
    $number++
}

#Output $total to display updates for installed modules if any
if ($total.Count -gt 0) {
    Write-Host ("Found {0} updated modules" -f $total.Count) -ForegroundColor Green
    $total | Format-Table -AutoSize
}
else {
    Write-Host ("No updated modules were found")
}
```

## Details

This PowerShell script is designed to check for updates to installed PowerShell modules. It starts by defining a parameter [`$NameFilter`](command:_github.copilot.openSymbolFromReferences?%5B%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22Untitled-2%22%2C%22_sep%22%3A1%2C%22path%22%3A%22Untitled-2%22%2C%22scheme%22%3A%22untitled%22%7D%2C%7B%22line%22%3A2%2C%22character%22%3A43%7D%5D "Untitled-2") that can be used to filter the modules based on a specific pattern. If no pattern is provided, it defaults to `*`, which means all modules.

The script then retrieves all installed modules that match the [`$NameFilter`](command:_github.copilot.openSymbolFromReferences?%5B%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22Untitled-2%22%2C%22_sep%22%3A1%2C%22path%22%3A%22Untitled-2%22%2C%22scheme%22%3A%22untitled%22%7D%2C%7B%22line%22%3A2%2C%22character%22%3A43%7D%5D "Untitled-2") pattern using the `Get-InstalledModule` cmdlet. The `-ErrorAction SilentlyContinue` parameter is used to suppress errors if a module is not found.

Next, the script checks the count of installed modules. If there's only one module, it retrieves the online version of that module using the `Find-Module` cmdlet and stores it in the [`$onlineversions`](command:_github.copilot.openSymbolFromReferences?%5B%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22Untitled-2%22%2C%22_sep%22%3A1%2C%22path%22%3A%22Untitled-2%22%2C%22scheme%22%3A%22untitled%22%7D%2C%7B%22line%22%3A11%2C%22character%22%3A4%7D%5D "Untitled-2") array. If there are more than one modules, it retrieves the online versions of the modules in batches of 63 (due to a limit in PSGallery) and stores them in the [`$onlineversions`](command:_github.copilot.openSymbolFromReferences?%5B%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22Untitled-2%22%2C%22_sep%22%3A1%2C%22path%22%3A%22Untitled-2%22%2C%22scheme%22%3A%22untitled%22%7D%2C%7B%22line%22%3A11%2C%22character%22%3A4%7D%5D "Untitled-2") array.

If no online versions are found, the script issues a warning and exits.

The script then loops through each installed module and checks if there's a newer version available online. It does this by comparing the installed version with the online version. If a newer version is found, it creates a custom PowerShell object with details about the module and adds it to the `$total` array.

Finally, the script checks the count of the `$total` array. If there are any elements in the array, it means that updates were found. It then outputs the count of updated modules and a table with details about the updates. If no updates were found, it outputs a message saying "No updated modules were found".

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-05-08]] and last modified on [[2024-05-08]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Find and Update PSModules]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Find and Update PSModules"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024