---
creation_date: <% tp.file.creation_date("YYYY-MM-DD") %>
modification_date: <% tp.file.last_modified_date("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Agenda
  - Topic/Business
  - Status/WIP
aliases:
  - <% tp.file.title %>
  - <% ((tp.file.title).replace("Agenda - ", "")).replace(" - <% tp.file.creation_date) + " Map of Content" %>
publish: true
permalink:
description:
image:
cssclasses:
---