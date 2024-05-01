---
creation_date: 2024-05-01
modification_date: 2024-05-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Type/Definition
  - Type/Guide
  - Topic/Dev
  - Topic/Dev/Credentials
  - Topic/Dev/API
  - Status/WIP
aliases:
  - Authentication vs. Authorization
publish: true
permalink:
description:
image:
cssclasses:
---


# Authentication vs. Authorization

> [!SOURCE] Sources:
> - *[Authentication vs. Authorization](https://auth0.com/docs/get-started/identity-fundamentals/authentication-and-authorization#:~:text=What%20are%20authentication%20and%20authorization,what%20they%20have%20access%20to.)*

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
> This note is about the difference between the similar, yet different terms: [[Authentication]] and [[Authorization]].

While often used interchangeably, [authentication](https://auth0.com/docs/authenticate) and authorization represent fundamentally different functions. In this article, we compare and contrast the two to show how they protect applications in complementary ways.

## What are authentication and authorization?

In simple terms, authentication is the process of verifying who a user is, while authorization is the process of verifying what they have access to.

Comparing these processes to a real-world example, when you go through security in an airport, you show your ID to authenticate your identity. Then, when you arrive at the gate, you present your boarding pass to the flight attendant, so they can authorize you to board your flight and allow access to the plane.

## Authentication vs. authorization

Here's a quick overview of the differences between authentication and authorization:

|**Authentication**|**Authorization**|
|---|---|
|Determines whether users are who they claim to be | Determines what users can and cannot access|
|Challenges the user to validate credentials (for example, through passwords, answers to security questions, or facial recognition) | Verifies whether access is allowed through policies and rules|
|Usually done before authorization | Usually done after successful authentication|
|Generally, transmits info through an ID Token | Generally, transmits info through an Access Token|
|Generally governed by the OpenID Connect (OIDC) protocol | Generally governed by the OAuth 2.0 framework|
|Example: Employees in a company are required to authenticate through the network before accessing their company email | Example: After an employee successfully authenticates, the system determines what information the employees are allowed to access|

In short, access to a resource is protected by both authentication and authorization. If you can't prove your identity, you won't be allowed into a resource. And even if you can prove your identity, if you are not authorized for that resource, you will still be denied access.

## Resources

- [[Guide - Google Cloud Authentication and Authorization]]
- [[Application Programming Interface (API)|API]]
- [[Authentication]]
- [[Authorization]]
- [[Cryptography]]
- [[API Key Management]]
- [[Tool - clerk|Clerk]]
- [[Tool - Supabase|Supabase]]
- [[Tool - Auth0|Auth0]]


***

## Appendix

*Note created on [[2024-05-01]] and last modified on [[2024-05-01]].*

### Backlinks

```dataview
LIST FROM [[Authentication vs. Authorization]] AND -"CHANGELOG" AND -"//Authentication vs. Authorization"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024