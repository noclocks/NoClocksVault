---
creation_date: 2024-05-09
modification_date: 2024-05-09
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Acronym
  - Topic/NA
  - Status/WIP
aliases:
  - Sender Policy Framework (SPF)
  - SPF
  - Sender Policy Framework
publish: true
permalink:
description:
image:
cssclasses:
---

# Sender Policy Framework (SPF)

> [!SOURCE] Sources:
> - *[What is a DNS SPF record? | Cloudflare](https://www.cloudflare.com/learning/dns/dns-records/dns-spf-record/)*
> - *[RFC 7208 - Sender Policy Framework (SPF) for Authorizing Use of Domains in Email, Version 1](https://datatracker.ietf.org/doc/html/rfc7208)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

Sender Policy Framework (SPF) is an email authentication standard that allows you to list all the IP addresses that are authorized to send email on behalf of your domain.

The SPF configuration is made of a TXT record that lists the IP addresses approved by the domain owner. It also includes a MX record that allows the recipient to send bounce and complaint feedback to your domain.

## Example

SPF records must follow certain standards in order for the server to understand how to interpret its contents. Here is an example of the core components of an SPF record:

```
v=spf1 ip4:192.0.2.0 ip4:192.0.2.1 include:examplesender.email -all
```

This example lets the server know what type of record this is, states the approved IP addresses and a third-party for this domain, and tells the server what to do with non-compliant emails. Let’s break down how the individual components accomplish this:

- `v=spf1` tells the server that this contains an SPF record. Every SPF record must begin with this string.
- Then comes the “guest list” portion of the SPF record or the list of authorized IP addresses. In this example, the SPF record is telling the server that `ip4:192.0.2.0` and `ip4:192.0.2.1` are authorized to send emails on behalf of the domain.
- `include:examplesender.net` is an example of the include tag, which tells the server what third-party organizations are authorized to send emails on behalf of the domain. This tag signals that the content of the SPF record for the included domain (examplesender.net) should be checked and the IP addresses it contains should also be considered authorized. Multiple domains can be included within an SPF record but this tag will only work for valid domains.
- Finally, `-all` tells the server that addresses not listed in the SPF record are not authorized to send emails and should be rejected.

- Alternative options here include `~all`, which states that unlisted emails will be marked as insecure or spam but still accepted, and, less commonly, `+all`, which signifies that any server can send emails on behalf of your domain.

While the example used in this article is fairly straightforward, SPF records can certainly be more complex. Here are just a few things to keep in mind to ensure SPF records are valid:

- There cannot be more than one SPF record associated with a domain.
- The record must end with the `all` component or include a `redirect=` component (which indicates that the SPF record is hosted by another domain).
- An SPF record cannot contain uppercase characters.

***

## Appendix

*Note created on [[2024-05-09]] and last modified on [[2024-05-09]].*

### Backlinks

```dataview
LIST FROM [[Sender Policy Framework (SPF)]] AND -"CHANGELOG" AND -"//Sender Policy Framework (SPF)"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024


