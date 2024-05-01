---
creation_date: 2024-05-01
modification_date: 2024-05-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - CRM
  - CRM Readme
publish: true
permalink:
description:
image:
cssclasses:
  - readme
---


# Customer Relationship Management (CRM) System

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

## Data Structures and Types

Structures:

- Email Address:
	- Primary
	- Secondary
	- Valid
	- Domain
- Phone Number:
	- Country Code
	- Area Code
	- Phone Number
- Address
	- Address Line 1
	- Address Line 2
	- City
	- State
	- Zip
	- Country
- Industry
- Technology
- Title
- Contact Type


Types:

- Text
- Password
- Email
- Phone
- Number
- Currency
- List
- Boolean
- Date
- URL
- File
- Calculated

## Entities

- **Lead**: a "Lead" is a record of a person who might convert into a customer or client, but they do not have an established relationship with our organization yet.
- **Contact**: a "Contact" is a record of a person with an established relationship with No Clocks; whether its a customer, prospect, affiliate, or partner. Contacts have "Accounts" associated with them.
- **Account**: B2B Accounts for prospects and customers
- **Opportunity**: Represents a pending deal or activity that has the potential to generate revenue.
- **Campaign**
- **Case**


## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`**  individual notes in the `03-AREAS/CRM` folder, excluding this note.*

```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM "03-AREAS/CRM" AND -"03-AREAS/CRM/_README"
WHERE file.name != this.file.name
SORT file.name asc
```

***

## Appendix

*Note created on [[2024-05-01]] and last modified on [[2024-05-01]].*

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"03-AREAS/CRM/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024