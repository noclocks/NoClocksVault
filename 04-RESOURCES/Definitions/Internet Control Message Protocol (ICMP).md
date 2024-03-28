---
creation_date: 2024-03-21
modification_date: 2024-03-21
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Definition
  - Topic/Dev
  - Status/WIP
aliases:
  - Internet Control Message Protocol
  - ICMP
publish: true
permalink:
description:
image:
cssclasses:
---

# Internet Control Message Protocol (ICMP)

> [!SOURCE] Sources:
> - *[What is ICMP? | Internet Control Message Protocol | Cloudflare](https://www.cloudflare.com/learning/ddos/glossary/internet-control-message-protocol-icmp/)*
> - *[Internet Control Message Protocol - Wikipedia](https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol)*

## Contents

```table-of-contents
style: nestedList
minLevel: 2
maxLevel: 10
includeLinks: true
debugInConsole: false
```

## Overview

> [!WARNING]
> This refers to the `IPv4` (`ICMPv4`) protocol and not`ICMPv6`.

The **Internet Control Message Protocol** (**ICMP**) is a supporting [protocol](https://en.wikipedia.org/wiki/Communications_protocol "Communications protocol") in the [Internet protocol suite](https://en.wikipedia.org/wiki/Internet_protocol_suite "Internet protocol suite"). It is used by [network devices](https://en.wikipedia.org/wiki/Network_device "Network device"), including [routers](https://en.wikipedia.org/wiki/Router_(computing) "Router (computing)"), to send error messages and operational information indicating success or failure when communicating with another [IP address](https://en.wikipedia.org/wiki/IP_address "IP address"). For example, an error is indicated when a requested service is not available or that a [host](https://en.wikipedia.org/wiki/Host_(network) "Host (network)") or router could not be reached. ICMP differs from [transport protocols](https://en.wikipedia.org/wiki/Transport_protocol "Transport protocol") such as [TCP](https://en.wikipedia.org/wiki/Transmission_Control_Protocol "Transmission Control Protocol") and [UDP](https://en.wikipedia.org/wiki/User_Datagram_Protocol "User Datagram Protocol") in that it is not typically used to exchange data between systems, nor is it regularly employed by end-user network applications (with the exception of some diagnostic tools like [ping](https://en.wikipedia.org/wiki/Ping_(networking_utility) "Ping (networking utility)") and [traceroute](https://en.wikipedia.org/wiki/Traceroute "Traceroute")).

ICMP for [IPv4](https://en.wikipedia.org/wiki/IPv4 "IPv4") is defined in [RFC](https://en.wikipedia.org/wiki/RFC_(identifier) "RFC (identifier)") [792](https://datatracker.ietf.org/doc/html/rfc792). A separate [ICMPv6](https://en.wikipedia.org/wiki/ICMPv6 "ICMPv6"), defined by RFC 4443, is used with [IPv6](https://en.wikipedia.org/wiki/IPv6 "IPv6").

***

- [[Request for Comments (RFC)]]
- [[Transmission Control Protocol (TCP)]]
- [[Internet Protocol (IP)]]
- [[User Datagram Protocol (UDP)]]

