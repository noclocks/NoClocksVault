---
creation_date: 2024-04-08
modification_date: 2024-04-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/WIP
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

Program Environment Variable Conventions:

- `$EDITOR`: Set the default Editor for editing text files (i.e. `vim`, `nano`, `vi`, `code`, etc.)
- `$PAGER`: Set the default Pager to display text files (i.e. `more`, `less`, etc.)
- `$BROWSER`: Set the default Web Browser

(`$SEARCHER`, `$CLIPPER`, `$DATER`, `$JUMPER` are other optional program environment variables).

## Scripts

```bash
# clone
git clone https://github.com/noclocks/noclocks_zshconfig

# set config home
config=${XDG_CONFIG_HOME:-$HOME/.config}
zshconfig=$config/zsh

# make directories
mkdir -p $zshconfig $zshconfig/{zshenv.d,zprofile.d,zshrc.d,zlogin.d,zlogout.d}

# copy/setup files
cp -R noclocks-zshconfig/zshenv.d/* $zshconfig/zshenv.d
cp -R noclocks-zshconfig/zprofile.d/* $config/zprofile.d
cp -R noclocks-zshconfig/zshrc.d/* $config/zshrc.d
cp -R noclocks-zshconfig/zlogin.d/* $config/zlogin.d
cp -R noclocks-zshconfig/zlogout.d/* $config/zlogout.d
```

Add this to the user's `.zshenv`:

```bash
config=${XDG_CONFIG_HOME:-$HOME/.config}
zshconfig=$config/zsh

for file in $zshconfig/zshenv.d/**/*(.N)
do 
    [ -x "$file" ] &&  . "$file"
done
```

Add this to user's `.zprofile`:

```bash
config=${XDG_CONFIG_HOME:-$HOME/.config}
zshconfig=$config/zsh

for file in $zshconfig/zprofile.d/**/*(.N)
do 
    [ -x "$file" ] &&  . "$file"
done
```

Add this to user's `.zshrc`:

```bash
config=${XDG_CONFIG_HOME:-$HOME/.config}
zshconfig=$config/zsh

for file in $zshconfig/zshrc.d/**/*(.N)
do 
    [ -x "$file" ] &&  . "$file"
done
```

Add this to user's `.zlogin`:

```bash
config=${XDG_CONFIG_HOME:-$HOME/.config}
zshconfig=$config/zsh

for file in $zshconfig/zlogin.d/**/*(.N)
do 
    [ -x "$file" ] &&  . "$file"
done
```

Add this to user's `.zlogout`:

```bash
config=${XDG_CONFIG_HOME:-$HOME/.config}
zshconfig=$config/zsh

for file in $zshconfig/zlogout.d/**/*(.N)
do 
    [ -x "$file" ] &&  . "$file"
done
```

