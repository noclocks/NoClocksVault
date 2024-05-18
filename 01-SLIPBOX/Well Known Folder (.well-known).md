---
creation_date: 2024-05-15
modification_date: 2024-05-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev
  - Topic/Dev/Web
  - Status/Complete
aliases:
  - Well Known Folder 
  - .well-known
  - Well Known URI
  - Well-known
publish: true
permalink:
description:
image:
cssclasses:
---


# Well Known Folder (.well-known)

> [!SOURCE] Sources:
> - *[Well-known URI - Wikipedia](https://en.wikipedia.org/wiki/Well-known_URI)*

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
> A **well-known URI** is a [[Uniform Resource Identifier (URI)]] for [[Uniform Resource Loader (URL)|URL]] path prefixes that start with `/.well-known/`. They are implemented in webservers so that requests to the servers for **well-known services** or information are available at URLs consistent **well-known locations** across servers.

## Description

Well-known URIs are [Uniform Resource Identifiers](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier "Uniform Resource Identifier") defined by the IETF in RFC 8615.[[1]](https://en.wikipedia.org/wiki/Well-known_URI#cite_note-:0-1) They are [URL](https://en.wikipedia.org/wiki/URL "URL") path prefixes that start with `/.well-known/`. This implementation is in response to the common expectation for web-based protocols to require certain services or information be available at URLs consistent across servers, regardless of the way URL paths are organized on a particular host. The URIs are implemented in webservers so that requests to the servers for well-known services or information are available at URLs consistently in well-known locations across servers.

The [IETF](https://en.wikipedia.org/wiki/Internet_Engineering_Task_Force "Internet Engineering Task Force") has defined a simple way for [web servers](https://en.wikipedia.org/wiki/Web_server "Web server") to hold metadata that any [user agent](https://en.wikipedia.org/wiki/User_agent "User agent") (e.g., [web browser](https://en.wikipedia.org/wiki/Web_browser "Web browser")) can request. The metadata is useful for various tasks, including directing a web user to use a [mobile app](https://en.wikipedia.org/wiki/Mobile_app "Mobile app") instead of the website or indicating the different ways that the site can be secured. The well-known locations are used by web servers to share metadata with user agents; sometimes these are files and sometimes these are requests for information from the web server software itself. The way to declare the different metadata requests that can be provided is standardized by the IETF so that other developers know how to find and use this information.

## Usage

The path well-known URI begins with the characters `/.well-known/`, and whose scheme is "HTTP", "HTTPS", or another scheme that has explicitly been specified to use well-known URIs. As an example, if an application hosts the service "example", the corresponding well-known URIs on `[https://www.example.com/](https://www.example.com/)` would start with `[https://www.example.com/.well-known/example](https://www.example.com/.well-known/example)`.

Information shared by a web site as a well-known service is expected to meet a specific standard. Specifications that need to define a resource for such site-wide metadata can register their use with [Internet Assigned Numbers Authority](https://en.wikipedia.org/wiki/Internet_Assigned_Numbers_Authority "Internet Assigned Numbers Authority") (IANA) to avoid collisions and minimize impingement upon sites' URI space.

## Common Well-Known URIs

> The list below describes known standards for .well-known services that a web server can implement.

|                         URI suffix                         |                         Description                          |
| :--------------------------------------------------------: | :----------------------------------------------------------: |
|                       acme-challenge                       | [Automated Certificate Management Environment](https://en.wikipedia.org/wiki/Automated_Certificate_Management_Environment) (ACME) |
|                       ai-plugin.json                       | Manifest for a [ChatGPT](https://en.wikipedia.org/wiki/ChatGPT) plugin. |
|                 apple-app-site-association                 | An Apple service that enables secure data exchange between iOS and a website. |
|       apple-developer-merchantid-domain-association        |     [Apple Pay](https://en.wikipedia.org/wiki/Apple_Pay)     |
|                           ashrae                           | [BACnet](https://en.wikipedia.org/wiki/BACnet) - A Data Communication Protocol for Building Automation and Control Networks |
|                      assetlinks.json                       | AssetLinks protocol used to identify one or more digital assets (such as web sites or mobile apps) that are related to the hosting web site in some fashion. |
|                        atproto-did                         | Handle-to-DID resolution for [AT Protocol](https://en.wikipedia.org/wiki/AT_Protocol) |
|                      autoconfig/mail                       | [Mozilla Thunderbird](https://en.wikipedia.org/wiki/Mozilla_Thunderbird) mail autoconfiguration service |
|                         browserid                          | [Mozilla Persona](https://en.wikipedia.org/wiki/Mozilla_Persona) |
|                           caldav                           | Locating Services for Calendaring Extensions to [WebDAV](https://en.wikipedia.org/wiki/WebDAV) ([CalDAV](https://en.wikipedia.org/wiki/CalDAV)) and vCard Extensions to WebDAV ([CardDAV](https://en.wikipedia.org/wiki/CardDAV)) |
|                          carddav                           | Locating Services for Calendaring Extensions to [WebDAV](https://en.wikipedia.org/wiki/WebDAV) ([CalDAV](https://en.wikipedia.org/wiki/CalDAV)) and vCard Extensions to WebDAV ([CardDAV](https://en.wikipedia.org/wiki/CardDAV)) |
|                      change-password                       | Helps password managers find the URL for the change password section. |
|                            coap                            | [CoAP](https://en.wikipedia.org/wiki/CoAP) (Constrained Application Protocol) over TCP, TLS, and WebSockets |
|                 com.apple.remotemanagement                 | Apple account-based user enrollment for [Mobile device management](https://en.wikipedia.org/wiki/Mobile_device_management) |
|                            core                            | Constrained RESTful Environments ([CoRE](https://en.wikipedia.org/w/index.php?title=CoRE&action=edit&redlink=1)) Link Format |
|                            csvm                            | CSV metadata, Model for Tabular Data and Metadata on the Web |
|                            dat                             | Links domain to [Dat](https://en.wikipedia.org/wiki/Dat_(software)) identifier, used by [Beaker web browser](https://en.wikipedia.org/wiki/Beaker_(web_browser)).[[17\]](https://en.wikipedia.org/wiki/Well-known_URI#cite_note-17) |
|                          did.json                          | [did:web](https://w3c-ccg.github.io/did-method-web/) Decentralized Identifiers (DIDs) for the Web |
|                          discord                           | Domain verification for [Discord](https://en.wikipedia.org/wiki/Discord) account connection |
|                            dnt                             |              Site-wide tracking status resource              |
|                       dnt-policy.txt                       |         A privacy-friendly Do Not Track (DNT) Policy         |
|                            est                             | [Enrollment over Secure Transport](https://en.wikipedia.org/wiki/Enrollment_over_Secure_Transport) (EST) |
|                           genid                            |     The Resource Description Framework (RDF) Skolem IRIs     |
|                            gpc                             |                 Global Privacy Control (GPC)                 |
|                            hoba                            | HTTP Origin-Bound Authentication ([HOBA](https://en.wikipedia.org/w/index.php?title=HOBA&action=edit&redlink=1)) |
|                         host-meta                          |                      Web Host Metadata                       |
|                       host-meta.json                       |                      Web Host Metadata                       |
|                     http-opportunistic                     |              Opportunistic Security for HTTP/2               |
|                        keybase.txt                         | Used by the [Keybase](https://en.wikipedia.org/wiki/Keybase) project to identify a proof that one or more people whose public keys may be retrieved using the Keybase service have administrative control over the origin server from which it is retrieved. |
|                           matrix                           | Provides discovery for both client and server APIs to the [Matrix](https://en.wikipedia.org/wiki/Matrix_(protocol)) federated protocol. |
|                          mercure                           | Discovery of Mercure hubs. Mercure is a protocol enabling the pushing of data updates to web browsers and other HTTP clients in a fast, reliable and battery-efficient way. |
|                        mta-sts.txt                         |          SMTP MTA Strict Transport Security Policy           |
|                             ni                             |                  Naming Things with Hashes                   |
|                          nodeinfo                          |       Metadata for federated social networking servers       |
|                 oauth-authorization-server                 | [OAuth](https://en.wikipedia.org/wiki/OAuth) Authorization Server Metadata |
|                    openid-configuration                    | [OpenID Connect](https://en.wikipedia.org/wiki/OpenID_Connect) |
|                          openorg                           |                Organisation Profile Document                 |
|                         openpgpkey                         | [OpenPGP](https://en.wikipedia.org/wiki/OpenPGP) Web Key Service |
|                       pki-validation                       | CA/Browser Forum’s Baseline Requirements Certificate Policy for the Issuance and Management of Publicly-Trusted Certificates |
|                            posh                            | [PKIX](https://en.wikipedia.org/wiki/PKIX) over Secure HTTP (POSH) |
|                      pubvendors.json                       | The [IAB](https://en.wikipedia.org/wiki/Interactive_Advertising_Bureau) pubvendors.json tech spec, which provide a standard for publishers to publicly declare the vendors that they work with, and their respective data rights/configuration. |
|                       reload-config                        | REsource LOcation And Discovery ([RELOAD](https://en.wikipedia.org/w/index.php?title=RELOAD&action=edit&redlink=1)) Base Protocol |
|                      repute-template                       |                 A Reputation Query Protocol                  |
|                        resourcesync                        |             ResourceSync Framework Specification             |
| [security.txt](https://en.wikipedia.org/wiki/Security.txt) | Standard to help organizations define the process for security researchers to disclose security vulnerabilities |
|                       statements.txt                       |           Standard for collective contract signing           |
|                          stun-key                          | Session Traversal Utilities for NAT ([STUN](https://en.wikipedia.org/wiki/STUN)) Extension for Third-Party Authorization |
|                        tdmrep.json                         |      Domain-wide TDM (Text and Data Mining) reservation      |
|                            time                            |                Time over HTTPS specification                 |
|                          timezone                          |             Time Zone Data Distribution Service              |
|                     uma2-configuration                     | [User-Managed Access](https://en.wikipedia.org/wiki/User-Managed_Access) (UMA) 2.0 grant for OAuth 2.0 authorization |
|                            void                            | Describing Linked Datasets with the [VoID](https://en.wikipedia.org/wiki/VoID) Vocabulary |
|                         webfinger                          |     [WebFinger](https://en.wikipedia.org/wiki/WebFinger)     |
|                      xrp-ledger.toml                       | [XRP](https://en.wikipedia.org/wiki/Ripple_(payment_protocol)) ledger node & account information. |

***

## Appendix

*Note created on [[2024-05-15]] and last modified on [[2024-05-15]].*

### Backlinks

```dataview
LIST FROM [[Well Known Folder (.well-known)]] AND -"CHANGELOG" AND -"//Well Known Folder (.well-known)"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024