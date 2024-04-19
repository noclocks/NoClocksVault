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

In the simple example below, the "Zoom" app name is matched and the username + `<Tab> + password` is typed when the user hits the hotkey "ctrl+shift+M".

## Demo Video

Source: *https://vimeo.com/703884522*

<iframe title="Keeper 101: Native App Filler" height="240" width="426" src="https://player.vimeo.com/video/703884522?app_id=122963" allowfullscreen="" allow="fullscreen" style="aspect-ratio: 1.775 / 1; width: 100%; height: 100%;"></iframe>

## See Also:

- [[Tool - Keeper Password Manager|Keeper Password Manager]]