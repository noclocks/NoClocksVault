---
creation_date: 2024-04-17
modification_date: 2024-04-17
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Business
  - Topic/Business/Operations
  - Status/WIP
aliases:
  - ClientOps
  - Client Operations
  - Client Operations (ClientOps)
publish: true
permalink:
description:
image:
cssclasses:
---

# Client Operations (ClientOps)

> [!DEFINITION]
> **ClientOps** *(noun) `[klahy-uhnt-ops]`*:
> 1. A specialized division or methodology within a company dedicated to optimizing 

**ClientOps** is a 

## Client Metadata

- **ID**:
- **Name**:
- **Account Code**: Internal client identifier code or other reference number/abbrevation. 
- **Website**: [[Uniform Resource Locator (URL)|URL]] of the primary client website homepage.
- **Primary Contact ID**: ID of the client's primary contact from the **Contacts** table
- **Primary Email**: Email address of the primary contact
- **Notes**
- **Primary Location**

### Example

Example Client Metadata in [[YAML]]:

```yaml
id: 1
name: "ACME Incorporated"
code: "ACME"
website: "https://acme.com"
status: 
type:
links:
  github_repo: "https://github.com/noclocks/client-acme"
  github_project: "https://projects.github.com/noclocks/client-acme"
  github_docs: "https://docs.noclocks.dev/client-acme"
  gdrive: "https://"
  todoist: "https://"
contacts:
  
location:
  name:
  address_1:
  address_2:
  city:
  state:
  zip:
  country:
  

contacts:
```
