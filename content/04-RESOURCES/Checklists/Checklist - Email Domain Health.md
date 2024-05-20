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
> - *[How do I avoid Gmail's spam folder? - Resend](https://resend.com/docs/knowledge-base/how-do-i-avoid-gmails-spam-folder)*

## Diagram

```mermaid
graph LR
  
```

## Checklist

- [ ] Authenticate Email
	- [ ] Setup  **[[Sender Policy Framework (SPF)|SPF]]** [[Domain Name Server or System (DNS)|DNS]] Record
	- [ ] Setup **[[Domain Keys Identified Mail (DKIM)|DKIM]]** [[Domain Name Server or System (DNS)|DNS]] Record
	- [ ] Setup [[Domain Based Message Authentication Reporting and Conformance (DMARC)|DMARC]]
	- [ ] (Optional) Setup [[Brand Indicators for Message Identification (BIMI)|BIMI]]


- [ ] **[[MX]]** [[Domain Name Server or System (DNS)|DNS]] Record
- [ ] **[[DMARC]]** [[Domain Name Server or System (DNS)|DNS]] Record
- [ ] **[[BIMI]]** [[Domain Name Server or System (DNS)|DNS]] Record
- [ ] **[[DKIM]]** [[Domain Name Server or System (DNS)|DNS]] Records
- [ ] **[[VMC]]** Certificate
- [ ] **[[BIMI]]** Compliance

### Authenticate Email

[[Sender Policy Framework (SPF)]] and [[Domain Keys Identified Mail (DKIM)]] are baseline requirements for all sending of email. [[Domain Based Message Authentication Reporting and Conformance (DMARC)]] and [[Brand Indicators for Message Identification (BIMI)]] are additional authentication methods that build trust and further improve inbox placement.

Action Items:

- [ ] Setup [[Domain Based Message Authentication Reporting and Conformance (DMARC)|DMARC]] for Domain

#### Setup [[Domain Based Message Authentication Reporting and Conformance (DMARC)|DMARC]]

##### 1. Add Flexible DMARC Record

- [ ] Add a Flexible `DMARC` Record:

| Name | Type | Value |
| ---- | ---- | ----- |
| `_dmarc.noclocks.dev`     | `TXT`     | `v=DMARC1;p=none;pct=100;rua=mailto:dmarcreports@noclocks.dev`      |

This record is specifying a few parameters:

```plaintext
"v=DMARC1; p=none; pct=90; rua=mailto:dmarcreports@noclocks.dev"
```

- `v` - Version: - This is the version of DMARC
- `p` - Policy: This is telling the inbox how to process messages that fail DMARC. Options are `none`, `quarantine`, `reject` . It’s a best practice to use at least quarantine or reject, but you should only do it once you know your messages are delivering and fully passing DMARC.
- `pct` - Percentage: This specifies the percentage of failed messages that the DMARC policy should be applied to. This can be set to a lower number once you move to a quarantine or reject policy to gradually roll out.
- `rua` - Reporting URI of Aggregate: This should be a **valid address** that can receive messages. This can be a different domain than the one you are setting the DMARC policy on, but see step 2 for instructions.

##### 2. Test to Confirm Delivery and Passing

- [ ] Send test emails and make sure they are delivering.
- [ ] Inspect the email headers to find `dmarc=pass` .

##### 3. Upgrade DMARC Policy

- [ ] Once you feel comfortable with how DMARC is behaving across all your sending, you should upgrade your Policy to `quarantine` .
- [ ] You can use the `pct` here to do a gradual rollout.

##### 4. Send Report to a Different Domain (Optional)

If you want to receive the DMARC reports to an address on a different domain, you need to specify in the `rua` of the sending domain but also add a record in the recipient domain giving access to receive the reports.

Let’s say you are sending with **blue.com** but want to send the reports to **red.com**:

|Name|Type|Value|
|---|---|---|
|blue.com._report._dmarc.red.com|TXT|“v=DMARC1”|

###### Reference

|Parameter|Purpose|Example|
|---|---|---|
|`v`|Protocol version|`v=DMARC1`|
|`pct`|Percentage of messages subjected to filtering|`pct=20`|
|`ruf`|Reporting URI for forensic reports|`ruf=mailto:authfail@example.com`|
|`rua`|Reporting URI of aggregate reports|`rua=mailto:aggrep@example.com`|
|`p`|Policy for organizational domain|`p=quarantine`|
|`sp`|Policy for subdomains of the OD|`sp=reject`|
|`adkim`|Alignment mode for DKIM|`adkim=s`|
|`aspf`|Alignment mode for SPF|`aspf=r`|

#### Setup [[Brand Indicators for Message Identification (BIMI)|BIMI]]

Setting up BIMI to become a verified sender and show your logo from the inbox.

BIMI (or [Brand Indicators for Message Identification](https://bimigroup.org/)) is a relatively new standard that allows you to specify a logo (and sometimes a checkmark) to be displayed next to your email in the inbox. This is a great way to increase brand recognition and trust as well as improve engagement.

##### Pre-Requisites

- [ ] Obtain a registered trademark for your logo
- [ ] Have already setup [[Domain Based Message Authentication Reporting and Conformance (DMARC)|DMARC]]

##### 1. Configure [[Domain Based Message Authentication Reporting and Conformance (DMARC)|DMARC]]

Just like [[Sender Policy Framework (SPF)|SPF]] and [[Domain Keys Identified Mail (DKIM)|DKIM]] are required for [[Domain Based Message Authentication Reporting and Conformance (DMARC)|DMARC]]. [[Domain Based Message Authentication Reporting and Conformance (DMARC)|DMARC]] is required for [[Brand Indicators for Message Identification (BIMI)|BIMI]]. This gives the assurance that your emails are properly authenticated and no one else could spoof your domain and send with your logo.

Your DMARC settings much meet a certain strictness to be ready for BIMI.

|Parameter|Purpose|Required Value|
|---|---|---|
|`p`|Policy|`p=quarantine` or `p=reject`|
|`pct`|Percentage|`pct=100`|

Here is an example of an adequate DMARC record:

```plaintext
"v=DMARC1; p=quarantine; pct=100; rua=mailto:dmarcreports@example.com"
```

Your emails must also be actively passing [[Domain Based Message Authentication Reporting and Conformance (DMARC)|DMARC]] checks. You can check this by looking at the reports sent to you via the `rua` address. Most reports will be an [[Extensible Markup Language (XML)|XML]] format which can be uploaded to a DMARC XML converter like [dmarcian](https://us.dmarcian.com/xml-to-human-converter/).

## 

[​

](https://resend.com/docs/dashboard/domains/bimi#2-obtain-a-vmc)

2. Obtain a VMC


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