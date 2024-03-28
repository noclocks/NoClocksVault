<#
.SYNOPSIS
    Counts the number of words in all markdown files in a given folder path.
.DESCRIPTION
    This function counts the number of words in all markdown files in a given folder path.
    It ignores certain file and folder names specified in the code (see details in Notes below).
.PARAMETER FolderPath
    The path of the folder, representing an Obsidian Vault, to use.
.EXAMPLE
    Get-VaultWordCount -FolderPath "$HOME\Dev\obsidian\MyVault"

    # This example returns the total word count of all markdown files in the "MyVault" folder.
.NOTES
    Currently, this function ignores the following file names:
        - LICENSE
        - README.md
        - _README.md
        - CHANGELOG.md
        - HOME.md

    Currently, this function ignores the following folder's files:
        - Templates
        - node_modules
        - .obsidian
        - .bin
        - .git
        - .github
        - .docker
        - .vscode
        - .venv

#>
Function Get-VaultWordCount {
    <#
    #>
    Param (
        [string]$FolderPath
    )

    $FileNamesToIgnore = @(
        "LICENSE"
        "README.md"
        "_README.md"
        "CHANGELOG.md"
        "HOME.md"
    )

    $FolderNamesToIgnore = @(
        "Templates"
        "node_modules"
        ".obsidian"
        ".bin"
        ".git"
        ".github"
        ".docker"
        ".vscode"
        ".venv"
    )

    $WordCount = 0

    $Files = Get-ChildItem -Path $FolderPath -Recurse -File -Force | `
        Where-Object { !($_.PSIsContainer) } | `
        Where-Object { $FolderNamesToIgnore -notmatch $_.FullName } | `
        Where-Object { $FileNamesToIgnore -notcontains $_.Name } | `
        Where-Object { $_.Extension -eq ".md" }

    $Files | ForEach-Object {
        $WordCount += (Get-WordCount -Path $_.FullName)
    }

    return $WordCount
}


