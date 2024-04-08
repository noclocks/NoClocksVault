---
creation_date: 2024-04-08
modification_date: 2024-04-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - Zsh Configuration Best Practices
publish: true
permalink:
description:
image:
cssclasses:
---

# Zsh Configuration Best Practices

- Use [[XDG]] 

- Split configurations out by type:
  - `zshenv.d/functions`: Function Definitions
  - `zshenv.d/programs`: Program-specific environment variable declarations and exports (i.e. `$EDITOR`, `$PAGER`, etc.)
  - `zshenv.d/settings`: [[Zsh]] settings, such as completions, history, key bindings, etc.
  - `zshrc.d/aliases`: [[Zsh]] shell aliases

## Conventions

Alias Conventions:

- For an alias that is a one-letter shortcut, we use a naming convention for the file: the letter, an equal sign, and the result. For example, the file `g=git.zsh` is the alias that sets `g` to run `git`.

- For an alias that is intended to launch a program, we use a convention of trying probable locations for the tool. For example, for the alias `firefox`, we look in order in `/opt` (e.g. typical for our custom installs), then on the path, then in the typical macOS location.

Environment 