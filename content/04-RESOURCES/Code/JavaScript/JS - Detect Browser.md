---
creation_date: 2024-05-16
modification_date: 2024-05-16
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/JavaScript
  - Status/WIP
aliases:
  - JavaScript Detect Browser Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Detect Browser

> [!SOURCE] Sources:
> - *[detect-browser/README.md at main · julienetie/detect-browser](https://github.com/julienetie/detect-browser/blob/main/README.md)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

Modern browser detection.

## Code Snippet

- `detect-browser.js`:

```javascript
const navigatorErrorMessage = 'Could not find `userAgent` or `userAgentData` window.navigator properties to set `os`, `browser` and `version`'
const removeExcessMozillaAndVersion = /^mozilla\/\d\.\d\W/
const browserPattern = /(\w+)\/(\d+\.\d+(?:\.\d+)?(?:\.\d+)?)/g
const engineAndVersionPattern = /^(ver|cri|gec)/
const brandList = ['chrome', 'opera', 'safari', 'edge', 'firefox']
const unknown = 'Unknown'
const empty = ''
const { isArray } = Array
let userAgentData = window.navigator.userAgentData
let userAgent = window.navigator.userAgent

const mobiles = {
  iphone: /iphone/,
  ipad: /ipad|macintosh/,
  android: /android/
}

const desktops = {
  windows: /win/,
  mac: /macintosh/,
  linux: /linux/
}

const detectPlatform = (customUserAgent, customUserAgentData) => {
  // Use a provided UA string instead of the browser's UA  
  userAgent = typeof customUserAgent === 'string' ? customUserAgent : userAgent

  // Use a provided UA data string instead of the browser's UA data 
  userAgentData = typeof customUserAgentData === 'string' ? customUserAgentData : userAgentData

  if (userAgent) {
    const ua = userAgent.toLowerCase().replace(removeExcessMozillaAndVersion, empty)

    // Determine the operating system.
    const mobileOS = Object.keys(mobiles).find(os => mobiles[os].test(ua) && window.navigator.maxTouchPoints >= 1)
    const desktopOS = Object.keys(desktops).find(os => desktops[os].test(ua))
    const os = mobileOS || desktopOS

    // Extract browser and version information.
    const browserTest = ua.match(browserPattern)
    const versionRegex = /version\/(\d+(\.\d+)*)/
    const safariVersion = ua.match(versionRegex)
    const saVesion = isArray(safariVersion) ? safariVersion[1] : null
    const browserOffset = browserTest && (browserTest.length > 2 && !(engineAndVersionPattern.test(browserTest[1])) ? 1 : 0)
    const browserResult = browserTest && browserTest[browserTest.length - 1 - (browserOffset || 0)].split('/')
    const browser = browserResult && browserResult[0]
    const version = saVesion ? saVesion : browserResult && browserResult[1] 

    return { os, browser, version }
  } else if (userAgentData) {
    const os = userAgentData.platform.toLowerCase()
    let platformData

    // Extract platform brand and version information.
    for (const agentBrand of userAgentData.brands) {
      const agentBrandEntry = agentBrand.brand.toLowerCase()
      const foundBrand = brandList.find(brand => { //eslint-disable-line
        if (agentBrandEntry.includes(brand)) {
          return brand
        }
      })
      if (foundBrand) {
        platformData = { browser: foundBrand, version: agentBrand.version }
        break
      }
    }
    const brandVersionData = platformData || { browser: unknown, version: unknown }
    return { os, ...brandVersionData }
  } else {
    // Log error message if there's a problem.
    console
      .error(navigatorErrorMessage)

    return {
      // Ignore the VSCode strikethough. Disable linting line if necessary. This is just a fallback
      os: navigator.platform || unknown,
      browser: unknown,
      version: unknown
    }
  }
}

export default detectPlatform
```

then in `index.html`:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detect Browser</title>
</head>
<body>
    

    <script type="module">
        import detectBrowser from './detect-browser.js'

        // The Safari user agent for version 17.4.1 (build 19618.1.15.11.14) is:
        // const safariUA = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15'
        const safariUA = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15'
        const resultsDefault = detectBrowser()
        const safariResults = detectBrowser(safariUA)
        console.info(resultsDefault)
        console.info(safariResults)
    </script>
</body>
</html>
```


## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-05-16]] and last modified on [[2024-05-16]].*

### Backlinks

```dataview
LIST FROM [[JS - Detect Browser]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Detect Browser"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024