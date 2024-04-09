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
  - <% (tp.file.title).replace("Agenda - ", "") %>
publish: true
permalink:
description: "Agenda Note for Meeting held on <% tp.file.creation_date("YYYY-MM-DD") %>."
image:
cssclasses:
  - agenda
---