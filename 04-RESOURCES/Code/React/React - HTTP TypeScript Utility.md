---
creation_date: 2024-04-24
modification_date: 2024-04-24
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/React
  - Type/Code/JavaScript
  - Type/Code/TypeScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/TypeScript
  - Topic/Dev/React
  - Topic/Dev/Web
  - Topic/Dev/Frontend
  - Topic/Dev/UI
  - Topic/Dev/JavaScript
  - Topic/Dev/TypeScript
  - Topic/Dev/React
  - Status/WIP
aliases:
  - HTTP TypeScript Utility Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# HTTP TypeScript Utility

> [!SOURCE] Sources:
> - *[deco/utils/http.ts at main · deco-cx/deco](https://github.com/deco-cx/deco/blob/main/utils/http.ts)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!example] **Code Snippet Metadata**:
> - Date:: [[2024-04-24]]
> - Source:: *[deco/utils/http.ts at main · deco-cx/deco](https://github.com/deco-cx/deco/blob/main/utils/http.ts)*
> - Language:: [[04-RESOURCES/Code/TypeScript/_README|TypeScript]]
> - Description:: ""

## Code Snippet

```typescript
// src/utils/http.ts

import meta from "@/config/meta.json" assert { type: "json" };

// CacheControl type
export type CacheControl = Partial<{
  "max-age": number;
  "s-maxage": number;
  "stale-while-revalidate": number;
  "stale-if-error": number;
  "public": boolean;
  "private": boolean;
  "no-cache": boolean;
  "no-store": boolean;
  "must-revalidate": boolean;
  "proxy-revalidate": boolean;
  "immutable": boolean;
  "no-transform": boolean;
}>;

// default cache control
export const DEFAULT_CACHE_CONTROL: CacheControl = {
  "s-maxage": 60, // 1minute cdn cache
  "max-age": 10, // 10s browser cache to avoid BYPASS on cloudflare: https://developers.cloudflare.com/cache/about/default-cache-behavior/#cloudflare-cache-responses
  "stale-while-revalidate": 3600, // 1hour
  "stale-if-error": 24 * 3600, // 1day
  public: true,
};

// parser
const parseCacheControlSegment = (
  segment: string,
): CacheControl => {
  const [key, value] = segment.trim().split("=");

  switch (key) {
    case "max-age":
      return { [key]: Number(value) };
    case "s-maxage":
      return { [key]: Number(value) };
    case "stale-while-revalidate":
      return { [key]: Number(value) };
    case "stale-if-error":
      return { [key]: Number(value) };
    case "public":
      return { [key]: true };
    case "private":
      return { [key]: true };
    case "no-cache":
      return { [key]: true };
    case "no-store":
      return { [key]: true };
    case "must-revalidate":
      return { [key]: true };
    case "proxy-revalidate":
      return { [key]: true };
    case "immutable":
      return { [key]: true };
    case "no-transform":
      return { [key]: true };
  }

  throw new Error(`Unknown cache directive ${value}`);
};

export const parseVary = (headers: Headers): string[] => {
  const value = headers.get("vary");

  return value?.split(",").map((x) => x.trim()) ?? [];
};

export const formatVary = (vary: string[]) => vary.filter(Boolean).join(", ");

export const parseCacheControl = (headers: Headers): CacheControl => {
  const value = headers.get("cache-control");

  return value
    ?.split(",")
    .map((x) => x.trim())
    .reduce(
      (acc, curr) => ({
        ...parseCacheControlSegment(curr),
        ...acc,
      }),
      {} as CacheControl,
    ) ?? {};
};

export const formatCacheControl = (value: CacheControl) =>
  Object
    .entries(value)
    .map(([key, value]) =>
      value === true
        ? key
        : typeof value === "number"
        ? `${key}=${value}`
        : undefined
    )
    .filter(Boolean)
    .join(", ");

const min = (a?: number, b?: number) =>
  typeof a === "number" && typeof b === "number"
    ? (a < b ? a : b)
    : typeof a === "number"
    ? a
    : b;

export const mergeCacheControl = (
  h1: CacheControl,
  h2: CacheControl,
): CacheControl => {
  const maxAge = min(h1["max-age"], h2["max-age"]);
  const sMaxAge = min(h1["s-maxage"], h2["s-maxage"]);
  const staleWhileRevalidate = min(
    h1["stale-while-revalidate"],
    h2["stale-while-revalidate"],
  );
  const staleIfError = min(h1["stale-if-error"], h2["stale-if-error"]);
  const pub = h1["public"] || h2["public"];
  const pvt = h1["public"] || h2["public"];
  const noCache = h1["no-cache"] || h2["no-cache"];
  const noStore = h1["no-store"] || h2["no-store"];
  const mustRevalidate = h1["must-revalidate"] || h2["must-revalidate"];
  const proxyRevalidate = h1["proxy-revalidate"] || h2["proxy-revalidate"];
  const immutable = h1["immutable"] && h2["immutable"];
  const noTransform = h1["no-transform"] || h2["no-transform"];

  return {
    "max-age": maxAge,
    "s-maxage": sMaxAge,
    "stale-while-revalidate": staleWhileRevalidate,
    "stale-if-error": staleIfError,
    "public": pub && !pvt,
    "private": pvt,
    "no-cache": noCache,
    "no-store": noStore,
    "must-revalidate": mustRevalidate,
    "proxy-revalidate": proxyRevalidate,
    "immutable": immutable,
    "no-transform": noTransform,
  };
};

export const defaultHeaders = {
  ["x-powered-by"]: `deco@${meta.version}`,
};

export function setCSPHeaders(
  request: Request,
  response: Response,
): Response {
  if (response.status >= 300) { // headers are immutable when using redirect and errors
    return response;
  }
  const referer = request.headers.get("origin") ??
    request.headers.get("referer");
  const isOnAdmin = referer && isAdmin(referer);
  const localhost =
    "127.0.0.1:* localhost:* http://localhost:* http://127.0.0.1:*";
  response.headers.set(
    "Content-Security-Policy",
    `frame-ancestors 'self' ${landingPageDomain} ${localhost} ${
      adminDomains.join(" ")
    } ${
      referer && isOnAdmin
        ? "https://" + referer.startsWith("http")
          ? new URL(referer).host
          : referer
        : ""
    }`,
  );
  return response;
}

/**
 * Parses the specified @param param from querystring of the given @param url.
 * if the parameter is specified so the payload is parsed by decoding the parameter from base64 and parsing as a Json usin JSON.parse,
 * otherwise all query parameters are used to mount an object using the dot notation format (`a.b=10` generates { a :{ b:10 }}).
 * @param param the parameter name
 * @param url the url to parse
 * @returns the parsed payload
 */
// deno-lint-ignore no-explicit-any
export const bodyFromUrl = (param: string, url: URL): Record<string, any> => {
  const props = url.searchParams.get(param);
  if (!props) {
    const start = {};
    for (const [key, value] of url.searchParams.entries()) {
      buildObj(start, [key.split("."), value]);
    }
    return start;
  }
  // frombase64
  return JSON.parse(decodeURIComponent(atob(props)));
};

export const allowCorsFor = (req?: Request): Record<string, string> =>
  allowCorsForOrigin(req?.headers?.get("origin") ?? "*");

export const allowCorsForOrigin = (
  ...origin: string[]
): Record<string, string> => ({
  "Access-Control-Allow-Origin": origin.join(","),
  "Access-Control-Allow-Credentials": "true",
  "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
  "Access-Control-Allow-Headers": "Content-Type, If-None-Match, *",
  "Access-Control-Expose-Headers": "ETag",
});

export { readFromStream } from "../clients/withManifest.ts";

export const forceHttps = (req: Request) => {
  let httpsReq = req;
  if (req.url.startsWith("http:") && !req.url.includes("localhost")) {
    const url = new URL(req.url);
    url.protocol = "https:";
    httpsReq = new Request(url, req);
  }
  return httpsReq;
};
```

## Details

> [!NOTE] About
> This note is about ...

### CacheControl Type

> [!CODE]- View Code:
> ```typescript
> // declare CacheControl type:
> export type CacheControl = Partial<{
>   "max-age": number;
>   "s-maxage": number;
>   "stale-while-revalidate": number;
>   "stale-if-error": number;
>   "public": boolean;
>   "private": boolean;
>   "no-cache": boolean;
>   "no-store": boolean;
>   "must-revalidate": boolean;
>   "proxy-revalidate": boolean;
>   "immutable": boolean;
>   "no-transform": boolean;
> }>;
> 
> // default cache control
> export const DEFAULT_CACHE_CONTROL: CacheControl = {
>   "s-maxage": 60, // 1minute cdn cache
>   "max-age": 10, // 10s browser cache to avoid BYPASS on cloudflare
>   "stale-while-revalidate": 3600, // 1hour
>   "stale-if-error": 24 * 3600, // 1day
>   public: true,
> };
> ```

This [[TypeScript]] code defines a custom type named `CacheControl`. The `CacheControl` type is a `Partial` type of an object. This means that all properties of the object are optional. 

The object has several properties, each representing a different cache control directive. These directives are used in [[HTTP]] headers to control how, and for how long, individual responses are cached by browsers and other caching systems.

Here's a brief explanation of each property:

- `"max-age"`: This is a number representing the maximum amount of time (in seconds) that the resource is considered fresh.
- `"s-maxage"`: Similar to `max-age`, but it applies to shared caches (e.g., proxies) and overrides `max-age` or the `Expires` header for these shared caches.
- `"stale-while-revalidate"`: Indicates that caches may serve the response in which it appears after it becomes stale, up to the indicated number of seconds.
- `"stale-if-error"`: Indicates that caches may serve the response in which it appears when an error is encountered, up to the indicated number of seconds.
- `"public"` and `"private"`: These are boolean values that control whether the response is cacheable in shared caches (`public`) or only for a single user (`private`).
- `"no-cache"`: A boolean value that, if true, means the cache must validate the freshness of the response with the server before serving it, even if it's not stale.
- `"no-store"`: If true, this directive instructs the cache not to store a copy of the resource under any conditions.
- `"must-revalidate"`: If true, once the resource becomes stale, caches must not use their stale copy without successful validation on the origin server.
- `"proxy-revalidate"`: Similar to `must-revalidate`, but it only applies to shared caches.
- `"immutable"`: If true, it indicates that the response body will not change over time.
- `"no-transform"`: If true, it prevents any transformations or conversions to be made to the resource by caches.

The `Partial` utility type makes all these properties optional, meaning a `CacheControl` object can have any subset of these properties.

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-04-24]] and last modified on [[2024-04-24]].*

### Backlinks

```dataview
LIST FROM [[React - HTTP TypeScript Utility]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - HTTP TypeScript Utility"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024