---
creation_date: 2024-04-25
modification_date: 2024-04-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Bash
  - Type/Code/Shell
  - Topic/Dev
  - Topic/Linux
  - Topic/Bash
  - Topic/Shell
  - Topic/Windows
  - Status/WIP
aliases:
  - Bash Create Signing Certificate via OpenSSL Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Bash Create Signing Certificate via OpenSSL Code

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - *[documenso/SIGNING.md at main · documenso/documenso](https://github.com/documenso/documenso/blob/main/SIGNING.md)*

## Code Snippet

```bash
# generate a private key using openssl (2048-bit RSA key):
openssl genrsa -out private.key 2048

# generate self-signed certificate using private key
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code Snippets]]
- [[Linux]], [[Tool - Ubuntu|Ubuntu]], [[Tool - Kali Linux|Kali Linux]]
- [[Tool - Zsh|Zsh]]
- [[MOC - Development|Development Map of Content]]
- [[Tool - WSL|Windows Sub-System for Linux (WSL)]]

***

## Appendix

*Note created on [[2024-04-25]] and last modified on [[2024-04-25]].*

### Backlinks

```dataview
LIST FROM [[Bash - Create Signing Certificate via OpenSSL]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Create Signing Certificate via OpenSSL"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024