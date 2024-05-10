---
creation_date: 2024-05-09
modification_date: 2024-05-09
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Type/Code/React
  - Type/Code/TypeScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/TypeScript
  - Topic/Dev/Frontend
  - Topic/Dev/Web
  - Topic/Dev/React
  - Status/WIP
aliases:
  - Metadata Files React Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# React Metadata Files

> [!SOURCE] Sources:
> - *[File Conventions: Metadata Files | Next.js (nextjs.org)](https://nextjs.org/docs/app/api-reference/file-conventions/metadata)*

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

- Favicons
- Icons
- Apple-Icons
- Open-Graph and Twitter Images
- Sitemap.xml
- Robots.txt
- Manifest.json

## Images (Favicons, Icons, etc.)

The `favicon`, `icon`, and `apple-icon` file conventions allow one to set icons for the application.

They are useful for adding app icons that appear in places like web browser tabs, phone home screens, and search engine results.

There are two ways to set app icons:

- [Using image files (.ico, .jpg, .png)](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#image-files-ico-jpg-png)
- [Using code to generate an icon (.js, .ts, .tsx)](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#generate-icons-using-code-js-ts-tsx)

### Image Files

Use an image file to set an app icon by placing a `favicon`, `icon`, or `apple-icon` image file within your `/app` directory. The `favicon` image can only be located in the top level of `app/`.

Next.js will evaluate the file and automatically add the appropriate tags to your app's `<head>` element.

|File convention|Supported file types|Valid locations|
|---|---|---|
|[`favicon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#favicon)|`.ico`|`app/`|
|[`icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#icon)|`.ico`, `.jpg`, `.jpeg`, `.png`, `.svg`|`app/**/*`|
|[`apple-icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#apple-icon)|`.jpg`, `.jpeg`, `.png`|`app/**/*`|

#### Favicon

Add a `favicon.ico` image file to the root `/app` route segment.

```html
<!-- <head> output -->
<link rel="icon" href="/favicon.ico" sizes="any" />
```

### App Icons

Add an `icon.(ico|jpg|jpeg|png|svg)` image file.

```html
<link  rel="icon"  href="/icon?<generated>"  type="image/<generated>"  sizes="<generated>"/>
```

### Apple Icons

Add an `apple-icon.(jpg|jpeg|png)` image file.

```html
<link rel="apple-touch-icon"  href="/apple-icon?<generated>"  type="image/<generated>"  sizes="<generated>"/>
```


> [!TIP] **Good to know**
> - You can set multiple icons by adding a number suffix to the file name. For example, `icon1.png`, `icon2.png`, etc. Numbered files will sort lexically.
> - Favicons can only be set in the root `/app` segment. If you need more granularity, you can use [`icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#icon).
> - The appropriate `<link>` tags and attributes such as `rel`, `href`, `type`, and `sizes` are determined by the icon type and metadata of the evaluated file.
>     - For example, a 32 by 32px `.png` file will have `type="image/png"` and `sizes="32x32"` attributes.
> - `sizes="any"` is added to `favicon.ico` output to [avoid a browser bug](https://evilmartians.com/chronicles/how-to-favicon-in-2021-six-files-that-fit-most-needs) where an `.ico` icon is favored over `.svg`.



## Generate Icons using Code

In addition to using [literal image files](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#image-files-ico-jpg-png), you can programmatically **generate** icons using code.

Generate an app icon by creating an `icon` or `apple-icon` route that default exports a function.

|File convention|Supported file types|
|---|---|
|`icon`|`.js`, `.ts`, `.tsx`|
|`apple-icon`|`.js`, `.ts`, `.tsx`|

```typescript
import { ImageResponse } from 'next/og'
 
// Image metadata
export const size = {
  width: 32,
  height: 32,
}
export const contentType = 'image/png'
 
// Image generation
export default function Icon() {
  return new ImageResponse(
    (
      // ImageResponse JSX element
      <div
        style={{
          fontSize: 24,
          background: 'black',
          width: '100%',
          height: '100%',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          color: 'white',
        }}
      >
        A
      </div>
    ),
    // ImageResponse options
    {
      // For convenience, we can re-use the exported icons size metadata
      // config to also set the ImageResponse's width and height.
      ...size,
    }
  )
}
```

```html
<link rel="icon" href="/icon?<generated>" type="image/png" sizes="32x32" />
```

> [!TIP] **Good to Know**:
> - By default, generated icons are [**statically optimized**](https://nextjs.org/docs/app/building-your-application/rendering/server-components#static-rendering-default) (generated at build time and cached) unless they use [dynamic functions](https://nextjs.org/docs/app/building-your-application/rendering/server-components#server-rendering-strategies#dynamic-functions) or uncached data.
> - You can generate multiple icons in the same file using [`generateImageMetadata`](https://nextjs.org/docs/app/api-reference/functions/generate-image-metadata).
> - You cannot generate a `favicon` icon. Use [`icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#icon) or a [favicon.ico](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#favicon) file instead.

## Props

The default export function receives the following props:

#### params (optional)

An object containing the [dynamic route parameters](https://nextjs.org/docs/app/building-your-application/routing/dynamic-routes) object from the root segment down to the segment `icon` or `apple-icon` is colocated in.

```typescript
// app/shop/[slug]/icon.tsx
export default function Icon({ params }: { params: { slug: string } }) {  // ...}
```

|Route|URL|`params`|
|---|---|---|
|`app/shop/icon.js`|`/shop`|`undefined`|
|`app/shop/[slug]/icon.js`|`/shop/1`|`{ slug: '1' }`|
|`app/shop/[tag]/[item]/icon.js`|`/shop/1/2`|`{ tag: '1', item: '2' }`|
|`app/shop/[...slug]/icon.js`|`/shop/1/2`|`{ slug: ['1', '2'] }`|

### Returns

The default export function should return a `Blob` | `ArrayBuffer` | `TypedArray` | `DataView` | `ReadableStream` | `Response`.

> **Good to know**: `ImageResponse` satisfies this return type.

### Config Exports

You can optionally configure the icon's metadata by exporting `size` and `contentType` variables from the `icon` or `apple-icon` route.

|Option|Type|
|---|---|
|[`size`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#size)|`{ width: number; height: number }`|
|[`contentType`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#contenttype)|`string` - [image MIME type](https://developer.mozilla.org/docs/Web/HTTP/Basics_of_HTTP/MIME_types#image_types)|

#### size

icon.tsx | apple-icon.tsx

```typescript
export const size = { width: 32, height: 32 } export default function Icon() {}
```

```html
<link rel="icon" sizes="32x32" />
```

#### contentType

```typescript
export const contentType = 'image/png' export default function Icon() {}
```

```html
<link rel="icon" type="image/png" />
```

#### Route Segment Config

`icon` and `apple-icon` are specialized [Route Handlers](https://nextjs.org/docs/app/building-your-application/routing/route-handlers) that can use the same [route segment configuration](https://nextjs.org/docs/app/api-reference/file-conventions/route-segment-config) options as Pages and Layouts.

## See Also

- [[04-RESOURCES/Code/React/_README|React Code]]
- [[Tool - React.js|React]] (Tool)
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[04-RESOURCES/Code/TypeScript/_README|TypeScript Code]]
- [[MOC - Development|Development Map of Content]]
- [[MOC - React|React Map of Content]]
- [[MOC - JavaScript|JavaScript Map of Content]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - JS - Next.js|Next.js]]


***

## Appendix

*Note created on [[2024-05-09]] and last modified on [[2024-05-09]].*

### Backlinks

```dataview
LIST FROM [[React - Metadata Files]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - Metadata Files"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
