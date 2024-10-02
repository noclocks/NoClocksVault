---
creation_date: 2024-10-02
modification_date: 2024-10-02
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev
  - Topic/Dev/Linux
  - Topic/Dev/Shell
  - Status/WIP
aliases:
  - Shebang 
publish: true
permalink:
description:
image:
cssclasses:
---


# Shebang (`#!`)

> [!SOURCE] Sources:
> - **

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> A shebang (`#!`) tells the [[operating system]] which interpreter to use when executing a script.
> For example, in a bash script, you might see `#!/usr/bin/bash` at the top of the script.

A **shebang** (#!) tells the operating system which interpreter to use when executing a script.

This specifies that the system should use the [[../04-RESOURCES/Code/Bash/_README|Bash]] shell located at `/bin/bash`. 

While these hardcoded paths work well in many environments, they can sometimes limit the script’s portability. 

That's where `env` becomes useful.

## Environment Based Shebangs

Using `env` in the shebang *ensures that the script dynamically locates the interpreter based on the user's environment*, instead of directly interpreting a hard-coded path. You can let `env` search the system's `PATH` environment variable in order to find the appropriate interpreter.

For example:

```bash
#!/usr/bin/env bash
```

instead of 

```bash
#!/usr/bin/bash
```

By using `env`, you remove the reliance on a specific path, allowing the system to select the interpreter from wherever it’s defined in the user’s `PATH`. This is particularly helpful in various environments where the interpreter’s path might not be as predictable as you think.

### Key Advantages of Using `env`

1. **Portability Across Systems**  
    On many Linux distributions and macOS, `/bin` is commonly a symbolic link to `/usr/bin`. This means that `#!/bin/bash` or `#!/usr/bin/python3` will often work without issue. However, in some specialized environments, custom installations, or more niche Unix-like systems, interpreters might be installed in non-standard locations. By using `env`, your script remains adaptable and can locate the interpreter wherever it resides in the `PATH`, regardless of the system setup.
2. **Flexibility with Virtual Environments**  
    Many developers, especially in the Python ecosystem, rely on virtual environments to manage dependencies. Virtual environments allow you to isolate the interpreter and its packages for specific projects. By using `env`, the script will automatically use the interpreter from the active virtual environment rather than the system-wide installation, providing greater flexibility and avoiding conflicts.
3. **Handling Multiple Versions of an Interpreter**  
    Systems often have multiple versions of the same interpreter (e.g., Python 2 and Python 3, or different Bash versions). When you use `env`, the script will execute with the version that’s prioritized in the user’s `PATH`, ensuring compatibility with the version of the interpreter they intend to use.
4. **Avoiding Hardcoded Paths**  
    Hardcoding paths like `/bin/bash` or `/usr/bin/python3` assumes that the interpreter will always be installed in that exact location, which isn’t always the case. Using `env` abstracts this away, ensuring that your script remains functional regardless of where the interpreter is installed.



## Resources

***

## Appendix

*Note created on [[2024-10-02]] and last modified on [[2024-10-02]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Shebang]] AND -"CHANGELOG" AND -"00-INBOX/Shebang"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024