<#
.SYNOPSIS
    Exports Obsidian vault to regular Markdown, replacing Wiki-Style Links with normal Markdown Links.
.DESCRIPTION
    This script exports an Obsidian vault to regular Markdown, replacing Wiki-Style Links with normal Markdown Links.
    It also removes the Obsidian YAML front matter.
    The script relies on the `RUST` library [obsidian-export](https://github.com/zoni/obsidian-export).
#>
[CmdletBinding()]
param (
    # [Parameter(Mandatory = $true)]
    # [string]$Vault
)

# Set Location to Root of Vault
Set-Location "$PSScriptRoot\.."

# Get vault name
$Vault = Split-Path '.' -Leaf

Set-Location '..\'

# Copy Vault
$VaultCopy = "$Vault-Copy"

if (Test-Path $VaultCopy) {
    Remove-Item $VaultCopy -Recurse -Force
}

Copy-Item $Vault $VaultCopy -Recurse -Force

Set-Location $VaultCopy

# Change _README.md to README.md
Get-ChildItem -Recurse -File -Filter '_README.md' |
    ForEach-Object { Rename-Item -Force -Path $_.PSPath -NewName $_.Name.replace('_README', 'README') }

Set-Location '..\'

$VaultExport = "$Vault-Export"

if (Test-Path $VaultExport) {
    Remove-Item $VaultExport -Recurse -Force
}

New-Item -ItemType Directory $VaultExport

Copy-Item -Path "$Vault\.git" -Destination "$VaultExport\" -Recurse -Force
Set-Location $VaultExport
git checkout main
Set-Location '..\'
obsidian-export KaaS-Copy KaaS-Export
Set-Location KaaS-Export
tree
git status
