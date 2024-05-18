---
creation_date: 2024-01-29
modification_date: 2024-01-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/PKM
  - Topic/Obsidian
  - Status/WIP
aliases:
  - Obsidian Application Configuration
cssclasses: 
---

# Obsidian Application Configuration

> [!SOURCE] Sources
> - *[metadata-extractor/docs/Guide - Controlling Obsidian via Third-Party-App.md at main · kometenstaub/metadata-extractor (github.com)](https://github.com/kometenstaub/metadata-extractor/blob/main/docs/Guide%20-%20Controlling%20Obsidian%20via%20Third-Party-App.md)*
> - *[Uniform Resource Identifier - Wikipedia](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier)*


```table-of-contents
title: ## Contents
style: nestedList
maxLevel: 10
includeLinks: true
debugInConsole: false
```

## Overview


## URI Reference

> [!NOTE] 
> A *[[Uniform Resource Identifier (URI)|Uniform Resource Identifier]] is a unique sequence of characters that identifies a logical or physical resource used by web technologies. See [[Uniform Resource Identifier (URI)]] for more details.

- The Default [[03-AREAS/Obsidian/_README|Obsidian]] `URI`: [[Obsidian - URI Scheme]] for controlling Obsidian
- The [[Advanced URI Community Plugin]] for controlling Obsidian
- The [[Hotkey Helper Community Plugin]] uses its own `Hotkey Helper URI` ([pjeby/hotkey-helper (github.com)](https://github.com/pjeby/hotkey-helper#plugin-urls))
- URI Schemes are generally practical, since they also work on any platform, including mobile.
- [URLs must be properly encoded](https://www.w3schools.com/tags/ref_urlencode.ASP). The `Advanced URI Plugin: Copy Command URI` already applies proper URL encoding.
- In JavaScript, the functions [`encodeURIComponent()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent) and [`encodeURI()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/encodeURI) are used for encoding.

## Application Data

|Obsidian Data|How to access|How to control|
|---|---|---|
|Vaults|`%LOCALAPPDATA%/obsidian/obsidian.json`||
|Enabled Core Plugins|`{vaultPath}/.obsidian/core-plugins.json`||
|Current Theme|`{vaultPath}/.obsidian/appearance.json`|Theme Switcher Command (via Adv. URI)|
|Enabled CSS Snippets|`{vaultPath}/.obsidian/appearance.json`|Renaming a snippet located in `"{vaultPath}/.obsidian/snippets/"` basically works as a OFF-Switch, since CSS is live-reloaded by Obsidian. (renaming the file back, would be the on-switch)|
|Base Font Size|`{vaultPath}/.obsidian/appearance.json`||
|Workspaces|`{vaultPath}/.obsidian/workspaces.json`|Open Workspace (Adv. URI)|
|Tags|[Metadata-Extractor-Plugin](https://github.com/kometenstaub/metadata-extractor)|Open / Search (URI)|
|Aliases|[Metadata-Extractor-Plugin](https://github.com/kometenstaub/metadata-extractor)|Open (URI)|
|Headings|[Metadata-Extractor-Plugin](https://github.com/kometenstaub/metadata-extractor)|Open Heading (Adv. URI)|
|Recent Files (up to 10)|`{vaultPath}/.obsidian/workspace` (last item)|Open (URI)|
|Starred Files|`{vaultPath}/.obsidian/starred.json`|Open (URI)|
|Index of Vault|`find "{vaultPath}" -name "*.md"` (shell)|Open (URI)|
|Plugins in Community Browser|`https://raw.githubusercontent.com/obsidianmd/obsidian-releases/master/community-plugin.json`|Hotkey Helper URI|
|Downloads & Versions of Plugins|`https://raw.githubusercontent.com/obsidianmd/obsidian-releases/master/community-plugin-stats.json`|Hotkey Helper URI|
|Themes in Community Browser|`https://raw.githubusercontent.com/obsidianmd/obsidian-releases/master/community-css-themes.json`||
|Installed Plugins|`ls -1 "{vaultPath}/.obsidian/plugins/"` (shell)|Hotkey Helper URI|
|Installed Themes|`ls -1 "{vaultPath}/.obsidian/themes/"` (shell)||
|Installed CSS Snippets|`ls -1 "{vaultPath}/.obsidian/snippets/"` (shell)|
