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

For the digital signature of your documents you need a signing certificate in `.p12` format (public and private key). You can buy one (not recommended for dev) or use the steps to create a self-signed one:

1. Generate a private key using the [[OpenSSL]] command. You can run the following command to generate a 2048-bit RSA key:
    
    `openssl genrsa -out private.key 2048`
    
2. Generate a self-signed certificate using the private key. You can run the following command to generate a self-signed certificate:
    
    `openssl req -new -x509 -key private.key -out certificate.crt -days 365`
    
    This will prompt you to enter some information, such as the [[Common Name (CN)]] for the certificate. Make sure you enter the correct information. The -days parameter sets the number of days for which the certificate is valid.
    
3. Combine the private key and the self-signed certificate to create the `p12` certificate. You can run the following command to do this:
    
    `openssl pkcs12 -export -out certificate.p12 -inkey private.key -in certificate.crt`
    
4. You will be prompted to enter a password for the p12 file. Choose a strong password and remember it, as you will need it to use the certificate (**can be empty for dev certificates**)
    
5. Place the certificate `/apps/web/resources/certificate.p12` (If the path does not exist, it needs to be created)

## Code Snippet

```bash
# generate a private key using openssl (2048-bit RSA key):
openssl genrsa -out private.key 2048

# generate self-signed certificate using private key
openssl req -new -x509 -key private.key -out certificate.crt -days 365

# combine private key and certificate into a p12 certificate bundle:
openssl pkcs12 -export -out certificate.p12 -inkey private.key -in certificate.crt
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