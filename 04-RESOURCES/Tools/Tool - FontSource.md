---
creation_date: 2024-04-25
modification_date: 2024-04-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Topic/NA
  - Status/WIP
aliases:
  - Tool - FontSource
  - FontSource
publish: true
permalink:
description:
image:
cssclasses:
  - tool
---


# FontSource

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
> - *[Fontsource](https://fontsource.org/)*
> - *[Introduction | Documentation | Fontsource](https://fontsource.org/docs/getting-started/introduction)*
> - *[fontsource - npm search](https://www.npmjs.com/search?q=fontsource)*

FontSource is a collection of open-source fonts that are packaged into individual NPM packages for self-hosting in your web applications. This documentation outlines the benefits of using FontSource and how to get started.

## Advantages

1. **Performance**
	- Self-hosting fonts can **significantly improve website performance** by eliminating the extra latency caused by additional DNS resolution and TCP connection establishment that is required when using a CDN like Google Fonts. This can help to prevent doubled visual load times for simple websites, as benchmarked [here](https://github.com/HTTPArchive/almanac.httparchive.org/pull/607) and [here](https://github.com/reactiflux/reactiflux.com/pull/21).
2. **Version Locking**
	- Fonts remain **version locked**. Google often pushes updates to their fonts [without notice](https://github.com/google/fonts/issues/1307), which may interfere with your live production projects. Manage your fonts like any other NPM dependency.
3. **Privacy**
	- Commit to **privacy**. Google does track the usage of their fonts and for those who are extremely privacy concerned, self-hosting is an alternative.
4. **Offline**
	- Your **fonts load offline**. This feature is beneficial for Progressive Web Apps and situations where you have limited or no access to the internet.
5. **Additional Fonts**
	- **Support for fonts outside the Google Font ecosystem**. This repository is constantly evolving with [other Open Source fonts](https://github.com/fontsource/font-files).

## Installation

> [!WARNING] **Pre-Requisites**
> Before proceeding with the installation, ensure that you are using a bundler, such as [[Tool - Vite|Vite]] or [[Tool - Webpack|Webpack]], to handle importing [[Cascading Style Sheets (CSS)|CSS]] into your final bundle. Please refer to the [Fontsource Guides](https://fontsource.org/docs/guides) section to see detailed instructions for your preferred framework.

> [!TIP] **Variable Fonts**
> If your chosen font supports variable fonts, Fontsource **highly recommends** using them, especially when working with multiple weights, as it helps reduce bundle sizes. To learn more about using variable fonts, refer to the dedicated [Variable Fonts](https://fontsource.org/docs/getting-started/variable) guide.

To install a font, follow these steps:

1. **Choose the Font Package**: Select the font package you wish to install. You can find a list of available fonts in the Fontsource directory. Each font package corresponds to a specific font.

2. **Install the Package**:  Use your preferred package manager (`npm`, `yarn`, `pnpm`, or `bun`) to install the font package. For example, to install the Open Sans font, run the following command:

```bash
# npm
npm install @fontsource/open-sans

# yarn
yarn add @fontsource/open-sans

# pnpm
pnpm add @fontsource/open-sans

# bun
bun add @fontsource/open-sans
```

> [!NOTE] Note:
> 

***

## Appendix

*Note created on [[2024-04-25]] and last modified on [[2024-04-25]].*

### Backlinks

```dataview
LIST FROM [[Tool - FontSource]] AND -"CHANGELOG" AND -"04-RESOURCES/Tools/Tool - FontSource"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024