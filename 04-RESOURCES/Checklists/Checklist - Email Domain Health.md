---
creation_date: 2024-05-02
modification_date: 2024-05-02
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Checklist
  - Topic/Dev
  - Topic/Dev/IT
  - Topic/Dev/DNS
  - Status/WIP
aliases:
  - Email Deliverability Health
  - Email Deliverability Health Checklist
publish: true
permalink:
description:
image:
cssclasses:
---

# Email Deliverability Health Checklist

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
> - **

## Diagram

```mermaid
graph LR
  
```

## Checklist

- [ ] **[[MX]]** [[Domain Name Server or System (DNS)|DNS]] Record
- [ ] **[[SPF]]** [[Domain Name Server or System (DNS)|DNS]] Record
- [ ] **[[DMARC]]** [[Domain Name Server or System (DNS)|DNS]] Record
- [ ] **[[BIMI]]** [[Domain Name Server or System (DNS)|DNS]] Record
- [ ] **[[DKIM]]** [[Domain Name Server or System (DNS)|DNS]] Records
- [ ] **[[VMC]]** Certificate
- [ ] **[[BIMI]]** Compliance

### MX Records

- [ ] `TXT` Record with the value pointing to the [[SMTP]] domain (i.e. `smtp.google.com`)
- [ ] [[BIMI]] Compliant

### SPF Records

- [ ] `TXT` Record with the value pointing to the [[SPF]] (i.e. `v=spf1 include:_spf.google.com ~all`)
- [ ] [[BIMI]] Compliance

### DMARC Records

- [ ] `TXT` Record with the [[DMARC]] Policy (i.e. `v=DMARC1; p=quarantine; rua=mailto:...;ruf=mailto:...;fo=1`)
- [ ] [[DMARC]] policy set to `p=quarantine` or `p=reject` and not `p=none`
- [ ] [[BIMI]] Compliance

### BIMI Records

> [!TIP] [[Brand Indicators for Message Identification (BIMI)]] is an email authentication protocol that allows companies to display their brand logo in the email inbox of their recipients. [[BIMI]] is designed to increase brand recognition, email deliverability, and email security.

- [ ] Validate that a [[BIMI]] [[Domain Name Server or System (DNS)|DNS]] `TXT` Record exists and ensure that it is correctly configured. Check the record against the standard, verifies required configurations, and check that the domain and email authentication protocols ([[SPF]], [[DKIM]], and [[DMARC]] are properly configured and authenticated).

### VMC Certificate

- [ ] Certificate Exists
- [ ] Brand Visibility
- [ ] Email Authentication

### Other

- [ ] Email Aliases
- [ ] Email Routing
- [ ] Google Workspace
- [ ] Gmail
- [ ] Outlook
- [ ] Stripe
- [ ] Mailgun
- [ ] Mailchimp

## Tools

- [[MX Lookup]]
- [[Email Blocklist Checker]]
- [[Email Domain Health Checker]]
- [[Email Spam Tester]]
- [[Email Subject Line Preview]]


## Conclusion

***

## Appendix

*Note created on [[2024-05-02]] and last modified on [[2024-05-02]].*

### Backlinks

```dataview
LIST FROM [[Checklist - Email Domain Health]] AND -"CHANGELOG" AND -"04-RESOURCES/Checklists/Checklist - Email Domain Health"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
