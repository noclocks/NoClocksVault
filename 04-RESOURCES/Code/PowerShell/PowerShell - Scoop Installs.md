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
  - PowerShell PowerShell - Scoop Installs Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Scoop Installs PowerShell Code

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
# Transcript
$TranscriptFile = "$((Get-Date).ToString('yyyy-MM-dd-HHmmss'))-Scoop.log"
$TranscriptPath = Join-Path "$Env:TEMP\Scoop\$TranscriptFile"
Start-Transcript -Path $TranscriptPath -ErrorAction Ignore | Out-Null

# Execution Policy
Set-ExecutionPolicy Unrestricted -Scope CurrentUser

# Install Scoop
if (!Get-Command scoop) {
  $Inst = New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
  Invoke-Expression $Inst
}

# Install Scoop Recommended Apps
scoop install 7zip aria2 dark

# Install scoop-completion
scoop intall scoop-completion

# Defender Exclusions
sudo Add-MpPreference -ExclusionPath "$Env:PROGRAMDATA\scoop"
sudo Add-MpPreference -ExclusionPath "$Env:USERPROFILE\scoop"

# LongPath Support
Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1

# Checks
scoop checkup

# Buckets
$ScoopBuckets = @(
  'extras'
  'nerd-fonts'
  'nirsoft'
  'r-bucket'
  'supabase'
  'topclean'
)

# Apps
$ScoopApps = @(
  '1password-cli'
  '7zip'
  'act'
  'actionlint'
  'bat'
  'bind'
  'cacert'
  'ddu'
  'devmanview'
  'dos2unix'
  'dotter'
  'driverview'
  'edex-ui'
  'editorconfig'
  'fd'
  'ffmpeg'
  'flyway'
  'fontforge'
  'fzf'
  'gcc'
  'ghostscript'
  'git-cliff'
  'git-crypt'
  'gitversion'
  'glow'
  'graphviz'
  'grep'
  'hadolint'
  'imagemagick'
  'innounp'
  'ipinfo-cli'
  'jq'
  'lazydocker'
  'lazygit'
  'lsd'
  'lf'
  'make'
  'monitorinfoview'
  'mpv'
  'neovim'
  'nvm'
  'obs'
  'obsidian'
  'pipx'
  'python'
  'q-dir'
  'qpdf'
  'restic'
  'ripgrep'
  'shellcheck'
  'screentogif'
  'spotify-tui'
  'sqlite'
  'stateful'
  'supabase'
  'syncthing'
  'snipaste'
  'stylua'
  'sumatrapdf'
  'tinynvidiaupdatechecker'
  'tldr'
  'topclean'
  'touch'
  'topgrade'
  'unzip'
  'winfetch'
  'wttop'
  'yori'
  'youtube-dl'
  'yq'
)

# Fonts
$Fonts = @(
  'Cascadia-Code'
  'CascadiaCode-NF'
  'FiraCode'
  'FiraCode-NF'
  'Monaspace-NF'
)

```

```powershell
<#
.SYNOPSIS
    Script to install Scoop apps
.DESCRIPTION
    Script uses scoop
.NOTES
    **NOTE** Will configure the Execution Policy for the "CurrentUser" to Unrestricted.
    Original Author: Mike Pruett
    Date: October 18th, 2018
    Last Updated on December 26th, 2022
    Adapted by: Enno
    Date: April 9th, 2024
#>

$VerbosePreference = "Continue"

# Configure ExecutionPolicy to Unrestricted for CurrentUser Scope
if ((Get-ExecutionPolicy -Scope CurrentUser) -notcontains "Unrestricted") {
    Write-Verbose -Message "Trying to elevate Execution Policy for Current User to Unrestricted ..."
    try {
        Start-Process -FilePath "PowerShell" -ArgumentList "Set-ExecutionPolicy","-Scope","CurrentUser","-ExecutionPolicy","Unrestricted","-Force" -Verb RunAs -Wait -ErrorAction Stop
        Write-Verbose -Message "... successfully!"
        Write-Output "Restart/Re-Run script!!!"
        Start-Sleep -Seconds 3
        Break
    } catch {
        Write-Verbose -Message "... failed with error: $_"
    }
}

function Install-ScoopApp {
    param (
        [string]$Package
    )
    Write-Verbose -Message "Preparing to install $Package"
    if (! (scoop info $Package).Installed ) {
        Write-Verbose -Message "Installing $Package"
        scoop install $Package
    } else {
        Write-Verbose -Message "Package $Package already installed! Skipping..."
    }
}

function Enable-Bucket {
    param (
            [string]$Bucket
          )
        if (!($(scoop bucket list).Name -eq "$Bucket")) {
            Write-Verbose -Message "Adding Bucket $Bucket to scoop..."
                scoop bucket add $Bucket
        } else {
            Write-Verbose -Message "Bucket $Bucket already added! Skipping..."
        }
}

# Install Scoop, if not already installed
if ( !(Get-Command -Name "scoop" -CommandType Application -ErrorAction SilentlyContinue) ) {
    Write-Verbose -Message "Installing Scoop..."
    iex ((New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh'))
}

# From https://stackoverflow.com/questions/46758437/how-to-refresh-the-environment-of-a-powershell-session-after-a-chocolatey-instal/69918699#69918699
function refreshenv {
# Call a powershell process to act as a wrapper to capture the output:
  & ([Diagnostics.Process]::GetCurrentProcess().ProcessName) -NoP -c (
# String wrapper to help make the code more readable through comma-separation:
  [String]::Join(' ', (
# Start a process that escapes the active environment:
  'Start-Process', [Diagnostics.Process]::GetCurrentProcess().ProcessName,
  '-UseNewEnvironment -NoNewWindow -Wait -Args ''-c'',',
# List the environment variables, separated by a tab character:
  '''Get-ChildItem env: | &{process{ $_.Key + [char]9 + $_.Value }}'''
  ))) | &{process{
    # Set each line of output to a process-scoped environment variable:
    [Environment]::SetEnvironmentVariable(
      $_.Split("`t")[0], # Key
      $_.Split("`t")[1], # Value
      'Process'          # Scope
    )
  }}
}

# Install Git
Install-ScoopApp -Package "git"
# Configure git
Start-Sleep -Seconds 5

# # Install refreshenv
# Install-ScoopApp -Package "refreshenv"
# Start-Sleep -Seconds 5
# refreshenv
# Start-Sleep -Seconds 5
# if ( !(Get-Command -Name "scoop" -CommandType Application -ErrorAction SilentlyContinue) ) {
#     Write-Verbose -Message "Removing refreshenv command from Scoop to be replaced by that of Chocolatey..."
#     scoop uninstall refreshenv
# }

refreshenv
Start-Sleep -Seconds 5

# if (!$(git config --global credential.helper) -eq "manager-core") {
#     git config --global credential.helper manager-core
# }
if (!($Env:GIT_SSH)) {
    Write-Verbose -Message "Setting GIT_SSH User Environment Variable"
    [System.Environment]::SetEnvironmentVariable('GIT_SSH', (Resolve-Path (scoop which ssh)), 'USER')
}
if ((Get-Service -Name ssh-agent).Status -ne "Running") {
    Write-Verbose -Message "Trying to register the SSH-Agent service ..."
    try {
        Start-Process -FilePath "PowerShell" -ArgumentList "Set-Service","ssh-agent","-StartupType","Manual" -Verb RunAs -Wait -WindowStyle Hidden -ErrorAction Stop
        Write-Verbose -Message "... successfully!"
    } catch {
        Write-Verbose -Message "... failed with error: $_"
    }
}

# Configure Aria2 Download Manager
Install-ScoopApp -Package "aria2"
if (!$(scoop config aria2-enabled) -eq $True) {
    scoop config aria2-enabled true
}
if (!$(scoop config aria2-warning-enabled) -eq $False) {
    scoop config aria2-warning-enabled false
}
if (!(Get-ScheduledTaskInfo -TaskName "Aria2RPC" -ErrorAction Ignore)) {
@'
$Action = New-ScheduledTaskAction -Execute $Env:UserProfile\scoop\apps\aria2\current\aria2c.exe -Argument "--enable-rpc --rpc-listen-all" -WorkingDirectory $Env:UserProfile\Downloads
$Trigger = New-ScheduledTaskTrigger -AtStartup
$Principal = New-ScheduledTaskPrincipal -UserID "$Env:ComputerName\$Env:Username" -LogonType S4U
$Settings = New-ScheduledTaskSettingsSet -ExecutionTimeLimit 0 -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries
Register-ScheduledTask -TaskName "Aria2RPC" -Action $Action -Trigger $Trigger -Principal $Principal -Settings $Settings
'@ > $Env:Temp\aria2.ps1
    Write-Verbose -Message "Trying to register the Aria2RPC service ..."
    try {
        Start-Process -FilePath "PowerShell" -ArgumentList "$Env:Temp\aria2.ps1" -Verb RunAs -Wait -ErrorAction Stop #-WindowStyle Hidden
        Write-Verbose -Message "... successfully!"
    } catch {
        Write-Verbose -Message "... failed with error: $_"
    }
    Remove-Item -Path $Env:Temp\aria2.ps1 -Force
}

# Only install OpenSSH Package, if not on Windows 10
if ([Environment]::OSVersion.Version.Major -lt 10) {
    Install-ScoopApp -Package "openssh"
}

# Install OpenSSH.Client on Windows 10+
@'
if ((Get-WindowsCapability -Online -Name OpenSSH.Client*).State -ne "Installed") {
    Add-WindowsCapability -Online -Name OpenSSH.Client*
}
'@ > "${Env:Temp}\openssh.ps1"
Write-Verbose -Message "Trying to add OpenSSH Windows Capability ..."
try {
    Start-Process -FilePath "PowerShell" -ArgumentList "${Env:Temp}\openssh.ps1" -Verb RunAs -Wait -WindowStyle Hidden -ErrorAction Stop
    Write-Verbose -Message "... successfully!"
} catch {
    Write-Verbose -Message "... failed with error: $_"
}
Remove-Item -Path "${Env:Temp}\openssh.ps1" -Force

# UNIX Tools
Write-Verbose -Message "Removing curl Alias..."
if (Get-Alias -Name curl -ErrorAction SilentlyContinue) {
    Remove-Item alias:curl
}
if (!($Env:TERM)) {
    Write-Verbose -Message "Setting TERM User Environment Variable"
    [System.Environment]::SetEnvironmentVariable("TERM", "xterm-256color", "USER")
}

# Create $Env:UserProfile\bin, if not exist
if (!(Test-Path -Path $Env:UserProfile\bin)) {
    Write-Verbose -Message "Creating bin directory in $Env:UserProfile"
    New-Item -Path $Env:UserProfile\bin -ItemType Directory | Out-Null
    #[System.Environment]::SetEnvironmentVariable("PATH", $Env:PATH + ";$Env:UserProfile\bin","USER")
}

# Minimal Setup:
Enable-Bucket -Bucket "extras"
# Includes corretto-jre8
Enable-Bucket -Bucket "java"
$Scoop = @(
    "aria2",
    "curl",
    "wget",

    "7zip-zstd",

    "less",

    "fd",
    "ripgrep",
    "rga",

    "fzf",
    "clink",
    "vim",
    "lf",
    "ctags",
    "aichat",

    "notepadplusplus",

    "grep",
    "sed",
    "make",
    "gawk",

    "python",

    "jq",
    "jid",
    "tidy",

    "ruff",

    "ntop",

    "bat",
    "delta",
    "difftastic",

    "pandoc",

    "autohotkey",
    "sysinternals",

    "qalculate",
    "ditto",

    "gpg",
    "gopass",
    "pass-winmenu-nogpg",

    "mupdf",
    "okular",

    "doublecmd",

    "windows-terminal",
    "pwsh",
    "starship",

    "PowerToys",

    "corretto8-jre"

    "msedgeredirect",
    )

# # Additional Setup:
$answer = Read-Host "Do you want to install additional packages? Please enter yes or no:"
while ($answer -notmatch "^(yes|no)$") {
    $answer = Read-Host "Invalid input. Please enter yes or no"
}
# Now $answer contains "yes" or "no"
if ($answer -eq "yes") {
    $Scoop += @(
        # "7zip-zstd",
        "xz",
        "winrar",
        # "fd",
        # "ripgrep",
        "ugrep",
        # "rga",
        # "fzf",
        "peco",
        # "ntop",
        # "clink",
        # "lf",
        "jdupes",
        # "curl",
        # "wget",
        # "aria2",
        "aspell",
        # "less",
        # "bat",
        # "ctags",

        # "vim",
        # "notepadplusplus",

        "gow",
        # "grep",
        # "sed",
        # "make",
        # "gawk",
        # "delta",
        # "difftastic",

        # "jq",
        # "jid",
        "htmlq",
        # "tidy",

        # "python",
        "perl",
        "lua",
        "luajit",
        "lua-language-server",
        "nodejs",

        "shellcheck",
        # "ruff",

        "latex",
        # "pandoc",
        "pandoc-crossref",
        "vale",

        "poppler",
        "djvulibre",
        "mediainfo",
        "imagemagick",
        "tesseract",

        "uget",

        # "autohotkey",

        "sudo",
        "gsudo"

        # "dotnet-sdk",
        # "PowerToys",

        # "everything",
        "dngrep",
        "grepwin",

        # "quicklook",

        # "mupdf",
        "sumatrapdf",
        # "okular",
        "xournalpp",

        # "qalculate",
        # "ditto",
        "zeal",

        # "gpg",
        # "gopass",
        # "pass-winmenu-nogpg",

        # "pwsh",
        # "starship",
        # "windows-terminal",
        "colortool",
        "concfg",

        # "sysinternals",
        # # "processhacker",
        "lockhunter",
        "rapidee",

        "syncthing",
        "synctrayzor",

        # ! Set default file format to DocX as in
        # https://www.howtogeek.com/281166/how-to-change-the-default-file-format-in-libreoffice/
        "libreoffice",

        # ! Install add-ons from https://addons.mozilla.org/en-US/firefox/collections/17831851/Serenity/
        "firefox",
        "brave",

        "thunderbird",

        "sharex",
        "zoom",
        # "microsoft-teams",

        "smplayer",
        # "mpv",
        # "vlc",
        "ffmpeg",
        "lame",
        "musicbee",
        "mp3tag",
        "yt-dlp",
        "mediainfo",
        # # "mediainfo-gui",

        # # "putty",
        "kitty",

        "cacert",

        "paint.net",
        "krita",
        # # "irfanview",
        # # "jpegview",

        "spacesniffer",
        "wiztree",
        "driverstoreexplorer"
        # # "rufus",
        # # "etcher",
        # # "fileoptimizer",

        # # "kopia",
        # # "kopia-ui",

        "speccy",
        "hwmonitor",
        # # "cpu-z",
        # # "gpu-z",
        # # "ssd-z",

        "hotkeyslist",
        "open-log-viewer",
        # # "baretail",

        "hosts-file-editor"

        # "corretto8-jre"

        # # # https://workspacer.org/keybindings/
        # # "workspacer",
        )
}

foreach ($item in $Scoop) {
    Install-ScoopApp -Package "$item"
}

# Customize DOS/PowerShell Environment
Write-Verbose -Message "Customize DOS/PowerShell Environment..."
if ((Get-ItemProperty -Path "HKCU:\Software\Microsoft\Command Processor" -ErrorAction SilentlyContinue).AutoRun -eq $Null) {
    Start-Process -FilePath "cmd" -ArgumentList "/c","clink","autorun","install" -Wait -WindowStyle Hidden -ErrorAction stop
}
Write-Verbose -Message "Trying to elevate Execution Policy for Current User to Unrestricted ..."
try {
    Start-Process -FilePath "cmd" -ArgumentList "/c","concfg","import","solarized-light" -Verb RunAs -Wait -ErrorAction stop
    Write-Verbose -Message "... successfully!"
} catch {
    Write-Verbose -Message "... failed with error: $_"
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
LIST FROM [[PowerShell - Scoop Installs]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Scoop Installs"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024