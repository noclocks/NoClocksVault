---
creation_date: 2024-05-13
modification_date: 2024-05-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Acronym
  - Topic/Dev
  - Topic/Dev/Design
  - Status/WIP
aliases:
  - AV1 Image File Format (AVIF)
  - AVIF
  - AV1 Image File Format
publish: true
permalink:
description:
image:
cssclasses:
---

# AV1 Image File Format (AVIF)

> [!SOURCE] Sources:
> - *https://aomediacodec.github.io/av1-avif/*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

[AV1](https://aomediacodec.github.io/av1-avif/#biblio-av1) defines the syntax and semantics of an [AV1 bitstream](https://aomediacodec.github.io/av1-spec/av1-spec.pdf). The AV1 Image File Format (AVIF) defined in this document supports the storage of a subset of the syntax and semantics of an [AV1 bitstream](https://aomediacodec.github.io/av1-spec/av1-spec.pdf) in a [[HEIF]](https://aomediacodec.github.io/av1-avif/#biblio-heif) file. The [AV1 Image File Format](https://aomediacodec.github.io/av1-avif/#av1-image-file-format) defines multiple profiles, which restrict the allowed syntax and semantics of the [AV1 bitstream](https://aomediacodec.github.io/av1-spec/av1-spec.pdf) with the goal to improve interoperability, especially for hardware implementations. The profiles defined in this specification follow the conventions of the [[MIAF]](https://aomediacodec.github.io/av1-avif/#biblio-miaf) specification. Images encoded with AV1 and not meeting the restrictions of the defined profiles may still be compliant to this [AV1 Image File Format](https://aomediacodec.github.io/av1-avif/#av1-image-file-format) if they adhere to the general AVIF requirements.

[AV1 Image File Format](https://aomediacodec.github.io/av1-avif/#av1-image-file-format) supports High Dynamic Range (HDR) and Wide Color Gamut (WCG) images as well as Standard Dynamic Range (SDR). It supports monochrome images as well as multi-channel images with all the bit depths and color spaces specified in [[AV1]](https://aomediacodec.github.io/av1-avif/#biblio-av1).

[AV1 Image File Format](https://aomediacodec.github.io/av1-avif/#av1-image-file-format) also supports multi-layer images as specified in [[AV1]](https://aomediacodec.github.io/av1-avif/#biblio-av1) to be stored both in image items and image sequences.

An AVIF file is designed to be a conformant [[HEIF]](https://aomediacodec.github.io/av1-avif/#biblio-heif) file for both image items and image sequences. Specifically, this specification follows the recommendations given in "Annex I: Guidelines On Defining New Image Formats and Brands" of [[HEIF]](https://aomediacodec.github.io/av1-avif/#biblio-heif).

This specification reuses syntax and semantics used in [[AV1-ISOBMFF]](https://aomediacodec.github.io/av1-avif/#biblio-av1-isobmff).

***

## Appendix

*Note created on [[2024-05-13]] and last modified on [[2024-05-13]].*

### Backlinks

```dataview
LIST FROM [[AV1 Image File Format (AVIF)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Acronyms/AV1 Image File Format (AVIF)"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024


