---
creation_date: 2024-04-23
modification_date: 2024-04-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/WIP
aliases:
  - Invoice and Receipt Management Automation
publish: true
permalink:
description:
image:
cssclasses:
---

![](https://i.imgur.com/D4LETiC.png)

Explanation :

- Emails are received in Gmail, they can stay in the inbox or be in a specific label.
- Apps script will check if there is new emails, when there is a new emails it extracts the data and send the invoices attached to Document AI.
- Document AI perform analysis of the file and return a json structured file with all items identified.
- Apps Script will then store the data extracted in a Google Sheets and archive the file in a dedicated Google Drive folder.

![](https://i.imgur.com/aW1JLUT.png)
