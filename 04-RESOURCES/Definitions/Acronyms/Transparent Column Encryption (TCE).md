---
creation_date: 2024-05-30
modification_date: 2024-05-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Acronym
  - Topic/NA
  - Status/WIP
aliases:
  - Transparent Column Encryption (TCE)
  - TCE
  - Transparent Column Encryption
publish: true
permalink:
description:
image:
cssclasses:
---

# Transparent Column Encryption (TCE)

> [!SOURCE] Sources:
> - *https://supabase.com/docs/guides/database/vault*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

As we mentioned, the Vault uses `pgsodium`'s Transparent Column Encryption (TCE) to store secrets in an authenticated encrypted form. There are some details around that you may be curious about, what does authenticated mean, and where are encryption keys store? This section explains those details.

The first important feature of TCE is that it uses an [Authenticated Encryption with Associated Data](https://en.wikipedia.org/wiki/Authenticated_encryption#Authenticated_encryption_with_associated_data_(AEAD)) encryption algorithm (based on `libsodium`).

***

## Appendix

*Note created on [[2024-05-30]] and last modified on [[2024-05-30]].*

### See Also

- [[Tool - Supabase|Supabase]]

### Backlinks

```dataview
LIST FROM [[Transparent Column Encryption (TCE)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Acronyms/Transparent Column Encryption (TCE)"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024


