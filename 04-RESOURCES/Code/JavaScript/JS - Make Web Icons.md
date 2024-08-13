---
creation_date: 2024-08-11
modification_date: 2024-08-11
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/JavaScript
  - Status/WIP
aliases:
  - Make Web Icons JavaScript Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Make Web Icons

> [!SOURCE] Sources:
> - *[julienetie/make-web-icons: Generate modern web icons (WIP) (github.com)](https://github.com/julienetie/make-web-icons)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Code Snippet

```javascript
import fs from 'fs'
import { mkdir } from 'node:fs/promises'
import sharp from 'sharp'
import { join, basename, extname } from 'path'
import chalk from 'chalk'

const outputDirectory = './dist'

const createDistributionPartial = (outputPath, iconName) => async fileName => {
    const fullPath = `${outputPath}/${iconName}`

    try {
        await mkdir(fullPath, { recursive: true })
    } catch (err) {
        if (err.code !== 'EEXIST') {
            throw err
        }
    }
    return join(fullPath, fileName)
}

const generateIcons = async (inputPath, outputPath) => {
    let icon
    const iconName = basename(inputPath, extname(inputPath))

    try {
        const createDistribution = createDistributionPartial(outputPath, iconName)
        const svgBuffer = fs.readFileSync(inputPath)

        if (!fs.existsSync(outputPath)) fs.mkdirSync(outputPath, { recursive: true })

        const { width, height } = await sharp(svgBuffer).metadata()
        const size = Math.max(width, height)
        const squareSvgBuffer = await sharp(svgBuffer)
            .resize({
                width: size,
                height: size,
                fit: 'contain',
                background:
                {
                    r: 255,
                    g: 255,
                    b: 255,
                    alpha: 0
                }
            })
            .toBuffer()

        // Generate favicon.ico (32x32)
        icon = 'favicon.ico'
        await sharp(squareSvgBuffer)
            .resize({ width: 32, height: 32 })
            .toFile(await createDistribution(icon))
        console.info('\n-', chalk.yellow(`Created ./${join(outputPath, iconName, icon)}`))

        // Generate icon.svg
        icon = 'icon.svg'
        fs.copyFileSync(inputPath, await createDistribution(icon))
        console.info('-', chalk.yellow(`Created ./${join(outputPath, iconName, icon)}`))

        // Generate apple-touch-icon.png (180x180)
        icon = 'apple-touch-icon.png'
        await sharp(squareSvgBuffer)
            .resize({ width: 180, height: 180 })
            .toFile(await createDistribution(icon))
        console.info('-', chalk.yellow(`Created ./${join(outputPath, iconName, icon)}`))

        // Generate icon-192.png (192x192)
        icon = 'icon-192.png'
        await sharp(squareSvgBuffer)
            .resize({ width: 192, height: 192 })
            .toFile(await createDistribution(icon))
        console.info('-', chalk.yellow(`Created ./${join(outputPath, iconName, icon)}`))

        // Generate icon-512.png (512x512)
        icon = 'icon-512.png'
        await sharp(squareSvgBuffer)
            .resize({ width: 512, height: 512 })
            .toFile(await createDistribution(icon))
        console.info('-', chalk.yellow(`Created ./${join(outputPath, iconName, icon)}`))

        console.info(chalk.greenBright('\nIcons generated successfully.\n'))
    } catch (err) {
        console.error('Error generating icons:', err)
    }
}

const inputSVGPath = process.argv[2]

generateIcons(inputSVGPath, outputDirectory)
```

and a corresponding [[shell scripting|shell script]]:

```bash
function make-icons() {
    if [ $# -ne 1 ]; then
        echo "Usage: make-icons <input>"
        return 1
    fi

    node make-web-icons.js "$1"
}
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-08-11]] and last modified on [[2024-08-11]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[JS - Make Web Icons]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Make Web Icons"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024