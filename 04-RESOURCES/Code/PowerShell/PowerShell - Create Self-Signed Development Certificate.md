---
creation_date: 2024-04-13
modification_date: 2024-04-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
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
> - *[Create a self-signed public certificate to authenticate your application - Microsoft identity platform | Microsoft Learn](https://learn.microsoft.com/en-us/entra/identity-platform/howto-create-self-signed-certificate)*
> - *[Digital Signatures - Windows drivers | Microsoft Learn](https://learn.microsoft.com/en-us/windows-hardware/drivers/install/digital-signatures)*
> - *[wsl-plugin-sample/sign-plugin.ps1 at main · microsoft/wsl-plugin-sample](https://github.com/microsoft/wsl-plugin-sample/blob/main/sign-plugin.ps1)*
> - *[WSL Plugins | Microsoft Learn](https://learn.microsoft.com/en-us/windows/wsl/wsl-plugins)*

## Code Snippet

The script below creates a new self-signed, development certificate, exports it to a local `.cer` file, and demonstrates how to sign a script or [[Dynamic Link Library (DLL)]]:

```powershell
#Requires -RunAsAdministrator

# Declare Certificate Name
$CertName = "DevtCert"

# Specify Splat Params
$Params = @{
  Subject = "CN=$CertName"
  CertStoreLocation = "Cert:\CurrentUser\My"
  KeyExportPolicy = Exportable
  KeySpec = Signature
  KeyLength = 2048
  KeyAlgorithm = RSA
  HashAlgorithm = SHA256
  Type = CodeSigningCert
}

# Create the Certificate
$Cert = New-SelfSignedCertificate @Params

# Export Certificate to Local File Path
Export-Certificate -Cert $Cert -FilePath ".\$CertName.cer"

# Sign a Script
Set-AuthenticodeSignature -FilePath "path/to/script.ps1" -Certificate $Cert

# Sign a DLL
Set-AuthenticodeSignature -FilePath "path/to/library.dll" -Certificate $cert
```

To import the certificate to the [[Trusted Root Certification Authority]]:

```powershell
certutil -addstore "Root" ".\$CertName.cer"
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