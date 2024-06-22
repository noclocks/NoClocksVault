---
creation_date: 2024-05-13
modification_date: 2024-05-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - Why You Should Be Using the AVIF Image Format
publish: true
permalink: 
description: 
image: 
cssclasses: 
---


# Why You Should Be Using the AVIF Image Format

> [!SOURCE] Sources:
> - *[Why you should use AVIF over JPEG, WebP, PNG and GIF In 2024 | by Julien Etienne | Medium](https://medium.com/@julienetienne/why-you-should-use-avif-over-jpeg-webp-png-and-gif-in-2024-5603ac9d8781#:~:text=Why%20AVIF%20over%20JPEG%20and,12%20bit%20and%2016%20bit.)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> [[AV1 Image File Format (AVIF)|AVIF]] is a recent file format that, at the time of this writing, has gained support in [[Tool - Microsoft Edge|Microsoft Edge]], thereby achieving significant browser support.

> [!IMPORTANT]
> We are no longer in the dark ages, the majority of large web platforms typically support up to 1 year of browser versions from the current. You can begin to use [[AV1 Image File Format (AVIF)|AVIF]] with a [[WebP Image Format|WebP]] fallback (the fallback is only necessary until the end of 2024)

You can now “predominantly” use AVIF as a default for rasterized images as it essentially replaces much of common JPEG usage.

## Why AVIF over JPEG and WEBP?

> [!TIP]
> As a rule of thumb, [[AV1 Image File Format (AVIF)|AVIF]] typically shines when it comes to optimizing photo-realistic images. I personally find that it is also pretty dominant for other images like diagrams and vector art.

-   **Compression efficiency**: Higher compression ratio than formats like JPEG and WebP whilst preserving a high image quality.
-   **Color depths**: Supports a wide range of color depths which includes 8bit, 10bit, 12 bit and 16 bit.
-   **Wide Color Gamut and HDR Support:** AVIF enables vibrant and lifelike images with a broad range of colors and high dynamic range (HDR). Ideal for applications demanding precise color and detail, like professional photography and media content.
-   **Lossy and lossless compression**: AVIF’s lossless compression is far better than compressed Bitmap and PNG
-   **Alpha channel support**: Like PNG, you can store semi-transparent images but now with better compression.
-   **Based on AV1**: AV1 is a *royalty free codec* developed by [Alliance for Open Media](https://aomedia.org/) based on Google’s VP9 coded. This means it will have wide spread adoption with far less controversy compared to other upcoming image formats.
-   **Full major browser and wide platform support**.
-   **Reduced Bandwidth and Faster Loading Times**: Smaller files means faster loading for the user.

## Cons

-   **Computationally intensive compression**: Generally, AVIF compression is computationally more intensive than older image formats like JPEG, but it typically achieves superior compression efficiency.

## Resources

***

## Appendix

*Note created on [[2024-05-13]] and last modified on [[2024-05-13]].*

### Backlinks

```dataview
LIST FROM [[Why you should be using the AVIF image format]] AND -"CHANGELOG" AND -"//Why you should be using the AVIF image format"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024