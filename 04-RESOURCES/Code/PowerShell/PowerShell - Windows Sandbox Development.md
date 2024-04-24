---
creation_date: 2024-04-24
modification_date: 2024-04-24
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Windows
  - Topic/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Windows Sandbox Development Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Windows Sandbox Development PowerShell Code

```table-of-contents
title: Contents 
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

### InSandboxScript.ps1

> [!SOURCE] Sources:
> - *[winget-cli/tools/DevInSandbox/InSandboxScript.ps1 at master · microsoft/winget-cli](https://github.com/microsoft/winget-cli/blob/master/tools/DevInSandbox/InSandboxScript.ps1)*

- `InSandboxScript.ps1`:

```powershell
Param(
  [String[]] $DesktopAppInstallerDependencyPath
)

$ProgressPreference = 'SilentlyContinue'

$desktopPath = "C:\Users\WDAGUtilityAccount\Desktop"

Write-Host @"
--> Installing WinGet

"@

foreach($dependency in $DesktopAppInstallerDependencyPath)
{
  Write-Host @"
  ----> Installing $dependency
"@
  Add-AppxPackage -Path $dependency
}

Write-Host @"
  ----> Enabling dev mode
"@
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"

$devPackageManifestPath = Join-Path $desktopPath "DevPackage\AppxManifest.xml"
Write-Host @"
  ----> Installing $devPackageManifestPath
"@
Add-AppxPackage -Path $devPackageManifestPath -Register
```

### Launch-DevPackageInSandbox.ps1

> [!SOURCE] Sources:
> - *[winget-cli/tools/DevInSandbox/Launch-DevPackageInSandbox.ps1 at master · microsoft/winget-cli](https://github.com/microsoft/winget-cli/blob/master/tools/DevInSandbox/Launch-DevPackageInSandbox.ps1)*

```powershell
Param(
  [Parameter(HelpMessage = "The directory where local dev build is located; only the release build works.")]
  [String] $DevPackagePath
)

$ErrorActionPreference = "Stop"

# Validate that the local dev manifest exists

if (-not $DevPackagePath)
{
  $DevPackagePath = Join-Path $PSScriptRoot "..\..\src\AppInstallerCLIPackage\bin\x64\Release\AppX"
}

$DevPackagePath = [System.IO.Path]::GetFullPath($DevPackagePath)

if ($DevPackagePath.ToLower().Contains("debug"))
{
  Write-Error -Category InvalidArgument -Message @"
The Debug dev package does not work for unknown reasons.
Use the Release build or figure out how to make debug work and fix the scripts.
"@
}

if (-not (Test-Path (Join-Path $DevPackagePath "AppxManifest.xml")))
{
  Write-Error -Category InvalidArgument -Message @"
AppxManifest.xml does not exist in the path $DevPackagePath
Either build the local dev package, or provide the location using -DevPackagePath
"@
}

# Check if Windows Sandbox is enabled

if (-Not (Get-Command 'WindowsSandbox' -ErrorAction SilentlyContinue))
{
  Write-Error -Category NotInstalled -Message @'
Windows Sandbox does not seem to be available. Check the following URL for prerequisites and further details:
https://docs.microsoft.com/windows/security/threat-protection/windows-sandbox/windows-sandbox-overview

You can run the following command in an elevated PowerShell for enabling Windows Sandbox:
$ Enable-WindowsOptionalFeature -Online -FeatureName 'Containers-DisposableClientVM'
'@
}

# Close Windows Sandbox

function Close-WindowsSandbox {
    $sandbox = Get-Process 'WindowsSandboxClient' -ErrorAction SilentlyContinue
    if ($sandbox)
    {
      Write-Host '--> Closing Windows Sandbox'

      $sandboxServer = Get-Process 'WindowsSandbox' -ErrorAction SilentlyContinue

      $sandbox | Stop-Process
      $sandbox | Wait-Process -Timeout 120

      # Also wait for the server to close
      if ($sandboxServer)
      {
        try
        {
            $sandboxServer | Wait-Process -Timeout 120
        }
        catch [System.TimeoutException]
        {
            # Force stop the server if it does not automatically stop
            $sandboxServer | Stop-Process
            $sandboxServer | Wait-Process -Timeout 120
        }

      }

      Write-Host
    }
    Remove-Variable sandbox
}

Close-WindowsSandbox

# Initialize Temp Folder

$tempFolderName = 'DevInSandboxStaging'
$tempFolder = Join-Path -Path ([System.IO.Path]::GetTempPath()) -ChildPath $tempFolderName

New-Item $tempFolder -ItemType Directory -ErrorAction SilentlyContinue | Out-Null

# Set dependencies

$desktopInSandbox = 'C:\Users\WDAGUtilityAccount\Desktop'

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$WebClient = New-Object System.Net.WebClient

# Hide the progress bar of Invoke-WebRequest
$oldProgressPreference = $ProgressPreference
$ProgressPreference = 'SilentlyContinue'

$ProgressPreference = $oldProgressPreference

$vcLibsUwp = @{
  fileName = 'Microsoft.VCLibs.x64.14.00.Desktop.appx'
  url      = 'https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx'
  hash     = '9BFDE6CFCC530EF073AB4BC9C4817575F63BE1251DD75AAA58CB89299697A569'
  folderInLocal = Join-Path ${env:ProgramFiles(x86)} "Microsoft SDKs\Windows Kits\10\ExtensionSDKs\Microsoft.VCLibs.Desktop\14.0\Appx\Retail\x64"
}

$dependencies = @($vcLibsUwp)

# Clean temp directory

Get-ChildItem $tempFolder -Recurse -Exclude $dependencies.fileName | Remove-Item -Force -Recurse

# Download dependencies

Write-Host '--> Checking dependencies'

foreach ($dependency in $dependencies)
{
  $dependency.pathInSandbox = Join-Path -Path $desktopInSandbox -ChildPath (Join-Path -Path $tempFolderName -ChildPath $dependency.fileName)

  # First see if the file exists locally to copy instead of downloading
  if ($dependency.folderInLocal -ne $null)
  {
    $dependencyFilePath = Join-Path -Path $dependency.folderInLocal -ChildPath $dependency.fileName
    if (Test-Path -Path $dependencyFilePath -PathType Leaf)
    {
      $dependencyFilePath
      $tempFolder
      Copy-Item -Path $dependencyFilePath -Destination $tempFolder -Force
      continue
    }
  }

  # File does not exist locally, we need to download

  $dependency.file = Join-Path -Path $tempFolder -ChildPath $dependency.fileName

  # Only download if the file does not exist, or its hash does not match.
  if (-Not ((Test-Path -Path $dependency.file -PathType Leaf) -And $dependency.hash -eq $(Get-FileHash $dependency.file).Hash))
  {
    Write-Host @"
  - Downloading:
    $($dependency.url)
"@

    try
    {
      $WebClient.DownloadFile($dependency.url, $dependency.file)
    }
    catch
    {
      #Pass the exception as an inner exception
      throw [System.Net.WebException]::new("Error downloading $($dependency.url).",$_.Exception)
    }
    if (-not ($dependency.hash -eq $(Get-FileHash $dependency.file).Hash))
    {
      throw [System.Activities.VersionMismatchException]::new('Dependency hash does not match the downloaded file')
    }
  }
}

# Copy main script

$mainPs1FileName = 'InSandboxScript.ps1'
Copy-Item (Join-Path $PSScriptRoot $mainPs1FileName) (Join-Path $tempFolder $mainPs1FileName)

$dependenciesPathsInSandbox = "@('$($vcLibsUwp.pathInSandbox)')"
$bootstrapPs1Content = ".\$mainPs1FileName -DesktopAppInstallerDependencyPath @($dependenciesPathsInSandbox)"

$bootstrapPs1FileName = 'Bootstrap.ps1'
$bootstrapPs1Content | Out-File (Join-Path $tempFolder $bootstrapPs1FileName) -Force

# Create Windows Sandbox configuration file

$bootstrapPs1InSandbox = Join-Path -Path $desktopInSandbox -ChildPath (Join-Path -Path $tempFolderName -ChildPath $bootstrapPs1FileName)
$tempFolderInSandbox = Join-Path -Path $desktopInSandbox -ChildPath $tempFolderName

$devPackageInSandbox = Join-Path -Path $desktopInSandbox -ChildPath "DevPackage"
$devPackageXMLFragment = ""

$devPackageXMLFragment = @"
    <MappedFolder>
        <HostFolder>$DevPackagePath</HostFolder>
        <SandboxFolder>$devPackageInSandbox</SandboxFolder>
    </MappedFolder>
"@

$sandboxTestWsbContent = @"
<Configuration>
  <MappedFolders>
    <MappedFolder>
        <HostFolder>$tempFolder</HostFolder>
        <ReadOnly>true</ReadOnly>
    </MappedFolder>
    $devPackageXMLFragment
  </MappedFolders>
  <LogonCommand>
    <Command>PowerShell Start-Process PowerShell -WindowStyle Maximized -WorkingDirectory '$tempFolderInSandbox' -ArgumentList '-ExecutionPolicy Bypass -NoExit -NoLogo -File $bootstrapPs1InSandbox'</Command>
  </LogonCommand>
</Configuration>
"@

$sandboxTestWsbFileName = 'SandboxTest.wsb'
$sandboxTestWsbFile = Join-Path -Path $tempFolder -ChildPath $sandboxTestWsbFileName
$sandboxTestWsbContent | Out-File $sandboxTestWsbFile -Force

Write-Host @"
--> Starting Windows Sandbox
      $sandboxTestWsbFile
"@

Write-Host

WindowsSandbox $SandboxTestWsbFile
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-04-24]] and last modified on [[2024-04-24]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Windows Sandbox Development]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Windows Sandbox Development"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024