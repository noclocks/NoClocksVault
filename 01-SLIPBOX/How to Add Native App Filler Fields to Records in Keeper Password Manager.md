---
creation_date: 2024-04-19
modification_date: 2024-04-19
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/HowTo
  - Type/Guide
  - Type/Note
  - Topic/Productivity
  - Status/Complete
aliases:
  - How to Add Native App Filler Fields to Records in Keeper Password Manager
publish: true
permalink:
description:
image:
cssclasses:
---

# How to Add Native App Filler Fields to Records in Keeper Password Manager

> [!SOURCE] Sources:
> - *[Native App Filler | KeeperFill for Apps | User Guides](https://docs.keeper.io/en/v/user-guides/keeperfill-for-apps#native-app-filler)*
> - *[Web Vault & Desktop App | User Guides | English (keeper.io)](https://docs.keeper.io/en/v/user-guides/web-vault#key-features)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview


[[Tool - Keeper Password Manager|Keeper]] can automatically fill fields in any *native application* using a set of custom keystrokes.

With the release of Keeper's "Record Types" feature, a new field type is introduced which is called "Native App Filler":

![](https://i.imgur.com/aJYZcaE.png)

- The Native App Filler function includes a Title match and a Record match field.
- The Title match looks at the application title or program name.
- The Record match looks at the contents of the screen using [[Optical Character Recognition (OCR)|OCR]] scanning and will select a matching record only when the Title matches. This is useful for legacy terminal connection tools such as `TN3270` client emulators.
- The "Auto-Type Keystrokes" field allows you to initiate a specific keystroke sequence utilizing portions of the record and any other keyboard actions.

![](https://i.imgur.com/hYN3OJR.png)

In the simple example below, the "Zoom" app name is matched and the `username + <Tab> + password` is typed when the user hits the hotkey `Ctrl+Shift+M`:

![](https://i.imgur.com/ntkjIZS.png)

When you launch an application that matches the Application Title or Program Name field, the KeeperFill for Apps system tray icon will change from the Keeper logo to a lock icon. At that point, hitting the assigned hotkey will initiate the Auto-Type keystroke filling sequence.

![](https://i.imgur.com/muJ1PKm.png)

By default, the Native App Filler hotkey is set to **Ctrl/Cmd + Shift + M**. To change the hotkey, simply to go **Settings > KeeperFill Hotkeys**.

![](https://i.imgur.com/T3USmvZ.png)

## Supported Key Strokes

The Auto-Type Keystrokes can contain many different keystroke elements. 

The supported keystrokes are as follows:

|Keystroke|Description|
|---|---|
|`{USERNAME}`|Record username field|
|`{PASSWORD}`|Record password field|
|`{TOTP}`|Record Two-Factor Code field|
|`{URL}`|Record Website URL field|
|`{FIELD:XXX}`|XXX=Value for Custom Field Name|
|`{ENTER}`|Enter key|
|`{TAB}`|Tab key|
|`{DELAY:X}`|Delay by X number of seconds|
|`{UP}`|Up arrow key|
|`{DOWN}`|Down arrow key|
|`{LEFT}`|Left arrow key|
|`{RIGHT}`|Right arrow key|
|`{TEXT:XXX}`|XXX=Arbitrary text to fill|
|`{SPACE}`|Space character|

## Native App Filler for Multiple Apps with Identical Credentials

> [!SOURCE] Sources:
> - *https://docs.keeper.io/en/v/user-guides/keeperfill-for-apps#native-app-filler-for-multiple-apps-with-identical-credentials*

An additional feature of Native App Filler is the ability to use the same Keeper record to fill credentials for multiple applications. For example, for Microsoft Office, you likely have a set of Microsoft Credentials that you use to log in to multiple applications in the Office suite. Simply list your applications separated with commas in the **Application Title or Program Name** field of the Native App Filler section of the record.

In this example, we can automatically fill credentials for Teams and Excel by listing "Microsoft Teams, Excel" in the **Application Title or Program Name** field.

![](https://i.imgur.com/ekuZ0Y9.png)

## Demo Video

Source: *https://vimeo.com/703884522*

<iframe title="Keeper 101: Native App Filler" height="240" width="426" src="https://player.vimeo.com/video/703884522?app_id=122963" allowfullscreen="" allow="fullscreen" style="aspect-ratio: 1.775 / 1; width: 100%; height: 100%;"></iframe>

## See Also:

- [[Tool - Keeper Password Manager|Keeper Password Manager]]
- [[PowerShell - Get Active Window Titles]]
- [[Tool - Keeper Commander|Keeper Commander]]

***

## Appendix

*Note created on [[2024-04-19]] and last modified on [[2024-04-19]].*

### Backlinks

```dataview
LIST FROM [[How to Add Native App Filler Fields to Records in Keeper Password Manager]] AND -"CHANGELOG" AND -"01-SLIPBOX/How to Add Native App Filler Fields to Records in Keeper Password Manager"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024