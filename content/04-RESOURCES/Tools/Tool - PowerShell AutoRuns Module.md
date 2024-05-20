---
creation_date: 2024-05-17
modification_date: 2024-05-17
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Type/Tool/PowerShell
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - PowerShell AutoRuns Module
  - AutoRuns Module
  - PSAutoRuns
publish: true
permalink:
description:
image:
cssclasses:
  - tool
---


# PowerShell AutoRuns Module

> [!SOURCE] Sources:
> - *[p0w3rsh3ll/AutoRuns: 🚀AutoRuns is a PowerShell module that will help do live incident response and enumerate autoruns artifacts that may be used by legitimate programs as well as malware to achieve persistence. (github.com)](https://github.com/p0w3rsh3ll/AutoRuns)*


```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview


> [!INFO] About:
> **AutoRuns module was designed to help do live incident response and enumerate autoruns artifacts that may be used by legitimate programs as well as malware to achieve persistence.**

## Installation

> [!NOTE] Note:
> The module is located on the [PowerShellGallery](https://www.powershellgallery.com/packages/AutoRuns/14.0.2)

```powershell
# Check the module on powershellgallery.com using PowerShellGet cmdlets
Find-Module -Name Autoruns -Repository PSGallery
```

```
Version    Name                                Repository           Description
-------    ----                                ----------           -----------                                   
14.0.2     AutoRuns                            PSGallery            AutoRuns is a module ...
```

```powershell
# Save the module locally in Downloads folder
Save-Module -Name AutoRuns -Repository PSGallery -Path ~/Downloads
```

Stop and please review the content of the module, I mean the code to make sure it's trustworthy.

You can also verify that the SHA256 hashes of downloaded files match those stored in the catalog file.

```powershell
$HT = @{
    CatalogFilePath = "~/Downloads/AutoRuns/14.0.2/AutoRuns.cat"
    Path = "~/Downloads/AutoRuns/14.0.2"
    Detailed = $true
    FilesToSkip = 'PSGetModuleInfo.xml'
}
Test-FileCatalog @HT
```

```powershell
# Import the module
Import-Module ~/Downloads/AutoRuns/14.0.2/AutoRuns.psd1 -Force -Verbose
```

## Usage

### Commands

Check available commands:

```powershell
Get-Command -Module AutoRuns
```

```
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Compare-AutoRunsBaseLine                           14.0.2     AutoRuns
Function        Get-PSAutorun                                      14.0.2     AutoRuns
Function        New-AutoRunsBaseLine                               14.0.2     AutoRuns
```

### Syntax

#### Get-PSAutorun

```powershell
# View the syntax of Get-PSAutorun
Get-Command Get-PSAutorun -Syntax

Get-PSAutorun [-All] [-BootExecute] [-AppinitDLLs] [-ExplorerAddons] [-ImageHijacks] [-InternetExplorerAddons] [-KnownDLLs] [-Logon] [-Winsock] [-Codecs] [-OfficeAddins] [-PrintMonitorDLLs] [-LSAsecurityProviders] [-ServicesAndDrivers] [-ScheduledTasks] [-Winlogon] [-WMI] [-PSProfiles] [-ShowFileHash] [-VerifyDigitalSignature] [-User <string>] [<CommonParameters>]

Get-PSAutorun [-All] [-BootExecute] [-AppinitDLLs] [-ExplorerAddons] [-ImageHijacks] [-InternetExplorerAddons] [-KnownDLLs] [-Logon] [-Winsock] [-Codecs] [-OfficeAddins] [-PrintMonitorDLLs] [-LSAsecurityProviders] [-ServicesAndDrivers] [-ScheduledTasks] [-Winlogon] [-WMI] [-PSProfiles] [-Raw] [-User <string>] [<CommonParameters>]
```

#### New-AutoRunsBaseLine

```powershell
# View the syntax of New-AutoRunsBaseLine
Get-Command New-AutoRunsBaseLine -Syntax

New-AutoRunsBaseLine [-InputObject] <Object[]> [[-FilePath] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

#### Compare-AutoRunsBaseLine

```powershell
# View the syntax of Compare-AutoRunsBaseLine
Get-Command Compare-AutoRunsBaseLine -Syntax

Compare-AutoRunsBaseLine [[-ReferenceBaseLineFile] <string>] [[-DifferenceBaseLineFile] <string>] [<CommonParameters>]
```

### Examples


#### Get-PSAutorun

```powershell
# Get examples from the help
 Get-Help Get-PSAutorun  -Examples

NAME
    Get-PSAutorun

SYNOPSIS
    Get Autorun entries.

    -------------------------- EXAMPLE 1 --------------------------

    PS C:\>Get-PSAutorun -BootExecute -AppinitDLLs

    -------------------------- EXAMPLE 2 --------------------------

    PS C:\>Get-PSAutorun -KnownDLLs -LSAsecurityProviders -ShowFileHash

    -------------------------- EXAMPLE 3 --------------------------

    PS C:\>Get-PSAutorun -All -ShowFileHash -VerifyDigitalSignature

    -------------------------- EXAMPLE 4 --------------------------

    PS C:\>Get-PSAutorun -All -User * -ShowFileHash -VerifyDigitalSignature

```

#### New-AutoRunsBaseLine

```powershell
# Piping the filtered output of the Get-PSAutorun to the New-AutoRunsBaseLine function will create a .ps1 file in ~/Documents
Get-PSAutorun -VerifyDigitalSignature |
Where { -not($_.isOSbinary)} |
New-AutoRunsBaseLine -Verbose

# On Windows PowerShell, you can use the Out-GridView cmdlet to run and view the content of the file created
~\Documents\PSAutoRunsBaseLine-20201102214715.ps1 |
Out-GridView -PassThru
```

#### Compare-AutoRunsBaseLine

```powershell
# You need two files in ~/Documents generated by the New-AutoRunsBaseLine function
Compare-AutoRunsBaseLine -Verbose
```

## Issues

- What are registrations in the WMI\Default namespace introduced in Autoruns v13.7? see [c7eab48c77f578e0dcff61d2b46a479b28225a56](https://github.com/p0w3rsh3ll/AutoRuns/commit/c7eab48c77f578e0dcff61d2b46a479b28225a56)
    
- If you run PowerShell 5.1 and Applocker in allow mode, you need to add a local appplocker rule that allows the module to be loaded. The module files aren't signed anymore with a DigiCert certificate.
    

If your corporate admin has turned off local group policy objects processing on a domain joined device, you'll need to add the trusted publisher rule in a Domain group policy.

```powershell
gp 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name DisableLGPOProcessing -EA 0
```

## Other links

- [https://live.sysinternals.com](https://live.sysinternals.com/)
- [https://docs.microsoft.com/en-us/sysinternals](https://docs.microsoft.com/en-us/sysinternals/)
- [https://docs.microsoft.com/en-us/archive/blogs/sysinternals](https://docs.microsoft.com/en-us/archive/blogs/sysinternals/)

## Original Autoruns from Mark Russinovich

> [!SOURCE] See https://docs.microsoft.com/en-us/sysinternals/downloads/autoruns.

[Autoruns v14.1](https://techcommunity.microsoft.com/t5/sysinternals-blog/sysmon-v15-0-autoruns-v14-1-and-process-monitor-v3-95/ba-p/3857916)

> This update to Autoruns, a utility for monitoring startup items, fixes a bug with detecting non-shortcut files in startup folders, fixes a bug with handling non-UNC, non-absolute paths, and improves theming support.

[Autoruns v14.09](https://techcommunity.microsoft.com/t5/sysinternals-blog/autoruns-v14-09-procmon-v3-89-sysmon-v13-33-and-zoomit-v5-10/ba-p/3176054)

> This Autoruns update fixes a bug preventing the enabling/disabling of startup folder items.

[Autoruns v14.08](https://techcommunity.microsoft.com/t5/sysinternals-blog/zoomit-v5-0-rdcman-v2-90-autoruns-procmon-tcpview-vmmap-sysmon/ba-p/3075276)

> This Autoruns update fixes a series of application crashes, now correctly parses paths with spaces passed as command line arguments and improves .arn import functionality.

[Autoruns v14.07](https://techcommunity.microsoft.com/t5/sysinternals-blog/adexplorer-v1-51-autoruns-v14-07-cacheset-v1-02-process-monitor/ba-p/3040515)

> This Autoruns update can open .arn files from the command line, fixes RunDll32 parameter handling in some cases, supports toggling Active Setup entries, fixes a crash when no ProcExp can be found in the path and improves 32/64 bit redirection.

[Autoruns v14.06](https://techcommunity.microsoft.com/t5/sysinternals-blog/autoruns-v14-06-and-sysmon-v13-30/ba-p/2887598)

> This Autoruns release fixes a crash happening for scheduled tasks containing spaces.

[Autoruns v14.05](https://techcommunity.microsoft.com/t5/sysinternals-blog/autoruns-v14-05/ba-p/2844204)

> This update for Autoruns addresses a bug preventing opening and comparing .arn files.

[Autoruns v14.04](https://techcommunity.microsoft.com/t5/sysinternals-blog/autoruns-v14-04-high-dpi-icons-for-winobj-tcpview-process/ba-p/2839719)

> This update for Autoruns adds a series of display/theme fixes, restores autorunsc, fixes a regression for rundll32 entries, limits per-user scans to the user locations, fixes Microsoft entry hiding and adds a high DPI application icon.

[Autoruns v14.03](https://techcommunity.microsoft.com/t5/sysinternals-blog/autoruns-v14-03/ba-p/2800248)

> This update for Autoruns restores entries previously shown in v13.100, improves Wow64 redirection handling and entry name resolution.

[Autoruns v14.02](https://techcommunity.microsoft.com/t5/sysinternals-blog/autoruns-v14-02-winobj-v3-12-tcpview-v4-15-and-process-monitor/ba-p/2775709)

> Autoruns, a utility for monitoring startup items, receives a series of UI improvements related to the dark theme and general Windows 10 tweaks, VirusTotal and signed files regressions fixes.

[Autoruns v14.01](https://techcommunity.microsoft.com/t5/sysinternals-blog/autoruns-v14-01/ba-p/2708458)

> This update for Autoruns fixes a regression with VirusTotal submissions introduced in v14.0.

[Autoruns v14.0](https://techcommunity.microsoft.com/t5/sysinternals-blog/autoruns-v14-0-rdcman-v2-83-procdump-v10-11-dark-theme-updates/ba-p/2661936)

> Autoruns, a utility for monitoring startup items, is the latest Sysinternals tool to receive a UI overhaul including a dark theme.

[Autoruns v13.100](https://techcommunity.microsoft.com/t5/sysinternals-blog/autoruns-v13-100/ba-p/2282998)

> This update to Autoruns fixes a crash reported in v13.99.

[Autoruns v13.99](https://techcommunity.microsoft.com/t5/sysinternals-blog/procmon-v3-70-sysmon-v13-10-autoruns-v13-99-tcpview-v4-01-and/ba-p/2280263)

> This update to Autoruns fixes a bug that resulted in some empty locations being hidden when the Include Empty Locations option is selected.

[Autoruns v13.98](https://techcommunity.microsoft.com/t5/sysinternals-blog/sysmon-v11-10-sigcheck-v2-80-autoruns-v13-98/ba-p/1485287)

> This release of Autoruns resolves an issue where Microsoft Defender binaries were being flagged as unsigned.

[Autoruns v13.95](https://blogs.technet.microsoft.com/sysinternals/2019/06/12/sysmon-v10-0-autoruns-v13-95-vmmap-v3-26/)

> This Autoruns update adds support for user Shell folders redirections.

[Autoruns v13.94](https://blogs.technet.microsoft.com/sysinternals/2019/02/19/sysmon-v9-0-autoruns-v13-94/)

> This Autoruns update fixes a bug that prevented the correct display of the target of image hosts such as svchost.exe, rundll32.exe, and cmd.exe.

[Autoruns v13.93](https://blogs.technet.microsoft.com/sysinternals/2018/12/09/autoruns-v13-93-handle-v4-21-process-explorer-v16-22-sdelete-v2-02-sigcheck-v2-71-sysmon-v8-02-and-vmmap-v3-25/)

> This Autoruns update fixes a bug that prevented UserInitMprLogonScript from being scanned and by-default enables HCKU scanning for the console version.

[Autoruns v13.90](https://blogs.technet.microsoft.com/sysinternals/2018/07/05/sysmon-v8-0-autoruns-v13-90/)

> Autoruns, a comprehensive Windows autostart entry point (ASEP) manager, now includes Runonce*\Depend keys and GPO logon and logoff locations, as well as fixes a bug in WMI path parsing.

[Autoruns v13.82](https://blogs.technet.microsoft.com/sysinternals/2018/02/17/process-monitor-v3-50-autoruns-v13-82-du-v1-61-sdelete-v2-01/)

> This Autoruns release shows Onenote addins and fixes several bugs.

[Autoruns v13.81](https://blogs.technet.microsoft.com/sysinternals/2017/12/12/autoruns-v13-81-bginfo-v423-handle-v4-11/)

> This update to Autoruns fixes a Wow64 bug in Autorunsc that could cause 32-bit paths to result in 'file not found' errors, and expands the set of images not considered part of Windows for the Windows filter in order to reveal malicious files masquerading as Windows images

[Autoruns v13.80](https://blogs.technet.microsoft.com/sysinternals/2017/09/12/sysinternals-update-sysmon-v6-1-process-monitor-v3-4-autoruns-v13-8-accesschk-v6-11/)

> This release of Autoruns, a utility for viewing and managing autostart execution points (ASEPs), adds additional autostart entry points, has asynchronous file saving, fixes a bug parsing 32-bit paths on 64-bit Windows, shows the display name for drivers and services, and fixes a bug in offline Virus Total scanning.

[Autoruns v13.71](https://blogs.technet.microsoft.com/sysinternals/2017/05/16/sysinternals-update-procdump-v9-autoruns-v13-71-bginfo-v4-22-livekd-v5-62-process-monitor-v3-33-process-explorer-v16-21/)

> This update to Autoruns, a comprehensive autostart execution point manager, adds Microsoft HTML Application Host (mshta.exe) as hosting image so it displays the hosted image details, and now doesn’t apply filters to hosting images.

[Autoruns v13.7](https://blogs.technet.microsoft.com/sysinternals/2017/02/17/update-sysmon-v6-autoruns-v13-7-accesschk-v6-1-process-monitor-v3-32-process-explorer-v16-2-livekd-v5-61-and-bginfo-v4-21/)

> Autoruns, an autostart entry point management utility, now reports print providers, registrations in the WMI\Default namespace, fixes a KnownDLLs enumeration bug, and has improved toolbar usability on high-DPI displays.

[Autoruns v13.51](https://blogs.technet.microsoft.com/sysinternals/2016/01/05/update-sigcheck-v2-4-sysmon-v3-2-process-explorer-v16-1-autoruns-v13-51-accesschk-v6-01/)

> This release of Autoruns, a comprehensive autostart entry manager, fixes a WMI command-line parsing bug, emits a UNICODE BOM in the file generated when saving results to a text file, and adds back the ability to selectively verify the signing status of individual entries.

[Autoruns v13.5](https://blogs.technet.microsoft.com/sysinternals/2015/10/26/update-autoruns-v13-5-sigcheck-v2-3-rammap-v1-4-bginfo-v4-21-sysmon-v3-11-adinsight-v1-2/)

> This update to Autoruns, the most comprehensive autostart viewer and manager available for Windows, now shows 32-bit Office addins and font drivers, and enables resubmission of known images to Virus Total for a new scan.

[Autoruns v13.4](https://blogs.technet.microsoft.com/sysinternals/2015/05/26/update-accesschk-v6-0-autoruns-v13-4-process-monitor-v3-2-vmmap-v3-2/)

> Autoruns, the most comprehensive utility available for showing what executables, DLLs, and drivers are configured to automatically start and load, now reports Office addins, adds several additional autostart locations, and no longer hides hosting executables like cmd.exe, powershell.exe and others when Windows and Microsoft filters are in effect.

[Autoruns v13.3](https://blogs.technet.microsoft.com/sysinternals/2015/04/20/update-sysmon-v3-0-autornus-v13-3-regjump-v1-1-process-monitor-v3-11/)

> Autoruns, a utility that shows what processes, DLLs, and drivers are configured to automatically load, adds reporting of GP extension DLLs and now shows the target of hosting processes like cmd.exe and rundll32.exe.

[Autoruns v13.2](https://blogs.technet.microsoft.com/sysinternals/2015/03/10/update-livekd-v5-4-autoruns-v13-2-sigcheck-v2-2-process-explorer-v16-05/)

> In addition to bug fixes to CSV and XML output, Autorunsc introduces import-hash reporting, and Autoruns now excludes command-line and other host processes from the Microsoft and Windows filters.

[Autoruns v13.01](https://blogs.technet.microsoft.com/sysinternals/2015/02/09/update-autoruns-v13-01/)

> This release fixes a bug in v13 that caused autostart entry lines not to show when you enter a filter string into the toolbar's filter control

[Autoruns v13.0](https://blogs.technet.microsoft.com/sysinternals/2015/01/29/update-autoruns-v13-0/)

> This major update to Autoruns, an autostart execution point (ASEP) manager, now has integration with Virustotal.com to show the status of entries with respect to scans by over four dozen antimalware engines. It also includes a revamped scanning architecture that supports dynamic filters, including a free-form text filter, a greatly improved compare feature that highlights not just new items but deleted ones as well, and file saving and loading that preserves all the information of a scan

[Autoruns v12.03](https://blogs.technet.microsoft.com/sysinternals/2014/09/11/updates-handle-v4-0-procdump-v7-01-procexp-v16-04-regjump-v1-02-autoruns-v12-03/)

> This update to Autoruns adds the registered HTML file extension, fixes a bug that could cause disabling of specific entry types to fail with a “path not found” error, and addresses another that could prevent the Jump-to-image function from opening the selected image on 64-bit Windows.

[Autoruns v12.02](https://blogs.technet.microsoft.com/sysinternals/2014/08/19/updates-autoruns-v12-02-coreinfo-v3-31-sysmon-v1-01-whois-v1-12/)

> This fixes a bug that could cause Autoruns to crash on startup, updates the image path parsing for Installed Components to remove false positive file-not-found entries, and correctly reports image entry timestamps in local time instead of UTC.

[Autoruns v12.01](https://blogs.technet.microsoft.com/sysinternals/2014/08/08/new-sysmon-v1-0-updates-autoruns-v12-01-coreinfo-v3-3-procexp-v16-03/)

> This update to Autoruns, a utility that comes in Windows application and command-line forms, has numerous bug fixes, adds a profile attribute/column to CSV and XML output, and interprets the CodeBase value for COM object registrations.

[Autoruns v12.0](https://blogs.technet.microsoft.com/sysinternals/2014/05/13/updates-autoruns-v12-0-procdump-v7-0/)

> This release of Autoruns, a Windows application and command-line utility for viewing autostart entries, now reports the presence of batch file and executable image entries in the WMI database, a vector used by some types of malware.

[Autoruns v11.70](https://blogs.technet.microsoft.com/sysinternals/2013/08/01/autoruns-v11-70-bginfo-v4-20-disk2vhd-v1-64-process-explorer-v15-40/)

> This release of Autoruns, a powerful utility for scanning and disabling autostart code, adds a new option to have it show only per-user locations, something that is useful when analyzing the autostarts of different accounts than the one that Autoruns is running under.

[Autoruns v11.62](https://blogs.technet.microsoft.com/sysinternals/2013/07/01/update-autoruns-v11-62/)

> This release fixes a bug in version 11.61’s jump-to-image functionality.

***

## Appendix

*Note created on [[2024-05-17]] and last modified on [[2024-05-17]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Tool - PowerShell AutoRuns Module]] AND -"CHANGELOG" AND -"04-RESOURCES/Tools/Tool - PowerShell AutoRuns Module"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024