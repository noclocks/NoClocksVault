---
creation_date: 2024-05-13
modification_date: 2024-05-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev
  - Status/WIP
aliases:
  - Overview of Image File Formats
publish: true
permalink:
description:
image:
cssclasses:
---


# Overview of Image File Formats

> [!SOURCE] Sources:
> - **

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
> This note is about ...

## Image Types

- Vector
- Raster

### Vector vs. Raster

> [!QUESTION] When do you use a vector program and when do you use a raster file format?
> That depends on what you are creating.
> - **Vector:** If you are designing an illustration with clear contrasts between the elements of the design.
> - **Raster:** For images with blending colors and continuous tones (such as photographs).


![](https://i.imgur.com/tCwfkBC.png)

- Going for [[vector]] as opposed to [[raster]] depends on whether you want to *scale or resize images*. 
- [[Raster]] images are built-up in [[pixels]], which means that when you enlarge an image, you stretch the pixels and lower the quality.
- [[Vector]] images are made-up of points, curves and lines that are defined by mathematical equations. Without going into further detail, it basically means that enlarging an image does not affect the quality.


## Image File Formats

### Raster

- `ANI`
- `ANIM`
- `APNG`
- `ART`
- `AVIF` - [[AV1 Image File Format (AVIF)]] 
- `BMP` - [[Bitmap (BMP)]] ([[Windows Bitmap]])
- `BPG`
- `BSAVE`
- `CAL`
- `CIN`
- 

- **Delivery Formats**:
	- [[Joint Photographic Experts Group (JPEG)]]
		- `JPEG 20000`
		- `JPEG XL`
		- `JPEG XT`
	- [[Graphic Interchange Format (GIF)]]
	- [[Portable Network Graphics (PNG)]]
	- [[Exchangeable Image File (EXIF)]]
	- [[WebP Image Format]]
	- [[High Efficiency Image File Format (HEIF)]]
	- [[High Dynamic Range (HDR)]] Raster Formats
	- 
- **Authoring Interchange Formats**:
	- [[Tag Image File Format (TIFF)]]
	- 
	- [[Netpbm Format Family]]:
		- `PPM`
		- `PGM`
		- `PBM`
		- `PNM`
- **Container Formats of [[Raster]] Graphics Editors**:
	- [[Adobe Photoshop Document (PSD)]]
- **Other Raster Formats**:
	- [[Better Portable Graphics (BPG)]]
	- [[Icon (ICO)]] which is a sub-set of [[Bitmap (BMP)]] and/or [[Portable Network Graphics (PNG)]]
	- [[Extensible Image Serialization Format (XISF)]]
- **Vector Formats**:
	- [[Computer Graphics Metafile (CGM)]]
	- [[Scalable Vector Graphics (SVG)]]
- **Other 2-Dimensional Vector Formats**:
	-   AFDesign ([Affinity Designer](https://en.wikipedia.org/wiki/Affinity_Designer) document)
	-   AI ([Adobe Illustrator Artwork](https://en.wikipedia.org/wiki/Adobe_Illustrator_Artwork)) — proprietary file format developed by [Adobe Systems](https://en.wikipedia.org/wiki/Adobe_Inc.)
	-   CDR — proprietary format for [CorelDRAW](https://en.wikipedia.org/wiki/CorelDRAW) vector graphics editor
	-   !DRAW — a native vector graphic format (in several backward compatible versions) for the [RISC-OS](https://en.wikipedia.org/wiki/RISC-OS) computer system begun by Acorn in the mid-1980s and still present on that platform today
	-   [DrawingML](https://en.wikipedia.org/wiki/DrawingML) — used in [Office Open XML documents](https://en.wikipedia.org/wiki/Office_Open_XML_file_formats)
	-   GEM — metafiles interpreted and written by the [Graphics Environment Manager](https://en.wikipedia.org/wiki/Graphics_Environment_Manager) VDI subsystem
	-   GLE ([Graphics Layout Engine](https://en.wikipedia.org/wiki/Graphics_Layout_Engine)) — graphics scripting language
	-   [HP-GL](https://en.wikipedia.org/wiki/HP-GL) (Hewlett-Packard Graphics Language) — introduced on [Hewlett-Packard](https://en.wikipedia.org/wiki/Hewlett-Packard) plotters, but generalized into a printer language
	-   HVIF ([Haiku Vector Icon Format](https://en.wikipedia.org/wiki/Haiku_Vector_Icon_Format))
	-   [Lottie](https://en.wikipedia.org/wiki/Lottie_(file_format)) — format for vector graphics animation
	-   [MathML](https://en.wikipedia.org/wiki/MathML) (Mathematical Markup Language) — an application of XML for describing mathematical notations
	-   [NAPLPS](https://en.wikipedia.org/wiki/NAPLPS) (North American Presentation Layer Protocol Syntax)
	-   ODG ([OpenDocument Graphics](https://en.wikipedia.org/wiki/OpenDocument_Graphics))
	-   PGML ([Precision Graphics Markup Language](https://en.wikipedia.org/wiki/Precision_Graphics_Markup_Language)) — a [W3C](https://en.wikipedia.org/wiki/World_Wide_Web_Consortium) submission that was not adopted as a [recommendation](https://en.wikipedia.org/wiki/W3C_recommendation)
	-   [PSTricks](https://en.wikipedia.org/wiki/PSTricks) and [PGF/TikZ](https://en.wikipedia.org/wiki/PGF/TikZ) are languages for creating graphics in [TeX](https://en.wikipedia.org/wiki/TeX) documents
	-   QCC — used by Quilt Manager (by Quilt EZ) for designing quilts
	-   [ReGIS](https://en.wikipedia.org/wiki/ReGIS) (Remote Graphic Instruction Set) — used by [DEC](https://en.wikipedia.org/wiki/Digital_Equipment_Corporation) [computer terminals](https://en.wikipedia.org/wiki/Computer_terminal)
	-   [Remote imaging protocol](https://en.wikipedia.org/wiki/Remote_imaging_protocol) — system for sending vector graphics over low-bandwidth links
	-   TinyVG — binary, simpler alternative to SVG[[6\]](https://en.wikipedia.org/wiki/Image_file_format#cite_note-6)
	-   VML ([Vector Markup Language](https://en.wikipedia.org/wiki/Vector_Markup_Language)) — obsolete XML-based format
	-   [Xar](https://en.wikipedia.org/wiki/Xar_(graphics)) — format used in vector applications from [Xara](https://en.wikipedia.org/wiki/Xara)
	-   XPS ([XML Paper Specification](https://en.wikipedia.org/wiki/Open_XML_Paper_Specification)) — page description language and a fixed-document format

### JPEG


***

## Appendix

*Note created on [[2024-05-13]] and last modified on [[2024-05-13]].*

### See Also

- [[Digital Asset Management]]
- [[Tool - ImageMagick|ImageMagick]]
- [[Why You Should Be Using the AVIF Image Format]]

### Backlinks

```dataview
LIST FROM [[Overview of Image File Formats]] AND -"CHANGELOG" AND -"00-INBOX/Overview of Image File Formats"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024