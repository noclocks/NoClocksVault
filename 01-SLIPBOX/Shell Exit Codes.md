---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/WIP
aliases:
  - Shell Exit Codes
publish: true
permalink:
description:
image:
cssclasses:
---

# Exit Codes

## Conventions

- `0` = **Success**: Non-Zero indicates an issue
- `1` = **Failure**
- `2` = **Failure** (due to a usage problem)
- `3`-`63` = **Program-Specific** Exit Codes
- `64`-`79` = **BSD SysExits** ([https://man.openbsd.org/sysexits.3](https://man.openbsd.org/sysexits.3))
- `80`-`119` = **Custom**

Many shells use exit codes `126`-`128` to signal specific error status:

- `126` is for the shell and indicates command found but is not executable.
- `127` is for the shell and indicate command not found.
- `128` is for invalid argument to exit.

Many shells use exit codes above `128` in their `$?`; Representation of the exit status to encode the signal number of a process being killed.

- `128+n` means fatal error signal "n"
- Example: `130` means terminated by `CTRL+C` (Because `CTRL+C` is signal `2`)
- Example: `137` means terminated by kill -9 (because 128 + 9 = 137)

Finally, the highest exit code:

- `255` Exit status out of range (exit takes integer args `0`-`255`)