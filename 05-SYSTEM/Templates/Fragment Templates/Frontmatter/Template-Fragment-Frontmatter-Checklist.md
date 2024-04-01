---
creation_date: <% tp.file.creation_date("YYYY-MM-DD") %>
modification_date: <% tp.file.last_modified_date("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Checklist
  - Topic/NA
  - Status/WIP
aliases:
  - <% tp.file.title %>
  - <% (tp.file.title).replace("Checklist - ", "") + " Checklist" %>
publish: true
permalink:
description:
image:
cssclasses:
---

# <% <% (tp.file.title).replace("Checklist - ", "") + " Checklist" %>

<% tp.file.include("[[Template-Fragment-TOC]]") %>

## Overview

<% tp.file.include("[[Template-Fragment-]])
