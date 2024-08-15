---
creation_date: 2024-08-15
modification_date: 2024-08-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/HTML
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/HTML
  - Status/WIP
aliases:
  - HTML Netscape Bookmark File Format Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# HTML Netscape Bookmark File Format

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - *https://learn.microsoft.com/en-us/previous-versions/windows/internet-explorer/ie-developer/platform-apis/aa753582(v=vs.85)*
> - *http://fileformats.archiveteam.org/wiki/Netscape_bookmarks*
> - *https://www.npmjs.com/package/netscape-bookmarks*
> - *https://perl.mines-albi.fr/perl5.6.1/site_perl/5.6.1/Netscape/Bookmarks.html*

The Netscape bookmark file format is a specific structure used to store bookmarks in [[Hyper Text Markup Language (HTML)|HTML]]. It allows users to manage their bookmarks easily. Here’s a summary of the format:

1. **File Structure**: Netscape bookmarks are saved in an HTML file with a `.html` extension. 
2. **Basic Elements**:
	- `<DL>` (Definition List): Groups bookmarks.
    - `<DT>` (Definition Term): Each bookmark entry.
    - `<A HREF="URL">`: Represents the link, with `URL` being the web address.
    - `<TITLE>`: The title of the bookmark that appears in the browser.

## Code Snippet

*Example Format*:

```html
<!DOCTYPE NETSCAPE-Bookmark-file-1>
<Meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
<TITLE>Bookmarks</TITLE>
<H1>Bookmarks</H1>
<DL><p>
  <DT><H3 ADD_DATE="timestamp" LAST_MODIFIED="timestamp" PERSONAL_TOOLBAR_FOLDER="true">Bookmarks</H3>
  <DL><p>
    <DT><A HREF="http://example.com" ADD_DATE="timestamp">Example</A>
  </DL><p>
</DL><p>
```

> [!TIP]
> This format supports organizing bookmarks hierarchically, allowing for folders and subfolders.

## Details

- the [Netscape format](https://msdn.microsoft.com/en-us/library/aa753582%28v=vs.85%29.aspx) has a very loose specification: no [DTD](https://en.wikipedia.org/wiki/Document_type_definition) nor [XSL stylesheet](https://en.wikipedia.org/wiki/XSL) to constrain how data is formatted
- software and web services export bookmarks using a wild variety of attribute names and values
- using standard SAX or DOM parsers is thus not straightforward.

## See Also

- [[Python - Netscape Converter|Netscape Converter]]

- [[04-RESOURCES/Code/HTML/_README|HTML Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-08-15]] and last modified on [[2024-08-15]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[HTML - Netscape Bookmark File Format]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/HTML/HTML - Netscape Bookmark File Format"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024