---
creation_date: 2024-08-17
modification_date: 2024-08-17
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/CSS
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/CSS
  - Status/WIP
aliases:
  - CSS Helix Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Helix Code

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
> - *https://codepen.io/jimbrig/pen/mdZWEXq*

<iframe src="https://codepen.io/jimbrig/pen/mdZWEXq" allow="fullscreen" allowfullscreen="" style="height: 100%; width: 100%; aspect-ratio: 16 / 9;"></iframe>

## Code Snippets

Below is the [[Tool - SASS|SASS]] / [[Cascading Style Sheets (CSS)|CSS]]:

```scss
body, html
  background: #111
  height: 100%
  width: 100%
  overflow: hidden
 
$delay: 200ms
$time: 3s
$i: 50
$space: 8px
.container 
  perspective: 500px
  position: absolute
  left: 50%
  top: 5px
  transform-style: preserve-3d

.dna 
  position: absolute
  width: 100%
  // height: 50 * 30px
  animation: dna-spin $time infinite linear both
  transform-style: preserve-3d
  
  &-part
    width: 100px
    transform: translateX(-50%)
    height: 2px
    background: rgba(255,255,255,.3)
    position: relative
    transform-style: preserve-3d
    
    @while $i > 0
      &:nth-child(#{$i})
        top: $space * $i
        transform: translateX(-50%) rotateY(15deg * ($i))
        &:after, &:before
          //animation: counter-spin-dot $time infinite linear both
      $i: $i - 1
      
    &:after, &:before
      position: absolute
      top: -5px
      width: 10px
      height: 10px
      border-radius: 50%
      content: ''
    
    &:after 
      left: 100%
      background: #ff0000
      transform: rotateY( 90deg )
    
    &:before
      right: 100%
      background: #00aced
      transform: rotateY( -90deg )
    

@keyframes counter-spin-dot
  from
    transform: rotateY(0deg)
  to
    transform: rotateY(-359deg)
    

@keyframes dna-spin
  from
    transform: rotateY(0deg)
  to
    transform: rotateY(359deg)
```

and the [[Hyper Text Markup Language (HTML)|HTML]]:

```html
<div class="container">
  <div class="dna">
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
    <div class="dna-part"></div>
  </div>
</div>
```


## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/CSS/_README|CSS Code]]
- [[Cascading Style Sheets (CSS)]]
- [[Hyper Text Markup Language (HTML)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-08-17]] and last modified on [[2024-08-17]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[CSS - Helix]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Helix"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024