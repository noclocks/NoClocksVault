---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Topic/JavaScript
  - Topic/Dev
  - Status/WIP
aliases:
  - Tool - Cobe
  - Cobe
publish: true
permalink:
description:
image:
cssclasses:
  - tool
---


# Cobe

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
> - *[shuding/cobe: 5kB WebGL globe lib.](https://github.com/shuding/cobe)*
> - *[COBE](https://cobe.vercel.app/)*
> - *[COBE Docs - Get Started](https://cobe.vercel.app/docs)*
> - *[Shu on X: "I made https://t.co/I0YSkt5x0R a while ago: a 5kB globe lib, and it improved our page performance\* by almost 60%. How is it created? Time for a WebGL &amp; shader thread! https://t.co/7SW4vE5tTJ" / X](https://twitter.com/shuding_/status/1475916082875666441)*
> -  

- COBE does not rely on any external libraries or UI frameworks. 
- It is a vanilla [[JavaScript]] library that can be used in any web applications.

The easiest way to use the COBE library is to create a `canvas` element and use a [[Content Delivery Network (CDN)|CDN]] to import the library:

- `index.html`:

```html
<canvas
  id="cobe"
  style="width: 500px; height: 500px"
  width="1000"
  height="1000"
></canvas>

<script type="module">
  import createGlobe from 'https://cdn.skypack.dev/cobe'

  let phi = 0
  let canvas = document.getElementById("cobe")

  const globe = createGlobe(canvas, {
    devicePixelRatio: 2,
    width: 1000,
    height: 1000,
    phi: 0,
    theta: 0,
    dark: 0,
    diffuse: 1.2,
    scale: 1,
    mapSamples: 16000,
    mapBrightness: 6,
    baseColor: [1, 1, 1],
    markerColor: [1, 0.5, 1],
    glowColor: [1, 1, 1],
    offset: [0, 0],
    markers: [
      { location: [37.7595, -122.4367], size: 0.03 },
      { location: [40.7128, -74.006], size: 0.1 },
    ],
    onRender: (state) => {
      // Called on every animation frame.
      // `state` will be an empty object, return updated params.
      state.phi = phi
      phi += 0.01
    },
  })
</script>
```

***

## Appendix

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### Backlinks

```dataview
LIST FROM [[Tool - Cobe]] AND -"CHANGELOG" AND -"04-RESOURCES/Tools/Tool - Cobe"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024