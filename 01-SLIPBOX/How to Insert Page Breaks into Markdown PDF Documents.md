---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev
  - Status/Complete
aliases:
  - How to Insert Page Breaks into Markdown PDF Documents
publish: true
permalink:
description:
image:
cssclasses:
---

# Insert Page Breaks into Markdown for PDF

> [!SOURCE] Sources:
> - *[Insert Page Breaks into your Documents - Markdown Monster Documentation (west-wind.com)](https://markdownmonster.west-wind.com/docs/_5ne1ccv4t.htm)*

If you're generating output for PDF or printing, you may need to generate Page breaks in your documents. Markdown doesn't direct support for Page Breaks but you can use HTML to force a page break using the following markup:

```html
<div style="page-break-after: always"></div>
```

Since Markdown supports embedded [[Hyper Text Markup Language (HTML)|HTML]] rendering, this forces a page break into a printed or PDF document.

- See [[Espanso Setup and Configuration]] for details on the custom `:mdpagebreak` text-expansion snippet to use with [[Tool - Espanso|Espanso]]:

```yaml

```


***

## Appendix

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[How to Insert Page Breaks into Markdown PDF Documents]] AND -"CHANGELOG" AND -"//How to Insert Page Breaks into Markdown PDF Documents"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024