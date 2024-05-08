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
  - PowerShell PowerShell - Compact Hyper-V Disks Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Compact Hyper-V Disks PowerShell Code

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
> - *[Powershellisfun/Compact Hyper-V VHDX files/Compact-VHDX.ps1 at main · HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Compact%20Hyper-V%20VHDX%20files/Compact-VHDX.ps1)*

## Code Snippet

> [!WARNING]
> The script/function name was renamed to `Compress-VHDX` to be inline with the [[PowerShell Approved Verbs]].

- [`Compress-VHDX`](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Compact%20Hyper-V%20VHDX%20files/Compact-VHDX.ps1)

```powershell
#Requires -RunAsAdministrator
function Compress-VHDX {
    param (
        [Parameter(Mandatory = $false, HelpMessage = "Enter the name of the machine(s) from which space of the VHDX(s) should be recovered")][string[]]$VMName
    )
      
    #Validate if hyper-v module is available, install when needed
    if (-not (Get-Module -listAvailable -Name Hyper-V)) {
        Write-Warning "Hyper-V module is not installed, installing now..."
        Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Management-PowerShell -NoRestart:$true
    }

    #Check if specified VMName is valid if specified
    if ($VMName) {
        if (-not (Hyper-V\Get-VM -Name $VMName -ErrorAction SilentlyContinue)) {
            Write-Warning ("Specified VM {0} was not found, aborting..." -f $VMName)
            return
        }
    }
    
    #Validate if the Virtual machine specified is running, abort if yes
    if ($VMName) {
        foreach ($vm in $VMName) {
            if ((Hyper-V\Get-VM -Name $VM).State -eq 'Running') {
                Write-Warning ("One or more of the specified VM(s) {0} were found but are running, please shutdown VM(s) first. Aborting..." -f $VM)
                return
            }
        }
    }
    
    #Gather all VHDXs from the VMs (or VM is $VMName was specified which don't have a parent/snapshot
    if (-not ($VMName)) {
        $vhds = Hyper-V\Get-VM | Hyper-V\Get-VMHardDiskDrive | Where-Object Path -Like '*.vhdx' | Sort-Object VMName, Path
    }
    else {
        $vhds = Hyper-V\Get-VM $VMName | Hyper-V\Get-VMHardDiskDrive | Where-Object Path -Like '*.vhdx' | Sort-Object Path
    }

    if ($null -eq $vhds) {
        Write-Warning ("No disk(s) found without parent/snapshot configuration, aborting....")
    }

    #Gather current size of VHDX files
    $oldsize = foreach ($vhd in $vhds) {
        if ((Hyper-V\Get-VHD $vhd.path).VhdType -eq 'Dynamic') {
            [PSCustomObject]@{
                VHD     = $vhd.Path
                OldSize = [math]::round((Get-Item $vhd.Path).Length / 1GB, 3)
            }
        }
    }

    #Compress all files
    foreach ($vhd in $vhds) {
        if (-not (Hyper-V\Get-VM $vhd.VMName  | Where-Object State -eq Running)) {
            Write-Host ("`nProcessing {0} from VM {1}..." -f $vhd.Path, $vhd.VMName) -ForegroundColor Gray
            try {
                Hyper-V\Mount-VHD -Path $vhd.Path -ReadOnly -ErrorAction Stop
                Write-Host "Mounting VHDX" -ForegroundColor Green
            }
            catch {
                Write-Warning ("Error mounting {0}, please check access or if file is locked..." -f $vhd.Path )
                continue
            }

            try {
                Hyper-V\Optimize-VHD -Path $vhd.Path -Mode Full
                Write-Host ("Compacting VHDX") -ForegroundColor Green
            }
            catch {
                Write-Warning ("Error compacting {0}, dismounting..." -f $vhd.Path)
                Hyper-V\Dismount-VHD $vhd.Path
                return
            }

            try { 
                Hyper-V\Dismount-VHD $vhd.Path -ErrorAction Stop
                Write-Host ("Dismounting VHDX`n") -ForegroundColor Green
            }
            catch {
                Write-Warning ("Error dismounting {0}, please check Disk Management and manually dismount..." -f $vhd.Path)
                return
            }        
        }
        else {
            Write-Warning ("VM {0} is Running, skipping..." -f $vhd.VMName)
        }
    }

    #Report on new VHDX sizes
    $report = foreach ($vhd in $vhds) {
        if ((Hyper-V\Get-VHD  $vhd.path).VhdType -eq 'Dynamic') {
            [PSCustomObject]@{
                'Old Size (Gb))'       = ($oldsize | Where-Object VHD -eq $vhd.Path).OldSize
                'New Size (Gb)'        = [math]::round((Get-Item $vhd.Path).Length / 1GB, 3)
                'Space recovered (Gb)' = ($oldsize | Where-Object VHD -eq $vhd.Path).OldSize - [math]::round((Get-Item $vhd.Path).Length / 1GB, 3)
                VM                     = $vhd.VMName
                VHD                    = $vhd.Path
            }
        }
    }
    
    #Show overview
    if ($null -ne $report) {
        return $report | Format-Table -AutoSize
    }
    else {
        Write-Warning ("No dynamic disk(s) found to recover hard-disk space from, aborting....")
    }
}
```

## Details

This PowerShell script defines a function [`Compress-VHDX`](command:_github.copilot.openSymbolFromReferences?%5B%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22Untitled-2%22%2C%22_sep%22%3A1%2C%22path%22%3A%22Untitled-2%22%2C%22scheme%22%3A%22untitled%22%7D%2C%7B%22line%22%3A1%2C%22character%22%3A9%7D%5D "Untitled-2") that is used to compress VHDX (Virtual Hard Disk) files of Hyper-V virtual machines (VMs). The function requires administrator privileges to run, as indicated by the `#Requires -RunAsAdministrator` directive.

The function accepts an optional parameter [`$VMName`](command:_github.copilot.openSymbolFromReferences?%5B%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22Untitled-2%22%2C%22_sep%22%3A1%2C%22path%22%3A%22Untitled-2%22%2C%22scheme%22%3A%22untitled%22%7D%2C%7B%22line%22%3A3%2C%22character%22%3A151%7D%5D "Untitled-2"), which is an array of strings representing the names of the VMs from which space of the VHDX files should be recovered.

The function first checks if the Hyper-V module is installed. If not, it installs the module using the `Enable-WindowsOptionalFeature` cmdlet.

Next, it validates the provided VM names. If a VM name is provided and it does not correspond to an existing VM, the function issues a warning and aborts. If a VM is currently running, the function also issues a warning and aborts, as the VM needs to be shut down before its VHDX files can be compressed.

The function then gathers all VHDX files from the specified VMs (or all VMs if no VM name is provided) that do not have a parent/snapshot. If no such VHDX files are found, the function issues a warning and aborts.

For each gathered VHDX file, the function records its current size and then attempts to compress it. The compression process involves mounting the VHDX file, optimizing it using the `Optimize-VHD` cmdlet, and then dismounting it. If any of these steps fail, the function issues a warning and aborts.

Finally, the function generates a report on the new sizes of the VHDX files and the amount of space recovered from each file. If no dynamic disks were found to recover space from, the function issues a warning and aborts. Otherwise, it returns the report formatted as a table.

***

## Appendix

*Note created on [[2024-05-08]] and last modified on [[2024-05-08]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]
- [[Tool - Hyper-V|Hyper-V]]
- [[Cheatsheet - Windows CMD|Windows CMD]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Compact Hyper-V Disks]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Compact Hyper-V Disks"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024