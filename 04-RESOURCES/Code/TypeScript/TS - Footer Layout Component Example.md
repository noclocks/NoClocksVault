---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/TypeScript
  - Topic/Dev
  - Topic/Dev/TypeScript
  - Topic/TypeScript
  - Topic/React
  - Topic/Frontend
  - Status/WIP
aliases:
  - Footer Layout Component Example TypeScript Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Example Footer Layout Component in TypeScript

> [!SOURCE] Sources:
> - **

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

## Code Snippet

```typescript
"use client"

import Link from "next/link"
import { Logo } from "../atoms/logo"
import { Divider } from "./divider"
import { Icon, IconName } from "../icons"
import { usePathname } from "next/navigation"
import { LogoDark } from "../atoms/logo-dark"

const menus = [
  {
    name: "Docs",
    items: [
      { name: "Getting Started", href: "/docs/quickstart" },
      { name: "Guides", href: "/docs/guides" },
      { name: "API", href: "/docs/other/api-reference" }
    ]
  },
  {
    name: "Company",
    items: [
      { name: "Effectful", href: "https://www.effectful.co/", blank: true }
    ]
  },
  {
    name: "Legal",
    items: [
      {
        name: "Terms & Conditions",
        href: "https://www.effectful.co/privacy-cookies",
        blank: true
      },
      {
        name: "Privacy Policy",
        href: "https://www.effectful.co/terms-conditions",
        blank: true
      },
      { name: "Contact Us", href: "mailto:contact@effectful.co" }
    ]
  }
]

const socials = [
  { name: "GitHub", icon: "github", href: "https://github.com/Effect-TS" },
  { name: "Discord", icon: "discord", href: "https://discord.gg/effect-ts" },
  { name: "Twitter", icon: "twitter", href: "https://twitter.com/EffectTS_" }
]

export const Footer = () => {
  const pathname = usePathname()
  const wide = pathname.startsWith("/docs")

  return (
    <div className={pathname === "/" ? "dark" : ""}>
      <footer className="bg-zinc-50 dark:bg-black text-zinc-700 dark:text-zinc-400 text-sm">
        <Divider />
        <div
          className={`w-full ${
            wide ? "max-w-screen-2xl" : "max-w-screen-xl"
          } mx-auto px-4 sm:px-8 lg:px-16 py-24 flex flex-col sm:flex-row gap-10 justify-between`}
        >
          <div>
            <Logo className="hidden dark:block h-7 sm:h-8" />
            <LogoDark className="dark:hidden h-7 sm:h-8" />
            <p className="leading-relaxed my-6">
              MIT Licensed
              <br />
              Copyright © {new Date().getFullYear()} Effectful Technologies
              Inc.
            </p>
            <div className="flex items-center gap-4">
              {socials.map(({ name, icon, href }, index) => (
                <Link key={index} href={href} className="generic-hover">
                  <span className="sr-only">{name}</span>
                  <Icon
                    name={icon as IconName}
                    className="h-5 text-zinc-700 dark:text-zinc-400"
                  />
                </Link>
              ))}
            </div>
          </div>
          <div className="flex flex-wrap sm:gap-x-12 gap-y-6 sm:mt-0">
            {menus.map(({ name, items }, index) => (
              <div key={index} className="w-1/2 sm:w-auto">
                <h3 className="text-white mb-4">{name}</h3>
                <ul className="space-y-2">
                  {items.map(({ name, href, blank }, index) => (
                    <li key={index}>
                      <Link
                        href={href}
                        className={`flex items-start ${pathname.startsWith(href) ? "" : "button-hover"}`}
                        target={blank === true ? "_blank" : "_self"}
                      >
                        <span>{name}</span>
                        {href.startsWith("http") && (
                          <Icon
                            name="arrow-up-right-light"
                            className="h-3 mt-0.5 ml-0.5"
                          />
                        )}
                      </Link>
                    </li>
                  ))}
                </ul>
              </div>
            ))}
          </div>
        </div>
      </footer>
    </div>
  )
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

*Note created on [[2024-04-15]] and last modified on [[2024-04-15]].*

### Backlinks

```dataview
LIST FROM [[TS - Footer Layout Component Example]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/TypeScript/TS - Footer Layout Component Example"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024