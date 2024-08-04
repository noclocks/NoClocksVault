---
creation_date: 2024-07-25
modification_date: 2024-07-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/CSS
  - Type/Code/SCSS
  - Type/Code/SASS
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/CSS
  - Status/WIP
aliases:
  - CSS Special Hyperlinks Based on Content Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Special Hyperlinks Based on Content Code

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
> - *[almond.css/src/general/extension.images.scss at master · alvaromontoro/almond.css (github.com)](https://github.com/alvaromontoro/almond.css/blob/master/src/general/extension.images.scss)*
> - *[Almond.CSS Demo (alvaromontoro.github.io)](https://alvaromontoro.github.io/almond.css/demo/)*

This [[Cascading Style Sheets (CSS)|CSS]] / [[Tool - SCSS|SCSS]] trick comes from a [[Cascading Style Sheets (CSS)|CSS]] library I found called [almond.css](https://github.com/alvaromontoro/almond.css).

## Code Snippets

Both CSS examples below rely on the following [[Hyper Text Markup Language (HTML)|HTML]] markup:

### Link (Anchor Tag) Enhancements

Enhances `<a>` tags by determining a "type" based on its content (i.e. if detects `mailto:` it is categorized as an email link and styled accordingly).

The following "types" are implemented:

- Email (`mailto:`)
- Phone (`tel:`)
- Text (`sms:`)
- File (`file:`)
- External (`rel` is like `external`)
- Bookmark (`rel` is like `bookmark`)
- Download (`download`)

```scss
/* Enhanced Links (<a> anchor tags) */

/* Shared */ 
a[href^="mailto:"],
a[href^="tel:"],
a[href^="sms:"],
a[href^="file:"],
a[rel~="external"],
a[rel~="bookmark"],
a[download] {
  background-repeat: no-repeat;
  background-size: 1rem 1rem;
  background-position: 0rem 50%;
  display: inline-block;
  -moz-print-color-adjust: exact;
  -ms-print-color-adjust: exact;
  -webkit-print-color-adjust: exact;
  print-color-adjust: exact;
  padding-left: 1.25rem;
}

/* Email */
a[href^="mailto:"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M1,5 39,5 39,35 1,35 1,5 20,22 39,5' stroke='%23999' stroke-width='2' fill='none' /></svg>");
}

/* Phone */
a[href^="tel:"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><g fill='none' stroke='%23999' stroke-width='2'><path d='M8,1 34,1 34,39 8,39Z M12,5 30,5 30,30 12,30Z' /><circle cx='21' cy='34' r='2' /></g></svg>");
}

/* Text */
a[href^="sms:"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M2,2 38,2 38,28 22,28 12,38 12,28 2,28Z' fill='none' stroke='%23999' stroke-width='2'/></svg>");
}

/* File */
a[href^="file:"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M5,2 28,2 35,9 35,38 5,38Z M28,2 28,9 35,9' fill='none' stroke='%23999' stroke-width='2'/></svg>");
}

/* Download */
a[download] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M5,2 28,2 35,9 35,38 5,38Z M28,2 28,9 35,9 M20,10 20,30 M11,21 20,30 29,21' fill='none' stroke='%23999' stroke-width='2'/></svg>");
}

/* External */
a[rel~="external"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M28,4 39,4 39,15 M39,4 23,20 M28,9 7,9 7,34 35,34 35,15' fill='none' stroke='%23999' stroke-width='2'/></svg>");
}

/* Bookmark */
a[rel~="bookmark"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M5,2 35,2 35,38 20,25 5,38Z' fill='none' stroke='%23999' stroke-width='2'/></svg>");
}
```

which gets applied to the following example [[Hyper Text Markup Language (HTML)|HTML]] markup:

```html
<a href="mailto:alvaromontoro@gmail.com">Link to alvaromontoro@gmail.com</a><br />
<a href="tel:fakenumber">Link to a number (call)</a><br />
<a href="sms:fakenumber">Link to a number (message)</a><br />
<a href="file:index.html">Link to a file</a><br />
<a href="file:index.html" download>Link to download a file</a><br />
<a rel="external" href="#">Link to an external site</a><br />
<a rel="bookmark" href="#">Link to bookmark</a>
```

resulting in:

![[Pasted image 20240725211302.png]]

### Input Enhancements

This [[SASS]] customizes input elements similarly to the links.

The following inputs are customized:

- Date
- Time
- Date Time
- Week
- Month
- Email
- Phone
- Number
- Password
- Search
- URL


```scss
/* Enhanced Inputs */

/* Shared */
input[type="date"],
input[type="datetime-local"],
input[type="email"],
input[type="month"],
input[type="number"],
input[type="password"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
input[type="week"] {
  padding-left: 2.5rem;
  background-repeat: no-repeat;
  background-size: 1.5rem 1.5rem;
  background-position: 0.5rem 50%;
}

/* Date, Date Time, Month, and Week */
input[type="date"],
input[type="datetime-local"],
input[type="month"],
input[type="week"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><rect x='1' y='5' width='37' height='7' fill='%23e8e8e8' /><path d='M1,5 37,5 37,37 1,37 Z M1,13 37,13 37,21 1,21 1,29 37,29 M7,5 7,37 13,37 13,5 19,5 19,37 25,37 25,5 31,5 31,37' stroke='%23ccc' stroke-width='2' fill='none' /></svg>");
}

/* Time */
input[type="time"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><circle cx='20' cy='20' r='19' fill='none' stroke='%23ccc' stroke-width='2' /><path d='M21,20 8.5,20' stroke='%23ccc' stroke-width='3' /><path d='M20,21 20,5' stroke='%23ccc' stroke-width='2' /></svg>");
}

/* Email */
input[type="email"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M1,5 39,5 39,35 1,35 1,5 20,22 39,5' stroke='%23ccc' stroke-width='2' fill='none' /></svg>");
}

/* Search */
input[type="search"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M36,36 20,20' stroke='%23ccc' stroke-width='3' /><circle cx='15' cy='15' r='14' fill='white' stroke='%23ccc' stroke-width='2' /></svg>");
}

/* Password */
input[type="password"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><circle cx='20' cy='15' r='10' fill='none' stroke='%23ccc' stroke-width='2' /><path fill='white' stroke='%23ccc' stroke-width='2' d='M5,19 35,19 35,39 5,39Z M20,25 20,30' /></svg>");
}

/* Phone */
input[type="tel"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><g fill='none' stroke='%23ccc' stroke-width='2'><path d='M8,1 34,1 34,39 8,39Z M12,5 30,5 30,30 12,30Z' /><circle cx='21' cy='34' r='2' /></g></svg>");
}

/* URL */
input[type="url"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><g fill='none' stroke='%23ccc' stroke-width='2'><circle cx='20' cy='20' r='19'  /><path d='M2,20 38,20 M20,2 C7,2 7,38 20,38 33,38 33,2 20,2 20,2 20,38 20,38' /></g></svg>");
}

/* Number */
input[type="number"] {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M26,4 21,36 M15,4 10,36 M4,15 36,15 M2,26 34,26' fill='none' stroke='%23ccc' stroke-width='2' /></svg>");
}

/* Shared */
input[type="date"],
input[type="datetime-local"],
input[type="month"],
input[type="week"],
input[type="email"],
input[type="time"],
input[type="search"],
input[type="password"],
input[type="tel"],
input[type="url"],
input[type="number"] {
  -moz-print-color-adjust: exact;
  -ms-print-color-adjust: exact;
  -webkit-print-color-adjust: exact;
  print-color-adjust: exact;
}
```

and then applied to the following [[Hyper Text Markup Language (HTML)|HTML]] markup:

```html
<form class="flex">
  <p>
    <label for="input">Input without type</label><br />
    <input id="input" placeholder="Placeholder" />
  </p>
  <p>
    <label for="input-text">Input with type="text"</label><br />
    <input type="text" id="input-text" />
  </p>
  <p>
    <label for="input-date">Input with type="date"</label><br />
    <input type="date" id="input-date" />
  </p>
  <p>
    <label for="input-datetime-local">Input with type="datetime-local"</label><br />
    <input type="datetime-local" id="input-datetime-local" />
  </p>
  <p>
    <label for="input-email">Input with type="email"</label><br />
    <input type="email" id="input-email" />
  </p>
  <p>
    <label for="input-month">Input with type="month"</label><br />
    <input type="month" id="input-month" />
  </p>
  <p>
    <label for="input-number">Input with type="number"</label><br />
    <input type="number" id="input-number" />
  </p>
  <p>
    <label for="input-password">Input with type="password"</label><br />
    <input type="password" id="input-password" />
  </p>
  <p>
    <label for="input-search">Input with type="search"</label><br />
    <input type="search" id="input-search" />
  </p>
  <p>
    <label for="input-tel">Input with type="tel"</label><br />
    <input type="tel" id="input-tel" />
  </p>
  <p>
    <label for="input-time">Input with type="time"</label><br />
    <input type="time" id="input-time" />
  </p>
  <p>
    <label for="input-url">Input with type="url"</label><br />
    <input type="url" id="input-url" />
  </p>
  <p>
    <label for="input-week">Input with type="week"</label><br />
    <input type="week" id="input-week" />
  </p>
  <p>
    <span>Input with type="hidden" ;)</span><br />
    <input id="hidden" type="hidden" />
  </p>
</form>
```

results in:

![[Pasted image 20240725211810.png]]

## Details

The provided SCSS code styles various types of [[Hyper Text Markup Language (HTML)|HTML]] anchor (`<a>`) and input (`<input>`) elements by adding background images and adjusting their appearance. 

The code is divided into two main sections: one for anchor elements and another for input elements.

In the first section, the code targets anchor elements with specific attributes such as `href` starting with "mailto:", "tel:", "sms:", "file:", and those with `rel` attributes containing "external" or "bookmark", as well as those with the `download` attribute. These elements are styled to have a background image, which is an SVG icon representing the type of link (e.g., email, telephone, SMS, file, external link, bookmark, or download). The background images are set to not repeat, have a specific size, and are positioned to the left of the text. Additionally, these elements are displayed as inline-blocks and have print color adjustments to ensure the background images are printed correctly. A padding is added to the left to make space for the background images.

Each type of anchor element has a unique SVG icon set as its background image. For example, `a[href^="mailto:"]` has an envelope icon, `a[href^="tel:"]` has a telephone icon, and so on. These SVG icons are embedded directly in the CSS using data URIs.

In the second section, the code targets various types of input elements such as `date`, `datetime-local`, `email`, `month`, `number`, `password`, `search`, `tel`, `time`, `url`, and `week`. These input elements are styled similarly to the anchor elements, with background images representing the type of input (e.g., calendar for date, envelope for email, clock for time, magnifying glass for search, etc.). The background images are set to not repeat, have a specific size, and are positioned to the left of the input field. Padding is added to the left to make space for the background images.

Additionally, the input elements have print color adjustments to ensure the background images are printed correctly. This ensures that the visual representation of the input fields remains consistent across different media, including print.

Overall, this SCSS code enhances the user interface by providing visual cues for different types of links and input fields, making it easier for users to understand the purpose of each element at a glance.


## See Also

- [[04-RESOURCES/Code/CSS/_README|CSS Code]]
- [[Cascading Style Sheets (CSS)]]
- [[Hyper Text Markup Language (HTML)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-07-25]] and last modified on [[2024-07-25]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[CSS - Special Hyperlinks Based on Content]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Special Hyperlinks Based on Content"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024