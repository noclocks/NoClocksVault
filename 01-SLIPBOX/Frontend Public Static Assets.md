---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - Frontend Public Static Assets
publish: true
permalink:
description:
image:
cssclasses:
---

## Robots.txt

```plaintext
User-agent: *
Disallow: /
```

## Sitemap.xml

## Web Manifest

## Images

## Favicons

## Styles

- Example: `fallback-errorpage.css`:

```css
header {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 8px 16px;
  gap: 16px;
  height: 68px;
  background: white;
  border-bottom: 1px solid rgb(232,233,235);
}

.content {
  text-align: center;
  padding: 32px 16px;
  color: #323334;
}

.content img {
  max-width: min(100%, 600px);
}

.social-links {
  display: flex;
  justify-content: center;
  gap: 16px;
  font-size: 16px;
}

.social-links a {
  color: #323334;
  text-decoration: underline;
}

.social-links a:hover {
  color: #DC5F7D;
}

h1 {
  font-size: 40px;
  color: #141415;
}

p {
  font-size: 20px;
  margin: 0;
}
```

## Scripts

- Example: `custom.js`:

## Animations

- Stored in [[JavaScript Storage Object Notation (JSON)]]
- Example: `public/assets/animations/scanning.json`

## Fonts

- Stored as `.eot`, `.svg`, `.woff`, and `.woff2` files in the `public/assets/fonts/<FontName>/` folders.
- Bold, Italic, Regular, Semi-Bold, etc.

- Example Custom Font:

```plaintext
├─public/assets/fonts/
├───CustomFont/
    ├───CustomFont.eot
    ├───CustomFont.svg
    ├───CustomFont.ttf
    └───CustomFont.woff
```


- Example: `Inter` Font:

```plaintext
├─public/assets/fonts/
├───Inter/
    ├───Inter-Black.woff
    ├───Inter-BlackItalic.woff
    ├───Inter-Bold.woff
    ├───Inter-BoldItalic.woff
    ├───Inter-ExtraBold.woff
    ├───Inter-Italic.woff
    ├───Inter-Medium.woff
    ├───Inter-MediumItalic.woff
    ├───Inter-Regular.woff
    ├───Inter-SemiBold.woff
    └───Inter-SemiBoldItalic.woff
```

## Icons

## HTML

- Examples:
	- `login.html`
	- `maintenance.html`
	- `404.html`
	- `500.html`





