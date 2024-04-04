---
creation_date: <% tp.file.creation_date("YYYY-MM-DD") %>
modification_date: <% tp.file.last_modified_date("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Topic/NA
  - Status/WIP
aliases:
  - <% tp.file.title %>
  - <% ((tp.file.title).replace("Tool - ", "").replace("Python ", "") %>
publish: true
permalink:
description:
image:
cssclasses:
  - tool
---