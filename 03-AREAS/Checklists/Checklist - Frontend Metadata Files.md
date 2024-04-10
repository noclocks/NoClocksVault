---
creation_date: 2024-04-02
modification_date: 2024-04-02
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Checklist
  - Topic/Dev
  - Topic/Frontend
  - Topic/React
  - Status/WIP
aliases:
  - Checklist - Frontend Metadata Files
  - Frontend Metadata Files Checklist
publish: true
permalink:
description:
image:
cssclasses:
---

# Frontend Metadata Files Checklist

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - **

## Diagram

```mermaid
graph LR
  
```

## Checklist

### Favicon, Icon, and Apple Icon

> [!NOTE]
> The `favicon`, `icon`, or `apple-icon` file conventions allow you to set icons for your application.
> 
> They are useful for adding app icons that appear in places like web browser tabs, phone home screens, and search engine results.

| File convention                                              | Supported file types                    | Valid locations |
| ------------------------------------------------------------ | --------------------------------------- | --------------- |
| [`favicon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#favicon) | `.ico`                                  | `app/`          |
| [`icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#icon) | `.ico`, `.jpg`, `.jpeg`, `.png`, `.svg` | `app/**/*`      |
| [`apple-icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#apple-icon) | `.jpg`, `.jpeg`, `.png`                 | `app/**/*`      |

- [ ] Add a `favicon.ico` image file to the root `/app` route segment.

```html
<link rel="icon" href="/favicon.ico" sizes="any" />
```

- [ ] Add an `icon.{ico|jpg|jpeg|png|svg}`

### Manifest.json

### Robots.txt

### Sitemap.xml

### Open Graph and Twitter

### 

## Conclusion

***

## Appendix

*Note created on [[2024-04-02]] and last modified on [[2024-04-02]].*

### Backlinks

```dataview
LIST FROM [[Checklist - Frontend Metadata Files]] AND -"CHANGELOG" AND -"03-AREAS/Checklists/Checklist - Frontend Metadata Files"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
