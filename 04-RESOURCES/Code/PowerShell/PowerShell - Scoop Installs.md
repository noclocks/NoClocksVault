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
# Execution Policy
Set-ExecutionPolicy Unrestricted -Scope CurrentUser

# Install Scoop
if (!Get-Command scoop) {
  $Inst = New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
  Invoke-Expression $Inst
}

# Install Scoop Recommended Apps
scoop install aria2

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
  ''
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
  'dark'
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
  'screentogif'
  'snipaste'
  'stylua'
  'sumatrapdf'
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