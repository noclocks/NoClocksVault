---
creation_date: 2024-05-01
modification_date: 2024-05-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Guide
  - Topic/Dev
  - Topic/Dev/Cloud
  - Topic/Dev/Cloud/GCP
  - Topic/Dev/Google
  - Topic/Dev/API
  - Topic/Dev/Credentials
  - Status/WIP
aliases:
  - Google Cloud Authentication and Authorization
  - Google Cloud Authentication and Authorization Guide
publish: true
permalink:
description:
image:
cssclasses:
---

# Google Cloud Authentication and Authorization Guide

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - *[Learn about authentication and authorization  |  Google Workspace  |  Google for Developers](https://developers.google.com/workspace/guides/auth-overview)*

[[Authentication vs. Authorization|Authentication and Authorization]] are mechanisms used to verify [[identity and access]] to resources, respectively. This document identifies key terms that you should know before implementing authentication and authorization in your app.

_Authentication_ identifies _who_ is making the request. _Authorization_ identifies _what_ resources the requestor can access and what level of access that they have. Authentication is a prerequisite for authorization. You can't determine what resources to access without first establishing the identity of the requestor. For a more detailed definition, see the [Important terminology section](https://developers.google.com/workspace/guides/auth-overview#important_terminology).

Consider the following simplified example of a hotel reservation. When you arrive at the hotel, the front desk clerk requests your ID to verify your reservation. Your ID _authenticates_ you to the hotel. The front desk clerk gives you a hotel key. This key gives you access to certain resources at the hotel such as your hotel room, the gym, and the business center. The hotel key _authorizes_ you to access those resources.

**Note:** This overview focuses on authentication and authorization for Google Workspace APIs. Some information in this document might not pertain to other Google APIs.
![](https://i.imgur.com/i5AB3vb.png)



***

## Appendix

*Note created on [[2024-05-01]] and last modified on [[2024-05-01]].*

### Backlinks

```dataview
LIST FROM [[Guide - Google Cloud Authentication and Authorization]] AND -"CHANGELOG" AND -"04-RESOURCES/Guides/Guide - Google Cloud Authentication and Authorization"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024