---
creation_date: 2024-04-02
modification_date: 2024-04-02
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Checklist
  - Topic/Dev
  - Topic/Dev/Frontend
  - Topic/Dev/React
  - Status/WIP
aliases:
  - Checklist - Frontend Metadata Files
  - Frontend Metadata Files Checklist
publish: true
permalink:
description:
image:
cssclasses:
---

# Frontend Metadata Files Checklist

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

### Favicon, Icon, and Apple Icon

#### Image File Method

> [!NOTE]
> The `favicon`, `icon`, or `apple-icon` file conventions allow you to set icons for your application.
> 
> They are useful for adding app icons that appear in places like web browser tabs, phone home screens, and search engine results.

| File convention                                              | Supported file types                    | Valid locations |
| ------------------------------------------------------------ | --------------------------------------- | --------------- |
| [`favicon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#favicon) | `.ico`                                  | `app/`          |
| [`icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#icon) | `.ico`, `.jpg`, `.jpeg`, `.png`, `.svg` | `app/**/*`      |
| [`apple-icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#apple-icon) | `.jpg`, `.jpeg`, `.png`                 | `app/**/*`      |

- [ ] Add a `favicon.ico` image file to the root `/app` route segment.

```html
<link rel="icon" href="/favicon.ico" sizes="any" />
```

- [ ] Add an `icon.{ico|jpg|jpeg|png|svg}` image file.

```html
<link
  rel="icon"
  href="/icon?<generated>"
  type="image/<generated>"
  sizes="<generated>"
/>
```

- [ ] Add an `apple-icon.{jpg|jpeg|png}`.

```html
<link rel="apple-touch-icon" href="/apple-icon?<generated>" type="image/<generated>" sizes="<generated>"/>
```

> [!TIP]
> - You can set multiple icons by adding a number suffix to the file name. For example, `icon1.png`, `icon2.png`, etc. Numbered files will sort lexically.
> - Favicons can only be set in the root `/app` segment. If you need more granularity, you can use [`icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#icon).
> - The appropriate `<link>` tags and attributes such as `rel`, `href`, `type`, and `sizes` are determined by the icon type and metadata of the evaluated file.
> 	- For example, a 32 by 32px `.png` file will have `type="image/png"` and `sizes="32x32"` attributes.
> - `sizes="any"` is added to `favicon.ico` output to [avoid a browser bug](https://evilmartians.com/chronicles/how-to-favicon-in-2021-six-files-that-fit-most-needs) where an `.ico` icon is favored over `.svg`.


#### Generate via Code Method

> [!NOTE]
> In addition to using [literal image files](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#image-files-ico-jpg-png), you can programmatically **generate** icons using code.

Generate an app icon by creating an `icon` or `apple-icon` route that default exports a function.

| File convention | Supported file types  |
| --------------- | --------------------- |
| `icon`          | `.js`, `.ts`, `.tsx`  |
| `apple-icon`    | `.js`, `.ts`, `.tsx`/ |


The easiest way to generate an icon is to use the [`ImageResponse`](https://nextjs.org/docs/app/api-reference/functions/image-response) API from `next/og`.

- `app/icon.tsx`:

```typescript
import { ImageResponse } from 'next/og'
 
// Route segment config
export const runtime = 'edge'
 
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

- `<head>` output:

```html
<link rel="icon" href="/icon?<generated>" type="image/png" sizes="32x32" />
```

> [!TIP]
> - By default, generated icons are [**statically optimized**](https://nextjs.org/docs/app/building-your-application/rendering/server-components#static-rendering-default) (generated at build time and cached) unless they use [dynamic functions](https://nextjs.org/docs/app/building-your-application/rendering/server-components#server-rendering-strategies#dynamic-functions) or un-cached data.
> - You can generate multiple icons in the same file using [`generateImageMetadata`](https://nextjs.org/docs/app/api-reference/functions/generate-image-metadata).
> - You cannot generate a `favicon` icon. Use [`icon`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#icon) or a [favicon.ico](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#favicon) file instead.

##### Props

The default export function receives the following props:

- **[`params` (optional)](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#params-optional)**

An object containing the [dynamic route parameters](https://nextjs.org/docs/app/building-your-application/routing/dynamic-routes) object from the root segment down to the segment `icon` or `apple-icon` is co-located in.

- `app/shop/[slug]/icon.tsx`:

```typescript
export default function Icon({ params }: { params: { slug: string } }) {
  // ...
}
```

| Route                           | URL         | `params`                  |
| ------------------------------- | ----------- | ------------------------- |
| `app/shop/icon.js`              | `/shop`     | `undefined`               |
| `app/shop/[slug]/icon.js`       | `/shop/1`   | `{ slug: '1' }`           |
| `app/shop/[tag]/[item]/icon.js` | `/shop/1/2` | `{ tag: '1', item: '2' }` |
| `app/shop/[...slug]/icon.js`    | `/shop/1/2` | `{ slug: ['1', '2'] }`    |

##### Returns

The default export function should return a `Blob` | `ArrayBuffer` | `TypedArray` | `DataView` | `ReadableStream` | `Response`.

> [!TIP]
> **Good to know**: `ImageResponse` satisfies this return type.

- [Config exports](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#config-exports)

You can optionally configure the icon's metadata by exporting `size` and `contentType` variables from the `icon` or `apple-icon` route.

| Option | Type |
| --- | --- |
| [`size`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#size) | `{ width: number; height: number }` |
| [`contentType`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#contenttype) | `string` - [image MIME type](https://developer.mozilla.org/docs/Web/HTTP/Basics_of_HTTP/MIME_types#image_types) |

- [`size`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#size)

- `icon.tsx` | `apple-icon.tsx`:

```typescript
export const size = { width: 32, height: 32 }
 
export default function Icon() {}
```

- `<head>` output:

```html
<link rel="icon" sizes="32x32" />
```

### Manifest.json

> [!NOTE]
> **See Also**: https://developer.mozilla.org/en-US/docs/Web/Manifest

- [ ] Add or generate a `manifest.json` or `manifest.webmanifest` file that follows the [Web Manifest Specification](https://developer.mozilla.org/en-US/docs/Web/Manifest) in the *root of the `app` directory* to provide information about the web application for the browser.

- Example Static Manifest File:

```json
{
  "name": "My Next.js Application",
  "short_name": "Next.js App",
  "description": "An application built with Next.js",
  "start_url": "/"
  // ...
}
```

- [ ] Generate `manifest.ts` file that returns a [Manifest Object](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#manifest-object):

```typescript
import { MetadataRoute } from 'next'
 
export default function manifest(): MetadataRoute.Manifest {
  return {
    name: 'Next.js App',
    short_name: 'Next.js App',
    description: 'Next.js App',
    start_url: '/',
    display: 'standalone',
    background_color: '#fff',
    theme_color: '#fff',
    icons: [
      {
        src: '/favicon.ico',
        sizes: 'any',
        type: 'image/x-icon',
      },
    ],
  }
}
```

#### Manifest Object

The manifest object contains an extensive list of options that may be updated due to new web standards. For information on all the current options, refer to the `MetadataRoute.Manifest` type in your code editor if using [TypeScript](https://nextjs.org/docs/app/building-your-application/configuring/typescript#typescript-plugin) or see the [MDN](https://developer.mozilla.org/docs/Web/Manifest) docs.

### Open Graph and Twitter

The `opengraph-image` and `twitter-image` file conventions allow you to set Open Graph and Twitter images for a route segment.

They are useful for setting the images that appear on social networks and messaging apps when a user shares a link to your site.

There are two ways to set Open Graph and Twitter images:

- [Using image files (.jpg, .png, .gif)](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#image-files-jpg-png-gif)
- [Using code to generate images (.js, .ts, .tsx)](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#generate-images-using-code-js-ts-tsx)

#### Image files (.jpg, .png, .gif)

Use an image file to set a route segment's shared image by placing an `opengraph-image` or `twitter-image` image file in the segment.

Next.js will evaluate the file and automatically add the appropriate tags to your app's `<head>` element.

| File convention                                              | Supported file types            |
| ------------------------------------------------------------ | ------------------------------- |
| [`opengraph-image`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#opengraph-image) | `.jpg`, `.jpeg`, `.png`, `.gif` |
| [`twitter-image`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#twitter-image) | `.jpg`, `.jpeg`, `.png`, `.gif` |
| [`opengraph-image.alt`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#opengraph-imagealttxt) | `.txt`                          |
| [`twitter-image.alt`](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/app-icons#twitter-imagealttxt) | `.txt`                          |


##### opengraph-image

Add an `opengraph-image.(jpg|jpeg|png|gif)` image file to any route segment.

```html
<meta property="og:image" content="<generated>" />
<meta property="og:image:type" content="<generated>" />
<meta property="og:image:width" content="<generated>" />
<meta property="og:image:height" content="<generated>" />
```

##### twitter-image

Add a `twitter-image.(jpg|jpeg|png|gif)` image file to any route segment.



### Robots.txt

- [ ] Add or generate a `robots.txt` file that matches the [Robots Exclusion Standard](https://en.wikipedia.org/wiki/Robots.txt#Standard) in the **root** of `app` directory to tell search engine crawlers which URLs they can access on your site.

### Sitemap.xml



### 

## Conclusion

***

## Appendix

*Note created on [[2024-04-02]] and last modified on [[2024-04-02]].*

### Backlinks

```dataview
LIST FROM [[Checklist - Frontend Metadata Files]] AND -"CHANGELOG" AND -"03-AREAS/Checklists/Checklist - Frontend Metadata Files"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
