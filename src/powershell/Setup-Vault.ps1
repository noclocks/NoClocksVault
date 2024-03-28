<#
#>

$files = @(
    'README.md'
    'CHANGELOG.md'
    'ABOUT.md'
    'knowledge-vault.vault'
    '.export-ignore'
)

foreach ($file in $files)
{
    if (-not (Test-Path $file))
    {
        New-Item -ItemType File -Path $file
    }
}

$dirs = @(
    'src',
    '00-INBOX',
    '01-SLIPBOX',
    '02-PROJECTS',
    '03-AREAS',
    '04-RESOURCES',
    '99-ARCHIVE',
    '03-AREAS/Code',
    '03-AREAS/Code/PowerShell',
    '03-AREAS/Code/Python',
    '03-AREAS/Code/JavaScript',
    '03-AREAS/Code/Terraform',
    '03-AREAS/Code/SQL',
    '03-AREAS/Code/CSS',
    '03-AREAS/Code/HTML',
    '03-AREAS/Code/Bash',
    '03-AREAS/Code/CMD',
    '03-AREAS/Code/Batch',
    '03-AREAS/Code/Registry',
    '03-AREAS/Code/PowerQuery',
    '03-AREAS/Code/Docker',
    '03-AREAS/Code/R',
    '03-AREAS/Code/VBA',
    '03-AREAS/Code/VBS',
    '03-AREAS/Daily',
    '03-AREAS/Meta',
    '03-AREAS/MOCs',
    # '03-AREAS/Tools',
    '03-AREAS/Clients',
    '03-AREAS/Goals',
    '04-RESOURCES/Assets',
    '04-RESOURCES/Contacts',
    '04-RESOURCES/Lists',
    '04-RESOURCES/Templates',
    '04-RESOURCES/Tools',
    '04-RESOURCES/Definitions',
    '04-RESOURCES/References'
)

foreach ($dir in $dirs)
{
    if (-not (Test-Path $dir))
    {
        New-Item -ItemType Directory -Path $dir
    }
    $readme = Join-Path $dir '_README.md'
    if (-not (Test-Path $readme))
    {
        New-Item -ItemType File -Path $readme
    }
}
