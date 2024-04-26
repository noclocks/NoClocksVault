---
creation_date: <% tp.file.creation_date("YYYY-MM-DD") %>
modification_date: <% tp.file.last_modified_date("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Acronym
  - Topic/NA
  - Status/WIP
aliases:
  - <% tp.file.title %>
  - <% (tp.file.title.split(" (")[1]).replace(")", "") %>
  - <% (tp.file.title.split(" (")[0]) %>
publish: true
permalink:
description:
image:
cssclasses:
---