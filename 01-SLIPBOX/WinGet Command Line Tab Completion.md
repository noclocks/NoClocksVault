---
creation_date: 2024-04-24
modification_date: 2024-04-24
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev
  - Topic/Windows
  - Status/WIP
aliases:
  - WinGet Command Line Tab Completion
publish: true
permalink:
description:
image:
cssclasses:
---

# WinGet Command Line Tab Completion

> [!SOURCE] Sources:
> - *[winget-cli/doc/Completion.md at master · microsoft/winget-cli](https://github.com/microsoft/winget-cli/blob/master/doc/Completion.md)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

WinGet offers a `complete`  command that can be leveraged by your shell to provide context sensitive tab completion. It allows for completion of command names, argument names, and argument values, dependent on the current command line state.

> [!NOTE]
> This feature was released in  [v0.1.42241 Preview](https://github.com/microsoft/winget-cli/releases/tag/v0.1.42241-preview) . Please update if you are on an older build.

## Examples

> [!NOTE]
> These examples assume that the tab completion in your shell works similar to [[PowerShell]]; repeated presses of tab will result in cycling through the possible values.

| Input | Result | Reason |
| :---: | :----: | ------ | 
|`winget ⇥`|`winget install`|`install` is the first command below the root|
|`winget sh⇥`|`winget show`|`show` is the first command that starts with `sh`|
|`winget source l⇥`|`winget source list`|`list` is the first sub-command of source that starts with `l`|
|`winget -⇥`|`winget --version`|`--version` is the first argument defined for the root|
|`winget install power⇥`|`winget install "Power Toys"`|`"Power Toys"` is the first package whose Id, Name, or Moniker starts with `power`|
|`winget install "Power Toys" --version ⇥`|`winget install "Power Toys" --version 0.19.2`|`0.19.2` is the highest version of Power Toys at the time of writing|

## PowerShell

You can add the argument completer to your `$PROFILE` , which will enable it in all subsequent PowerShell sessions.

For more information, see  [How to create your profile](https://docs.microsoft.com/powershell/module/microsoft.powershell.core/about/about_profiles#how-to-create-a-profile)  and  [Profiles and execution policy](https://docs.microsoft.com/powershell/module/microsoft.powershell.core/about/about_profiles#profiles-and-execution-policy) 

Here is the PowerShell command to add to your `$PROFILE` 

```powershell
Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
        [Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
        $Local:word = $wordToComplete.Replace('"', '""')
        $Local:ast = $commandAst.ToString().Replace('"', '""')
        winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}
```

## Command Reference

|Argument|Description|
|---|---|
|`--word`|The current word that is being completed; the token that the cursor is located within. Can be empty to indicate no current value at the cursor, but if provided, it must appear as a substring in the command line.|
|`--commandline`|The entire current command line, including `winget`. See the examples above; everything but the tab character (`⇥`) should be provided to this argument.|
|`--position`|The current position of the cursor in the command line. Can be greater than the length of the command line string to indicate at the end.|

When a word value is provided, the completion operates in replacement mode.  It will suggest completions that would fit correctly at this location that also start with the given word value.
When a word value is not provided (an empty value is provided for word, ex. `--word=` ), the completion operates in insertion mode.  It will suggest completions that would fit as a new value in the cursor's location.

Based on the arguments, the completions suggested can be one of:

1. A sub command :: The cursor is located just after a command and there are sub commands available.
1. An argument specifier :: The cursor is not positioned after an argument specifier that expects a value, and there are arguments available.
1. An argument value :: The cursor is positioned after an argument specifier that expects a value, or a positional argument is expected.

After evaluating all of these cases, the potential completions are output, one on each line. If the completion string contains a space, it is wrapped in quotations.

***

## Appendix

*Note created on [[2024-04-24]] and last modified on [[2024-04-24]].*

### Backlinks

```dataview
LIST FROM [[WinGet Command Line Tab Completion]] AND -"CHANGELOG" AND -"01-SLIPBOX/WinGet Command Line Tab Completion"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024