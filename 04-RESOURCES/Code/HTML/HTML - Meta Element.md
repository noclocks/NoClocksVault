---
creation_date: 2024-05-09
modification_date: 2024-05-09
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/HTML
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/HTML
  - Status/WIP
aliases:
  - HTML Meta Element Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# HTML Meta Element Code

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
> - *[<meta>: The metadata element - HTML: HyperText Markup Language | MDN (mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-charset)*
> - *https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML*

The **`<meta>`** [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML) element represents [metadata](https://developer.mozilla.org/en-US/docs/Glossary/Metadata) that cannot be represented by other HTML meta-related elements, like [`<base>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base), [`<link>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link), [`<script>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script), [`<style>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style) or [`<title>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/title).

The type of metadata provided by the `<meta>` element can be one of the following:

- If the [`name`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#name) attribute is set, the `<meta>` element provides _document-level metadata_, applying to the whole page.
- If the [`http-equiv`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#http-equiv) attribute is set, the `<meta>` element is a _pragma directive_, providing information equivalent to what can be given by a similarly-named HTTP header.
- If the [`charset`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#charset) attribute is set, the `<meta>` element is a _charset declaration_, giving the character encoding in which the document is encoded.
- If the [`itemprop`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/itemprop) attribute is set, the `<meta>` element provides _user-defined metadata_.

## [Attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attributes)

This element includes the [global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes).

**Note:** the attribute [`name`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#name) has a specific meaning for the `<meta>` element, and the [`itemprop`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/itemprop) attribute must not be set on the same `<meta>` element that has any existing [`name`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#name), [`http-equiv`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#http-equiv) or [`charset`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#charset) attributes.

[`charset`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#charset)

This attribute declares the document's character encoding. If the attribute is present, its value must be an ASCII case-insensitive match for the string `"utf-8"`, because UTF-8 is the only valid encoding for HTML5 documents. `<meta>` elements which declare a character encoding must be located entirely within the first 1024 bytes of the document.

[`content`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#content)

This attribute contains the value for the [`http-equiv`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#http-equiv) or [`name`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#name) attribute, depending on which is used.

[`http-equiv`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#http-equiv)

Defines a pragma directive. The attribute is named `http-equiv(alent)` because all the allowed values are names of particular HTTP headers:

- `content-security-policy` Allows page authors to define a [content policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy) for the current page. Content policies mostly specify allowed server origins and script endpoints which help guard against cross-site scripting attacks.
- `content-type` Declares the [MIME type](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types) and the document's character encoding. The `content` attribute must have the value `"text/html; charset=utf-8"` if specified. This is equivalent to a `<meta>` element with the [`charset`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#charset) attribute specified and carries the same restriction on placement within the document. **Note:** Can only be used in documents served with a `text/html` — not in documents served with an XML MIME type.
- `default-style` Sets the name of the default [CSS style sheet](https://developer.mozilla.org/en-US/docs/Web/CSS) set.
- `x-ua-compatible` If specified, the `content` attribute must have the value `"IE=edge"`. User agents are required to ignore this pragma.
- `refresh` This instruction specifies:
    
    - The number of seconds until the page should be reloaded - only if the [`content`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#content) attribute contains a non-negative integer.
    - The number of seconds until the page should redirect to another - only if the [`content`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#content) attribute contains a non-negative integer followed by the string '`;url=`', and a valid URL.
    
    **Warning:**
    
    Pages set with a `refresh` value run the risk of having the time interval being too short. People navigating with the aid of assistive technology such as a screen reader may be unable to read through and understand the page's content before being automatically redirected. The abrupt, unannounced updating of the page content may also be disorienting for people experiencing low vision conditions.
    
    - [MDN Understanding WCAG, Guideline 2.2 explanations](https://developer.mozilla.org/en-US/docs/Web/Accessibility/Understanding_WCAG/Operable#guideline_2.2_%E2%80%94_enough_time_provide_users_enough_time_to_read_and_use_content)
    - [MDN Understanding WCAG, Guideline 3.2 explanations](https://developer.mozilla.org/en-US/docs/Web/Accessibility/Understanding_WCAG/Understandable#guideline_3.2_%E2%80%94_predictable_make_web_pages_appear_and_operate_in_predictable_ways)
    - [Understanding Success Criterion 2.2.1 | W3C Understanding WCAG 2.0](https://www.w3.org/TR/UNDERSTANDING-WCAG20/time-limits-required-behaviors.html)
    - [Understanding Success Criterion 2.2.4 | W3C Understanding WCAG 2.0](https://www.w3.org/TR/UNDERSTANDING-WCAG20/time-limits-postponed.html)
    - [Understanding Success Criterion 3.2.5 | W3C Understanding WCAG 2.0](https://www.w3.org/TR/UNDERSTANDING-WCAG20/consistent-behavior-no-extreme-changes-context.html)
    

[`name`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#name)

The `name` and `content` attributes can be used together to provide document metadata in terms of name-value pairs, with the `name` attribute giving the metadata name, and the `content` attribute giving the value.

See [standard metadata names](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta/name) for details about the set of standard metadata names defined in the HTML specification.

## [Examples](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#examples)

HTMLCopy to Clipboard

```
<meta charset="utf-8" />

<!-- Redirect page after 3 seconds -->
<meta http-equiv="refresh" content="3;url=https://www.mozilla.org" />
```

## [Technical summary](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#technical_summary)

|   |   |
|---|---|
|[Content categories](https://developer.mozilla.org/en-US/docs/Web/HTML/Content_categories)|[Metadata content](https://developer.mozilla.org/en-US/docs/Web/HTML/Content_categories#metadata_content). If the [`itemprop`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/itemprop) attribute is present: [flow content](https://developer.mozilla.org/en-US/docs/Web/HTML/Content_categories#flow_content), [phrasing content](https://developer.mozilla.org/en-US/docs/Web/HTML/Content_categories#phrasing_content).|
|Permitted content|None; it is a [void element](https://developer.mozilla.org/en-US/docs/Glossary/Void_element).|
|Tag omission|Must have a start tag and must not have an end tag.|
|Permitted parents|- `<meta charset>`, `<meta http-equiv>`: a [`<head>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/head) element. If the [`http-equiv`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#http-equiv) is not an encoding declaration, it can also be inside a [`<noscript>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/noscript) element, itself inside a `<head>` element.<br>- `<meta name>`: any element that accepts [metadata content](https://developer.mozilla.org/en-US/docs/Web/HTML/Content_categories#metadata_content).<br>- `<meta itemprop>`: any element that accepts [metadata content](https://developer.mozilla.org/en-US/docs/Web/HTML/Content_categories#metadata_content) or [flow content](https://developer.mozilla.org/en-US/docs/Web/HTML/Content_categories#flow_content).|
|Implicit ARIA role|[No corresponding role](https://www.w3.org/TR/html-aria/#dfn-no-corresponding-role)|
|Permitted ARIA roles|No `role` permitted|
|DOM interface|[`HTMLMetaElement`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement)|

## [Specifications](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#specifications)

|Specification|
|---|
|[HTML Standard  <br># the-meta-element](https://html.spec.whatwg.org/multipage/semantics.html#the-meta-element)|


## Code Snippet

```html

```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/HTML/_README|HTML Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-05-09]] and last modified on [[2024-05-09]].*

### Backlinks

```dataview
LIST FROM [[HTML - Meta Element]] AND -"CHANGELOG" AND -"//HTML - Meta Element"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024