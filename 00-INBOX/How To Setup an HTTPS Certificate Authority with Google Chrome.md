---
creation_date: 2024-04-19
modification_date: 2024-04-19
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - How To Setup an HTTPS Certificate Authority with Google Chrome
publish: true
permalink:
description:
image:
cssclasses:
---

# Setup an HTTPS Certificate Authority with Google Chrome

> [!SOURCE] Sources:
> - *[How to add a trusted CA certificate to Chrome and Firefox | TechRepublic](https://www.techrepublic.com/article/how-to-add-a-trusted-certificate-authority-certificate-to-chrome-and-firefox/)*
> - *https://support.google.com/chrome/a/answer/6342302?hl=en*

> [!NOTE]
> This note was originally researched while setting up the [[Obsidian Local REST API Plugin]] which is utilized by the [[Obsidian Web Browser Extension]].

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

- [[Certificate Authority (CA)]]

[[Web Browsers]] use [[Secure Sockets Layer (SSL)]] to encrypt traffic between client systems and server computers to protect confidential data such as social security information and credit card details. For an [[SSL Certificate]] to work properly, the entity that issued the certificate (also known as a [[Certificate Authority (CA)]]) must also be trusted by the web browser, which involves installing the issuer certificate so the browser knows that issuer is valid and reliable.

Commonly used certificate authorities, such as [[Verisign]], [[DigiCert]], and [[Entrust]], are automatically trusted by most browsers. However, if you use an untrusted internal certificate authority to generate [[SSL Certificates]] for internal resources, you will be nagged by your browser when you attempt to connect.

You can configure your system(s) to trust all certificates from a certificate authority by installing that system’s SSL certificate as a [[trusted root certificate authority]]. That way, the web browser will never prompt you again about accessing any site with a certificate from that CA.

> [!NOTE]
> This note focuses on [[Google Chrome]], [[Microsoft Edge]], and [[Mozilla FireFox]]. Steps listed here are accurate at the time of this writing, but future versions of these browsers may involve different menu options.

## Obtain the CA Certificate

First, you need to get a copy of the [[SSL Certificate]] from the [[Certificate Authority (CA)]] in `DER` format. 

## Manage Chrome Certificate Settings

1. Navigate to `chrome://settings/security` in the browser 
2. Select "Manage Certificates":

![](https://i.imgur.com/FEO8erU.png)

3. Choose "Trusted Root Certificate Authorities" Tab and Select "Import":

![](https://i.imgur.com/4yW6ZCZ.png)



