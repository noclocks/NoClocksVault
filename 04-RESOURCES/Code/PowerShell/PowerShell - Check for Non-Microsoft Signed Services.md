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
  - PowerShell PowerShell - Check for Non-Microsoft Signed Services Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Check for Non-Microsoft Signed Services PowerShell Code

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
> - *[Get-Non_Microsoft_Signed_Services.ps1 · HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Check%20for%20non-Microsoft%20Signed%20Windows%20Services/Get-Non_Microsoft_Signed_Services.ps1)*

## Code Snippet

- [`Get-NonMicrosoftSignedServices.ps1`](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Check%20for%20non-Microsoft%20Signed%20Windows%20Services/Get-Non_Microsoft_Signed_Services.ps1)

```powershell
[CmdletBinding()]
param (
    [Parameter(Mandatory = $false)][String[]]$ComputerName = $env:COMPUTERNAME,
    [parameter(Mandatory = $false)][string]$Filename
)

#Validate output $filename
if ($Filename) {
    if (-not ($Filename.EndsWith('.xlsx'))) {
        Write-Warning ("Specified {0} filename does not end with .xlsx, exiting..." -f $Filename)
        return
    }

    #Check access to the path, and if the file already exists, append if it does or test the creation of a new one
    if (-not (Test-Path -Path $Filename)) {
        try {
            New-Item -Path $Filename -ItemType File -Force:$true -Confirm:$false -ErrorAction Stop | Out-Null
            Remove-Item -Path $Filename -Force:$true -Confirm:$false | Out-Null
            Write-Host ("Specified {0} filename is correct, and the path is accessible, continuing..." -f $Filename) -ForegroundColor Green
        }
        catch {
            Write-Warning ("Path to specified {0} filename is not accessible, correct or file is in use, exiting..." -f $Filename)
            return
        }
    }
    else {
        Write-Warning ("Specified file {0} already exists, appending data to it..." -f $Filename)
    }

    #Check if the ImportExcel module is installed. Install it if not
    if (-not (Get-Module -ListAvailable -Name ImportExcel)) {
        Write-Warning ("The ImportExcel module was not found on the system, installing now...")
        try {
            Install-Module -Name ImportExcel -SkipPublisherCheck -Force:$true -Confirm:$false -Scope CurrentUser -ErrorAction Stop
            Import-Module -Name ImportExcel -Scope Local -ErrorAction Stop
            Write-Host ("Successfully installed the ImportExcel module, continuing..") -ForegroundColor Green
        }
        catch {
            Write-Warning ("Could not install the ImportExcel module, exiting...")
            return
        }
    }
    else {
        Write-Host ("The ImportExcel module was found on the system, continuing...") -ForegroundColor Green
    }
}

#Set $total to $null for when running script multiple times in one session
$total = $null

#Retrieve services on system and check if they are signed using a Microsoft signature (Trusted)
$total = foreach ($Computer in $ComputerName) {
    try {
        $count = 0
        $services = Get-WmiObject -Class Win32_Service -ComputerName $Computer -ErrorAction Stop | Select-Object Displayname, Name, PathName, State, StartName, StartMode | Sort-Object DisplayName
        Write-Host ("Retrieving information for {0} services on {1}" -f $services.count, $($Computer)) -ForegroundColor Green
        foreach ($service in $services) {
            $count++
            Write-Progress ("Checking service {0} on {1}" -f $service.Displayname, $($Computer)) -PercentComplete (($count * 100) / $services.count) -Status "$(([math]::Round((($count)/$services.count * 100),0))) %"
            if ($null -ne $service.PathName) {
                $servicepath = $service.PathName -replace '^(?:"(.+?)"|([^ ]+)).*', '$1$2'
                $servicepath = "\\$($computer)\$($servicepath.Substring(0,1))$" + "$($servicepath.Substring(2))"
                if (Test-Path -Path $servicepath) {
                    if (-not ((Get-AuthenticodeSignature $($servicepath)).SignerCertificate.Subject -match 'O=Microsoft Corporation')) {
                        [PSCustomObject]@{
                            ComputerName = $Computer
                            DisplayName  = $service.DisplayName
                            Name         = $service.Name
                            'Log on as'  = $service.StartName
                            StartMode    = $service.StartMode
                            State        = $service.State
                            Path         = $service.PathName
                        }
                    }
                }
            }
        }
    }
    catch {
        Write-Warning ("Error connecting {0}, skipping..." -f $Computer)
    }
}

#Output to GridView or Excel is results were found
if ($Total.Count -gt 0) {
    if (-not $Filename) {
        $Total | Sort-Object ComputerName, DisplayName | Out-GridView -Title 'Non-Microsoft Signed Services'
    }
    else {
        $Date = Get-Date -Format 'dd-MM-yyyy HH-mm'
        $Total | Export-Excel -Path $Filename -WorksheetName "Services_$($Date)" -AutoFilter -AutoSize -Append
        Write-Host ("Exported Non-Microsoft Signed Services to {0}" -f $Filename) -ForegroundColor Green
    } 
}
else {
    Write-Host ("No Non-Microsoft Signed Services found on {0}..." -f $ComputerName)
}
```

## Details

This PowerShell script is designed to retrieve information about services running on a system, specifically those not signed by Microsoft, and output the results either to a GridView or an Excel file.

The script begins by defining two parameters: `$ComputerName` and `$Filename`. `$ComputerName` is an array of strings that defaults to the name of the current computer if no other value is provided. `$Filename` is a string that represents the name of an Excel file where the results will be stored.

The script then validates the `$Filename` parameter. If a filename is provided, the script checks if it ends with '.xlsx'. If it doesn't, a warning is issued and the script exits. If the filename is valid, the script checks if the file already exists. If it doesn't, the script attempts to create a new file at the specified path and then immediately deletes it. This is done to verify that the path is accessible and that a file can be created there. If the file already exists, a warning is issued stating that data will be appended to it.

Next, the script checks if the `ImportExcel` module is installed on the system. If it's not, the script attempts to install it. If the installation fails, a warning is issued and the script exits. If the module is already installed or the installation is successful, the script continues.

The script then retrieves information about the services running on the system. For each service, the script checks if it's signed by Microsoft. If it's not, the script creates a custom object with information about the service and adds it to the `$total` array.

Finally, the script checks if any non-Microsoft signed services were found. If they were, the script outputs the results either to a GridView or an Excel file, depending on whether a filename was provided. If no non-Microsoft signed services were found, the script issues a message stating this.

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-05-08]] and last modified on [[2024-05-08]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Check for Non-Microsoft Signed Services]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Check for Non-Microsoft Signed Services"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024