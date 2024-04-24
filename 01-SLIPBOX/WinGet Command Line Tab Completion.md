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

# 


[](https://github.com/microsoft/winget-cli/blob/master/doc/Completion.md#winget-command-line-tab-completion)
WinGet offers a `complete`  command that can be leveraged by your shell to provide context sensitive tab completion. It allows for completion of command names, argument names, and argument values, dependent on the current command line state.
> 
Note, this feature was released in  [v0.1.42241 Preview](https://github.com/microsoft/winget-cli/releases/tag/v0.1.42241-preview) . Please update if you are on an older build.

## Examples
[](https://github.com/microsoft/winget-cli/blob/master/doc/Completion.md#examples)
> 
These examples assume that the tab completion in your shell works similar to PowerShell; repeated presses of tab (`` ) will result in cycling through the possible values.

|Input|Result|Reason|
|-----|------|------|

## PowerShell
[](https://github.com/microsoft/winget-cli/blob/master/doc/Completion.md#powershell)
You can add the argument completer to your `$PROFILE` , which will enable it in all subsequent PowerShell sessions.
For more information, see  [How to create your profile](https://docs.microsoft.com/powershell/module/microsoft.powershell.core/about/about_profiles#how-to-create-a-profile)  and  [Profiles and execution policy](https://docs.microsoft.com/powershell/module/microsoft.powershell.core/about/about_profiles#profiles-and-execution-policy) 
Here is the PowerShell command to add to your `$PROFILE` 
```
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
[](https://github.com/microsoft/winget-cli/blob/master/doc/Completion.md#command-reference)
The complete command takes 3 required arguments:
|Argument|Description|
|--------|-----------|

When a word value is provided, the completion operates in replacement mode.  It will suggest completions that would fit correctly at this location that also start with the given word value.
When a word value is not provided (an empty value is provided for word, ex. `--word=` ), the completion operates in insertion mode.  It will suggest completions that would fit as a new value in the cursor's location.
Based on the arguments, the completions suggested can be one of:
2. A sub command :: The cursor is located just after a command and there are sub commands available.
4. An argument specifier :: The cursor is not positioned after an argument specifier that expects a value, and there are arguments available.
6. An argument value :: The cursor is positioned after an argument specifier that expects a value, or a positional argument is expected.

After evaluating all of these cases, the potential completions are output, one on each line. If the completion string contains a space, it is wrapped in quotations.