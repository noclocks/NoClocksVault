---
creation_date: 2024-04-13
modification_date: 2024-04-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Windows
  - Topic/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Create Self-Signed Development Certificate Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Create Self-Signed Development Certificate PowerShell Code

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
> - **

## Code Snippet

```powershell
#Requires -RunAsAdministrator
$CertName = "DevtCert"

$Params = @{
  Subject = "CN=$CertName"
  CertStoreLocation = "Cert:\CurrentUser\My"
  KeyExportPolicy = Exportable
  KeySpec = Signature
  KeyLength =
}
$Cert = New-SelfSignedCertificate -Subject "CN=$CertName" -CertStoreLocation
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-04-13]] and last modified on [[2024-04-13]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Create Self-Signed Development Certificate]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Create Self-Signed Development Certificate"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024