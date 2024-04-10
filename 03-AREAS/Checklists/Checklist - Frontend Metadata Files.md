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

#### Method

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

- [ ] Add an `icon.{ico|jpg|jpeg|png|svg}` image file.

```html
<link
  rel="icon"
  href="/icon?<generated>"
  type="image/<generated>"
  sizes="<generated>"
/>
```

- [ ] Add an `apple-icon.{jpg|jpeg|png}`.

```html
<link rel="apple-touch-icon" href="/apple-icon?<generated>" type="image/<generated>" sizes="<generated>"/>
```

> [!TIP]
> - You can set multiple icons by adding a number suffix to the file name. For example, `icon1.png`, `icon2.png`, etc. Numbered files will sort lexically.
> - Favicons can only be set in the root `/app` segment. If you need more granularity, you can use [`icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#icon).
> - The appropriate `<link>` tags and attributes such as `rel`, `href`, `type`, and `sizes` are determined by the icon type and metadata of the evaluated file.
> 	- For example, a 32 by 32px `.png` file will have `type="image/png"` and `sizes="32x32"` attributes.
> - `sizes="any"` is added to `favicon.ico` output to [avoid a browser bug](https://evilmartians.com/chronicles/how-to-favicon-in-2021-six-files-that-fit-most-needs) where an `.ico` icon is favored over `.svg`.

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
