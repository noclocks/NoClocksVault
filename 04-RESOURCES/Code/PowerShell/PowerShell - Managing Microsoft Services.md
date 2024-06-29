---
creation_date: 2024-06-29
modification_date: 2024-06-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - Managing Microsoft Services with PowerShell
  - Managing Microsoft Services
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Managing Microsoft Services with PowerShell

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
> - *https://chatgpt.com/share/e/4f1e63e7-aae4-476a-8cf0-ebb03b8a0561*

## Code

### Review Services

```powershell
# Backup current service states to a CSV
$backupFile = "C:\ServiceBackup.csv"
Get-Service | Select-Object Name, DisplayName, Status, StartType | Export-Csv -Path $backupFile -NoTypeInformation
```

### Custom Get-ServiceFeedback Function

```powershell
Function Get-ServiceFeedback {
    <#
        .SYNOPSIS
            Reviews the current state of Microsoft Services and provides feedback.
        .PARAMETER ServiceName
            (Optional) Filter to only review certain services.
        .PARAMETER DisplayName
            (Optional) Filter to only review certain services by display name.
        .PARAMETER Status
            Service Status
    #>
    [CmdLetBinding()]
    Param (
        [String[]]$ServiceName,
        [String[]]$DisplayName,
        [String[]]$Status
    )
    
    Process {
        switch ($ServiceName) {
        "DcomLaunch" { "Critical: Should always be running." }
        "RpcSs" { "Critical: Should always be running." }
        "Winmgmt" { "Critical: Should always be running." }
        "gpsvc" { "Critical: Should always be running." }
        "LSM" { "Critical: Should always be running." }
        "ProfSvc" { "Critical: Should always be running." }
        "EventLog" { "Critical: Should always be running." }
        "CryptSvc" { "Critical: Should always be running." }
        "WinDefend" { "Critical: Should always be running." }
        "SamSs" { "Critical: Should always be running." }
        "BFE" { "Recommended: Should be running for firewall and security features." }
        "BITS" { "Recommended: Should be running for background updates and transfers." }
        "Netman" { "Recommended: Should be running for network management." }
        "mpssvc" { "Recommended: Should be running for firewall protection." }
        "Dhcp" { "Recommended: Should be running for network configuration." }
        "Dnscache" { "Recommended: Should be running for DNS resolution." }
        "wuauserv" { "Recommended: Should be running for Windows updates." }
        "netprofm" { "Recommended: Should be running for network profiles." }
        "WinRM" { "Recommended: Should be running for remote management." }
        "BluetoothUserService" { "Optional: Disable if Bluetooth is not used." }
        "Fax" { "Optional: Disable if fax service is not used." }
        "RemoteRegistry" { "Optional: Disable for security if not needed." }
        "CscService" { "Optional: Disable if offline files are not used." }
        "DPS" { "Optional: Disable if diagnostics are not needed." }
        "iphlpsvc" { "Optional: Disable if IPv6 is not used." }
        "seclogon" { "Optional: Disable if secondary logon is not used." }
        "WbioSrvc" { "Optional: Disable if biometric devices are not used." }
        "MapsBroker" { "Optional: Disable if maps are not used." }
        "lfsvc" { "Optional: Disable if location services are not used." }
        "SharedAccess" { "Optional: Disable if internet connection sharing is not used." }
        "XblAuthManager" { "Optional: Disable if Xbox features are not used." }
        "XblGameSave" { "Optional: Disable if Xbox features are not used." }
        "XboxGipSvc" { "Optional: Disable if Xbox features are not used." }
        "XboxNetApiSvc" { "Optional: Disable if Xbox features are not used." }
        "SysMain" { "Optional: Disable to reduce disk usage." }
        "Spooler" { "Optional: Disable if printer is not used." }
        "TabletInputService" { "Optional: Disable if tablet or touchscreen is not used." }
        "TermService" { "Optional: Disable if remote desktop is not used." }
        "TlntSvr" { "Optional: Disable for security if not needed." }
        "SNMPTrap" { "Optional: Disable if SNMP is not used." }
        "WSearch" { "Optional: Disable if Windows search is not used." }
        "WerSvc" { "Optional: Disable if error reporting is not used." }
        "WMPNetworkSvc" { "Optional: Disable if media sharing is not used." }
        default { "No specific recommendation." }
    }
}

    } 

$services = Get-Service | Select-Object Name, DisplayName, Status
$services | ForEach-Object {
    $feedback = Get-ServiceFeedback -ServiceName $_.Name -DisplayName $_.DisplayName -Status $_.Status
    [PSCustomObject]@{
        Name = $_.Name
        DisplayName = $_.DisplayName
        Status = $_.Status
        Feedback = $feedback
    }
} | Format-Table -AutoSize

# Function to apply recommendations
function Apply-Recommendations {
    $servicesToStop = @(
        "BluetoothUserService",
        "Fax",
        "RemoteRegistry",
        "CscService",
        "DPS",
        "iphlpsvc",
        "seclogon",
        "WbioSrvc",
        "MapsBroker",
        "lfsvc",
        "SharedAccess",
        "XblAuthManager",
        "XblGameSave",
        "XboxGipSvc",
        "XboxNetApiSvc",
        "SysMain",
        "Spooler",
        "TabletInputService",
        "TermService",
        "TlntSvr",
        "SNMPTrap",
        "WSearch",
        "WerSvc",
        "WMPNetworkSvc"
    )

    foreach ($service in $servicesToStop) {
        Stop-Service -Name $service -ErrorAction SilentlyContinue
        Set-Service -Name $service -StartupType Disabled
    }

    Write-Output "Recommended changes have been applied. Services have been stopped and set to Disabled."
}

# Function to restore services from backup
function Restore-Services {
    $backup = Import-Csv -Path $backupFile
    foreach ($service in $backup) {
        $currentService = Get-Service -Name $service.Name -ErrorAction SilentlyContinue
        if ($currentService) {
            if ($service.Status -eq "Running") {
                Start-Service -Name $service.Name -ErrorAction SilentlyContinue
            } else {
                Stop-Service -Name $service.Name -ErrorAction SilentlyContinue
            }
            Set-Service -Name $service.Name -StartupType $service.StartType
        }
    }

    Write-Output "Services have been restored to their original state from backup."
}

# Main Menu
function Show-Menu {
    cls
    Write-Host "Service Review and Recommendation Tool"
    Write-Host "1. Generate Service Feedback"
    Write-Host "2. Apply Recommended Changes"
    Write-Host "3. Restore Services from Backup"
    Write-Host "4. Exit"
    $choice = Read-Host "Enter your choice"
    switch ($choice) {
        1 { $services | ForEach-Object { $_.Feedback = Get-ServiceFeedback -ServiceName $_.Name -DisplayName $_.DisplayName -Status $_.Status }; $services | Format-Table -AutoSize; Pause }
        2 { Apply-Recommendations; Pause }
        3 { Restore-Services; Pause }
        4 { Exit }
        default { Write-Host "Invalid choice. Please try again."; Pause }
    }
}

# Loop to show the menu
do {
    Show-Menu
} while ($true)
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

*Note created on [[2024-06-29]] and last modified on [[2024-06-29]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[PowerShell - Managing Microsoft Services]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Managing Microsoft Services"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024