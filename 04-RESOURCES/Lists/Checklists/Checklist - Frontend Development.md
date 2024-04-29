---
creation_date: 2024-04-01
modification_date: 2024-04-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Checklist
  - Topic/Dev
  - Topic/Dev/Web
  - Status/WIP
aliases:
  - Checklist - Frontend Development
  - Frontend Development Checklist
publish: true
permalink:
description:
image:
cssclasses:
---

# Frontend Development Checklist

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

### Performance

#### General Performance

- [ ] HTTP/2 is used
- [ ] CDN is used for static assets and content pages
- [ ] Cookie-less domain is used for static assets
- [ ] DNS prefetching is used:
  - [ ] `<link rel="preload" as="script">` (CSS, JS and Fonts)
  - [ ] `<link rel="dns-prefetch">` (Domain)

#### Resources Performance

##### JavaScript

- [ ] JavaScript combined into one file
- [ ] JavaScript minified
- [ ] JavaScript Compressed
- [ ] No Inline JavaScript

##### CSS

- [ ] CSS combined into one file
- [ ] CSS minified
- [ ] CSS compressed
- [ ] No `@import` in CSS
- [ ] No Inline CSS

##### HTML

- [ ] HTML minified

##### Static Files

- [ ] Static Files are compressed (`gzip`, `brotli`)
- [ ] Static Files are pre-compressed on the server

##### Images

- [ ] Proper Image File Formats:
  - [ ] SVG for simple images
  - [ ] PNG for images with transparency
  - [ ] JPEG for images without transparency
  - [ ] WebP for modern browsers

- [ ] Image Optimization:
  - [ ] Image Compression
  - [ ] Image Resizing
  - [ ] Image Lazy Loading
  - [ ] Image CDN
  - [ ] ImageOptim

- [ ] Use of Responsive Images:
  - [ ] `srcset` attribute
  - [ ] `sizes` attribute
  - [ ] `picture` element

- [ ] Images are cached in the browser

- [ ] SVG Sprites are used
- [ ] SVG Minification

##### Fonts

- [ ] Fonts are preloaded
- [ ] Only necessary fonts are used/loaded
- [ ] Fonts are cached in the browser

#### Caching

- [ ] Browser caching is used effectively
- [ ] ETags are not used
- [ ] Expires headers are used:
  - [ ] `cache-control` header
  - [ ] `max-age` directive

#### Loading

- [ ] Critical CSS is used
- [ ] Asynchronous or deferred loading of non-critical resources
- [ ] Tracking scripts are loaded asynchronously

#### Rendering

- [ ] Intrinsic image sizes and dimensions are specified in markup
- [ ] CSS loaded in document `<head>`
- [ ] Scripts loaded at the end of the document
- [ ] Scripts loaded with `defer` attribute
- [ ] Scripts are loaded in the document head after styles are loaded
- [ ] Scrolling is possible with 60fps
- [ ] No usage of `document.write`
- [ ] CSS Animation causing layout(reflow) is not heavily used

### Device Performance

- [ ] Application is tested on low-end devices
- [ ] Application is tested on slow networks
- [ ] Application is tested on slow CPUs
- [ ] Application is tested on slow GPUs
- [ ] Application is tested on slow RAM

### Cross-Browser

- [ ] Application is tested on all major browsers
  - [ ] Chrome
  - [ ] Firefox
  - [ ] Safari
  - [ ] Edge

- [ ] Application is tested on all major devices
  - [ ] Desktop
  - [ ] Tablet
  - [ ] Mobile

- Viewport meta tag is used

### SEO

- [ ] Application Pages can be indexed by search engines
- [ ] Responsive Mobile Version is available
- [ ] Sitemap is available
- [ ] Structured Data is used where possible
- [ ] Headlines are used properly
- [ ] Headlines are in proper order
- [ ] Meta Descriptions are used
- [ ] Meta Keywords are used
- [ ] Meta Title is filled
- [ ] Favicon is used
- [ ] Keywords used in Headlines
- [ ] Images have `alt` attributes
- [ ] Links have `title` attributes
- [ ] Links in navigation do not use `title` attribute
- [ ] No Duplicate Content
- [ ] Canonical (absolute) URLs are used
- [ ] Internal links point to HTTPS version of page
- [ ] 301 Redirects are used
- [ ] No 404 Errors
- [ ] No 500 Errors
- [ ] Canonical Tags are used if applicable
- [ ] Ratio of code and content is around 25% to 75%
- [ ] Application is crawlable by search engines

### Accessibility

- [ ] Color Contrast is good (WCAG 2.0)
- [ ] WAI-ARIA roles are used
- [ ] Usage of accessible HTML elements like nav, footer, aside
- [ ] URLs are human-readable
- [ ] Keyboard accessible navigation
- [ ] Correct input types are used
- [ ] Form labels are used

### Security

- [ ] HTTPS on all pages
- [ ] No Mixed Content
- [ ] External Plugins and Tracking Get Loaded via HTTPS
- [ ] Robots.txt is used
- [ ] Cross-Site-Scripting (XSS) is avoided
- [ ] HSTS Header is set
- [ ] Content Security Policy is used and only allows specific hosts and no inline scripts
- [ ] No JavaScript in URLs
- [ ] No Flash
- [ ] No iFrames
- [ ] Cross-Origin Resource Sharing (CORS) is used
- [ ] Cross-Site Request Forgery (CSRF) is avoided
- [ ] SQL Injection is avoided through prepared statements and/or parameterized queries
- [ ] CSRF Tokens are used
- [ ] Secure Cookies are used
- [ ] No sensitive data is stored in local storage, session storage, or cookies

### Server

- [ ] Server is using HTTP/2
- [ ] Correct Language set by server
- [ ] Correct content types set by server

### Additional

- [ ] Strict usage of domain with or without www
- [ ] Correct language is used in `lang` attribute
- [ ] Charset is defined
- [ ] HTML5 Doctype is used
- [ ] No `meta` tags are used for caching
- [ ] 404-Page is available
- [ ] Special Print Stylesheet is used


***

## Appendix

*Note created on [[2024-04-01]] and last modified on [[2024-04-01]].*

### Backlinks

```dataview
LIST FROM [[Checklist - Frontend Development]] AND -"CHANGELOG" AND -"03-AREAS/Business/Checklists/Checklist - Frontend Development"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
