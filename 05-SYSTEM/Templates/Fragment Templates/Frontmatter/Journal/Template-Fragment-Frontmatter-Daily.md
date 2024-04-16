---
creation_date: <% tp.file.creation_date("YYYY-MM-DD") %>
modification_date: <% tp.file.last_modified_date("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Daily
  - Type/Journal
  - Topic/Journal
  - Topic/Daily
  - Status/Ongoing
aliases:
  - <% tp.date.now("YYYY-MM-DD") %>
  - <% moment(tp.file.title).format("MMMM Do, YYYY") %>
  - <% moment(tp.file.title).format("dddd Do MMMM, YYYY") %>
publish: true
permalink: areas/journal/daily/<% tp.file.title %>
description: Daily Journal Note for <% tp.file.title %>.
image: 
cssclasses:
---
