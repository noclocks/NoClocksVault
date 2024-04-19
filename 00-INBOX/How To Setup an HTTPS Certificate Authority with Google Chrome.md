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

You’ll need to set up a [[Certificate Authority (CA)]] to manage networks and monitor traffic. It’s important to set up a CA to ensure that your users can access websites that have digital certificates that can be validated by a specific CA. This should be done early during your deployment to ensure that users can access websites without issues.

