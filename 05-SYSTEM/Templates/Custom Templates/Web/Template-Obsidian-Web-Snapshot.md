---
creation_date: <% tp.file.creation_date("YYYY-MM-DD") %>
modification_date: <% tp.file.last_modified_date("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/WebClip
  - Topic/NA
  - Status/WIP
aliases:
  - <% tp.file.title %>
publish: true
permalink:
description:
image:
cssclasses:

page-title: {{json page.title}}
url: {{page.url}}
date: "{{date 'yyyy-MM-dd'}}"
---

# <% tp.file.title %>

> [!SOURCE] Sources:
> - *[{{json page.title}}]({{page.url}})*

<% tp.file.include("[[Template-Fragment-TOC]]") %>

## Content

{{#if page.selectedText}}
{{quote page.selectedText}}
{{/if}}
{{page.content}}

<% tp.file.include("[[Template-Fragment-Backmatter]]") %>