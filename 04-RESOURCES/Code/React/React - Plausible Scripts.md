---
creation_date: 2024-04-24
modification_date: 2024-04-24
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/JavaScript
  - Status/WIP
aliases:
  - JavaScript React - Plausible Scripts Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# React - Plausible Scripts

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

> [!example] **Code Snippet Metadata**:
> - Date:: [[2024-04-24]]
> - Source: **
> - Language: [[MOC - JavaScript|JavaScript]]
> - Description:: ""

## Code Snippet

```typescript
// We got these scripts from plausible. Here is the docs for every possible extension:
// https://plausible.io/docs/script-extensions

// The scripts currently have extensions '.local', '.hash' and '.exclusions'.

// It is necessary to change how we get data-domain:
//
// ((w,d)=>{const h=w.location.hostname;return h.replace(/^www./,"")})(window,document)
//
// We can avoid setting data-domain per site using this strategy.
// Also, when copying the script from plausible, remember to re-escape \ on regex calls.
// The difference between localAndExclusionAndHashScript and exclusionAndHashScript is the parameter '.local'
// when generating the script.

// For localhost debug only
export const localAndExclusionAndHashScript =
  '!function(){"use strict";var c=window.location,o=window.document,u=o.currentScript,s=u.getAttribute("data-api")||new URL(u.src).origin+"/api/event";function p(e,t){e&&console.warn("Ignoring Event: "+e),t&&t.callback&&t.callback()}function e(e,t){try{if("true"===window.localStorage.plausible_ignore)return p("localStorage flag",t)}catch(e){}var i=u&&u.getAttribute("data-include"),n=u&&u.getAttribute("data-exclude");if("pageview"===e){i=!i||i.split(",").some(a),n=n&&n.split(",").some(a);if(!i||n)return p("exclusion rule",t)}function a(e){var t=c.pathname;return(t+=c.hash).match(new RegExp("^"+e.trim().replace(/\\*\\*/g,".*").replace(/([^\\.])\\*/g,"$1[^\\\\s/]*")+"/?$"))}var i={},n=(i.n=e,i.u=c.href,i.d=((w,d)=>{const h=w.location.hostname;return h.replace(/^www./,"")})(window,document),i.r=o.referrer||null,t&&t.meta&&(i.m=JSON.stringify(t.meta)),t&&t.props&&(i.p=t.props),u.getAttributeNames().filter(function(e){return"event-"===e.substring(0,6)})),r=i.p||{},l=(n.forEach(function(e){var t=e.replace("event-",""),e=u.getAttribute(e);r[t]=r[t]||e}),i.p=r,i.h=1,new XMLHttpRequest);l.open("POST",s,!0),l.setRequestHeader("Content-Type","text/plain"),l.send(JSON.stringify(i)),l.onreadystatechange=function(){4===l.readyState&&t&&t.callback&&t.callback()}}var t=window.plausible&&window.plausible.q||[];window.plausible=e;for(var i,n=0;n<t.length;n++)e.apply(this,t[n]);function a(){i=c.pathname,e("pageview")}window.addEventListener("hashchange",a),"prerender"===o.visibilityState?o.addEventListener("visibilitychange",function(){i||"visible"!==o.visibilityState||a()}):a()}();';

export const exclusionPropsAndHashScript =
  '!function(){"use strict";var l=window.location,c=window.document,s=c.currentScript,u=s.getAttribute("data-api")||new URL(s.src).origin+"/api/event";function p(e,t){e&&console.warn("Ignoring Event: "+e),t&&t.callback&&t.callback()}function e(e,t){if(/^localhost$|^127(\\.[0-9]+){0,2}\\.[0-9]+$|^\\[::1?\\]$/.test(l.hostname)||"file:"===l.protocol)return p("localhost",t);if(window._phantom||window.__nightmare||window.navigator.webdriver||window.Cypress)return p(null,t);try{if("true"===window.localStorage.plausible_ignore)return p("localStorage flag",t)}catch(e){}var n=s&&s.getAttribute("data-include"),i=s&&s.getAttribute("data-exclude");if("pageview"===e){n=!n||n.split(",").some(a),i=i&&i.split(",").some(a);if(!n||i)return p("exclusion rule",t)}function a(e){var t=l.pathname;return(t+=l.hash).match(new RegExp("^"+e.trim().replace(/\\*\\*/g,".*").replace(/([^\\.])\\*/g,"$1[^\\\\s/]*")+"/?$"))}var n={},i=(n.n=e,n.u=l.href,n.d=((w,d)=>{const h=w.location.hostname;return h.replace(/^www./,"")})(window,document),n.r=c.referrer||null,t&&t.meta&&(n.m=JSON.stringify(t.meta)),t&&t.props&&(n.p=t.props),s.getAttributeNames().filter(function(e){return"event-"===e.substring(0,6)})),r=n.p||{},o=(i.forEach(function(e){var t=e.replace("event-",""),e=s.getAttribute(e);r[t]=r[t]||e}),n.p=r,n.h=1,new XMLHttpRequest);o.open("POST",u,!0),o.setRequestHeader("Content-Type","text/plain"),o.send(JSON.stringify(n)),o.onreadystatechange=function(){4===o.readyState&&t&&t.callback&&t.callback()}}var t=window.plausible&&window.plausible.q||[];window.plausible=e;for(var n,i=0;i<t.length;i++)e.apply(this,t[i]);function a(){n=l.pathname,e("pageview")}window.addEventListener("hashchange",a),"prerender"===c.visibilityState?c.addEventListener("visibilitychange",function(){n||"visible"!==c.visibilityState||a()}):a()}();';

// normal script to be used when data-domain is defined.
export const defaultExclusionPropsAndHashScript =
  '!function(){"use strict";var o=window.location,l=window.document,c=l.currentScript,s=c.getAttribute("data-api")||new URL(c.src).origin+"/api/event";function u(e,t){e&&console.warn("Ignoring Event: "+e),t&&t.callback&&t.callback()}function e(e,t){if(/^localhost$|^127(\\.[0-9]+){0,2}\\.[0-9]+$|^\\[::1?\\]$/.test(o.hostname)||"file:"===o.protocol)return u("localhost",t);if(window._phantom||window.__nightmare||window.navigator.webdriver||window.Cypress)return u(null,t);try{if("true"===window.localStorage.plausible_ignore)return u("localStorage flag",t)}catch(e){}var i=c&&c.getAttribute("data-include"),n=c&&c.getAttribute("data-exclude");if("pageview"===e){i=!i||i.split(",").some(a),n=n&&n.split(",").some(a);if(!i||n)return u("exclusion rule",t)}function a(e){var t=o.pathname;return(t+=o.hash).match(new RegExp("^"+e.trim().replace(/\\*\\*/g,".*").replace(/([^\\.])\\*/g,"$1[^\\\\s/]*")+"/?$"))}var i={},r=(i.n=e,i.u=o.href,i.d=c.getAttribute("data-domain"),i.r=l.referrer||null,t&&t.meta&&(i.m=JSON.stringify(t.meta)),t&&t.props&&(i.p=t.props),i.h=1,new XMLHttpRequest);r.open("POST",s,!0),r.setRequestHeader("Content-Type","text/plain"),r.send(JSON.stringify(i)),r.onreadystatechange=function(){4===r.readyState&&t&&t.callback&&t.callback()}}var t=window.plausible&&window.plausible.q||[];window.plausible=e;for(var i,n=0;n<t.length;n++)e.apply(this,t[n]);function a(){i=o.pathname,e("pageview")}window.addEventListener("hashchange",a),"prerender"===l.visibilityState?l.addEventListener("visibilitychange",function(){i||"visible"!==l.visibilityState||a()}):a()}();';
```

Component Example:

```typescript
// src/components/Analytics.tsx


export interface AnalyticsProps {
  /**
   * @description paths to be excluded.
   */
  exclude?: string;
  domain?: string;
}

declare global {
  interface Window {
    plausible: (
      name: string,
      params: { props: Record<string, string | boolean> },
    ) => void;
  }
}

// self-contained snippet function (stringified)
const snippet = () => {
  // Flags and additional dimentions
  const props: Record<string, string> = {};

  const trackPageview = () =>
    globalThis.window.plausible?.("pageview", { props });

  // Attach pushState and popState listeners
  const originalPushState = history.pushState;
  if (originalPushState) {
    history.pushState = function () {
      // @ts-ignore monkey patch
      originalPushState.apply(this, arguments);
      trackPageview();
    };
    addEventListener("popstate", trackPageview);
  }

  // 2000 bytes limit
  const truncate = (str: string) => `${str}`.slice(0, 990);

  // setup plausible script and unsubscribe
  globalThis.window.events.subscribe((event) => {
    if (!event || event.name !== "deco") return;

    if (event.params) {
      const { flags, page } = event.params;
      if (Array.isArray(flags)) {
        for (const flag of flags) {
          props[flag.name] = truncate(flag.value.toString());
        }
      }
      props["pageId"] = truncate(`${page.id}`);
    }

    trackPageview();
  })();

  globalThis.window.events.subscribe((event) => {
    if (!event) return;

    const { name, params } = event;

    if (!name || !params || name === "deco") return;

    const values = { ...props };
    for (const key in params) {
      // @ts-expect-error somehow typescript bugs
      const value = params[key];

      if (value !== null && value !== undefined) {
        values[key] = truncate(
          typeof value !== "object" ? value : JSON.stringify(value),
        );
      }
    }

    globalThis.window.plausible?.(name, { props: values });
  });
};

function Analytics({ exclude, domain }: AnalyticsProps) {
  return (
    <Head>
      <link rel="dns-prefetch" href="https://plausible.io/api/event" />
      <link
        rel="preconnect"
        href="https://plausible.io/api/event"
        crossOrigin="anonymous"
      />
      <script
        defer
        data-domain={domain}
        data-exclude={`${"/proxy" + (exclude ? "," + exclude : "")}`}
        data-api="https://plausible.io/api/event"
        src="https://plausible.io/js/script.manual.js"
      />
      <script defer src={scriptAsDataURI(snippet)} />
    </Head>
  );
}

export default Analytics;
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

*Note created on [[2024-04-24]] and last modified on [[2024-04-24]].*

### Backlinks

```dataview
LIST FROM [[React - Plausible Scripts]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - Plausible Scripts"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024