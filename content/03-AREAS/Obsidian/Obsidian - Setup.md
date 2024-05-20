# Obsidian Vault Setup Guide

> [!NOTE] About
> This note describes my personal, opinionated workflow for automating and initializing a new Obsidian Vault.

## Contents

## Overview

## Notes

- Create Vault Root Folder
- Open Vault Folder in Obsidian (initializes `.obsidian` configuration folder) and VSCode for editing
- Initialize Git and Remote GitHub Repository: `git init` > `gh repo create` ...
- Initialize Default Configuration Files:
	- `.gitignore`
	- `.gitattributes`
	- `.editorconfig`
	- `README.md`
	- `CHANGELOG.md`
	- `LICENSE.md`
	- `.export-ignore`
- Create initial folder structure:
	- `00-INBOX`
	- `01-SLIPBOX`
	- `02-PROJECTS`
	- `03-AREAS`
	- `04-RESOURCES`
	- `99-ARCHIVES`
- Create required `Templates` and `Daily` Folders:
	- `03-AREAS/Daily`
	- `04-RESOURCES/Templates`
- Add `_README.md`s to all folders and populate content.
- Adjust Base Settings/Configurations and Base (Core) Plugins:
- Add Community Plugins
- Adjust Theme, Fonts, Styling and CSS Snippets
- Create HOME, README, ABOUT, FAQ, etc.
- Create a `src` or `srcjs` root folder for housing [[JavaScript]] scripts to utilize with [[Dataview]], [[CustomJS]], or [[Templater]].
- Create other significant folders and files:
	- Active Projects List should be in `02-PROJECTS/_README` or `02-PROJECTS/Active Projects List`, etc. 
	- Add notes/folders for each current project
	- For Areas, create:
		- `Code`
		- `Daily`
		- `MOCs`
		- `Tools`
		- etc.
	- For Resources create:
		- `Assets`
		- `Canvas`
		- `Lists`
		- `People`
		- `Sources`
		- `Templates`