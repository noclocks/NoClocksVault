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

1. Generate a private key using the [[Tool - OpenSSL|OpenSSL]] command. You can run the following command to generate a 2048-bit RSA key:
    
    `openssl genrsa -out private.key 2048`
    
2. Generate a self-signed certificate using the private key. You can run the following command to generate a self-signed certificate:
    
    `openssl req -new -x509 -key private.key -out certificate.crt -days 365`
    
    This will prompt you to enter some information, such as the [[Common Name (CN)]] for the certificate. Make sure you enter the correct information. The -days parameter sets the number of days for which the certificate is valid.
    
3. Combine the private key and the self-signed certificate to create the `p12` certificate. You can run the following command to do this:
    
    `openssl pkcs12 -export -out certificate.p12 -inkey private.key -in certificate.crt`
    
4. You will be prompted to enter a password for the p12 file. Choose a strong password and remember it, as you will need it to use the certificate (**can be empty for dev certificates**)
    
## Code Snippet

```bash
#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# generate a private key using openssl (2048-bit RSA key):
openssl genrsa -out private.key 2048

# generate self-signed certificate using private key
openssl req -new -x509 -key private.key -out certificate.crt -days 365

# combine private key and certificate into a p12 certificate bundle:
openssl pkcs12 -export -out certificate.p12 -inkey private.key -in certificate.crt
```

Function Wrapper:

```bash

```

## Details

This script is written in [[04-RESOURCES/Code/Bash/_README|Bash]], a popular [[shell scripting]] language. It uses [[Tool - OpenSSL|OpenSSL]], a robust toolkit for the [[Transport Layer Security (TLS)]] and [[Secure Sockets Layer (SSL)]] protocols, to generate a **private key**, a **self-signed certificate**, and a **PKCS#12 certificate bundle**.

- The first line, `#!/usr/bin/env bash`, is known as a shebang. It tells the system that this script should be executed using Bash.
- The second line, `# -*- coding: utf-8 -*-`, is a coding declaration. While not necessary in Bash scripts, it's often used in Python scripts to specify the character encoding. In this script, it doesn't have any effect and can be considered a comment.
- The command `openssl genrsa -out private.key 2048` generates a 2048-bit RSA private key. The `-out` option specifies the output filename, in this case, `private.key`.
- The command `openssl req -new -x509 -key private.key -out certificate.crt -days 365` generates a new X.509 certificate using the previously generated private key. The `-new` option indicates that a new certificate request should be created. The `-x509` option tells OpenSSL to create a self-signed certificate instead of a certificate request. The `-days 365` option sets the certificate to expire after one year.
- The command `openssl pkcs12 -export -out certificate.p12 -inkey private.key -in certificate.crt` creates a PKCS#12 file, also known as a PFX file, which bundles the private key and certificate together. This is often required when importing the key and certificate into certain systems. The `-export` option is used to specify that a PKCS#12 file will be created instead of parsed. The `-out` option specifies the output filename, in this case, `certificate.p12`. The `-inkey` and `-in` options specify the input private key and certificate files, respectively.

## See Also

- [[MOC - Technology|MOC - Technology]]
- [[MOC - Development]]
- [[Cryptography]]

- [[Tool - Documenso|Documenso]]
- [[Tool - OpenSSL|OpenSSL]]

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