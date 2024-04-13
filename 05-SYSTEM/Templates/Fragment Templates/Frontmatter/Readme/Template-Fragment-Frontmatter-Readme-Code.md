---
creation_date: <% tp.file.creation_date("YYYY-MM-DD") %>
modification_date: <% tp.file.last_modified_date("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Type/Code
  - Topic/Meta
  - Topic/Dev
  - Topic/<% tp.file.folder(false) %>
  - Status/Ongoing
aliases:
  - <% tp.file.folder(false) + ' Code' %>
  - <% tp.file.folder(false) + ' Code Readme' %>
publish: true
permalink:
description:
image:
cssclasses:
  - readme
---
