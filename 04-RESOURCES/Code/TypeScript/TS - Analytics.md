---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/TypeScript
  - Topic/Dev
  - Topic/Dev/TypeScript
  - Topic/TypeScript
  - Topic/Frontend
  - Topic/React
  - Status/WIP
aliases:
  - TypeScript Analytics
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Analytics with TypeScript

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

## Code Snippets

### Events and Properties

- `src/lib/analytics/events.ts`:

```typescript
// src/lib/analytics/events.ts
export const enum AnalyticsEvent {
  CONTRIBUTION_STARTED = 'Contribution Started',
  CONTRIBUTION_DETAILS_STEP_COMPLETED = 'Contribution Details Step Completed',
  CONTRIBUTION_PAYMENT_STEP = 'Contribution Payment Step',
  CONTRIBUTION_SUBMITTED = 'Contribution Submitted',
  CONTRIBUTION_SUCCESS = 'Contribution Success',
  CONTRIBUTION_ERROR = 'Contribution Error',

  EXPENSE_SUBMISSION_STARTED = 'Expense Submission Started',
  EXPENSE_SUBMISSION_PICKED_COLLECTIVE = 'Expense Submission Picked Collective',
  EXPENSE_SUBMISSION_PICKED_PAYEE = 'Expense Submission Picked Payee',
  EXPENSE_SUBMISSION_PICKED_EXPENSE_TYPE = 'Expense Submission Picked Expense Type',
  EXPENSE_SUBMISSION_PICKED_EXPENSE_TITLE = 'Expense Submission Picked Expense Title',
  EXPENSE_SUBMISSION_FILLED_EXPENSE_DETAILS = 'Expense Submission Filled Expense Details',
  EXPENSE_SUBMISSION_SUBMITTED = 'Expense Submitted',
  EXPENSE_SUBMISSION_SUBMITTED_SUCCESS = 'Expense Submitted Success',
  EXPENSE_SUBMISSION_SUBMITTED_ERROR = 'Expense Submitted Error',
};
```

- `src/lib/analytics/properties.ts`:

```typescript
// src/lib/analytics/properties.ts
export const enum AnalyticsProperty {
  CONTRIBUTION_STEP = 'contributionStep',
  CONTRIBUTION_HAS_PLATFORM_TIP = 'contributionHasPlatformTip',
  CONTRIBUTION_PLATFORM_TIP_PERCENTAGE = 'contributionPlatformTipPercentage',
  CONTRIBUTION_IS_NEW_PLATFORM_TIP = 'contributionIsNewPlatformTip',
};
```

### Google Analytics

- [ ] #Status/Todo 

```typescript
// lib/analytics/google.ts
export const enum {

};
```

### Plausible

- `src/lib/analytics/plausible.ts`:

```typescript
// src/lib/analytics/plausible.ts
import { AnalyticsEvent } from './events';
import { AnalyticsProperty } from './properties';

declare global {
  interface Window {
    plausible?: {
      (
        event: string,
        options: {
          u?: string;
          props?: Record<string, string | boolean | number>;
        },
      ): void;
      q?: any[];
    };
  }
}

type TrackOptions = {
  props?: Record<AnalyticsProperty, string | number | boolean>;
};

export function track(event: AnalyticsEvent | 'pageview', options: TrackOptions = {}) {
  const location = normalizeLocation(window.location.href);

  if (process.env.NODE_ENV === 'development') {
    // eslint-disable-next-line no-console
    console.log('plausible event', event, location, JSON.stringify(options));
  }
  if (window.plausible) {
    window.plausible(event, Object.assign(options, { u: location }));
  }
}

export function normalizeLocation(href: string): string {
  const url = new URL(href);
  const pathname = url.pathname;

  if (pathname.startsWith('/dashboard/')) {
    url.pathname = pathname.replace(/(\/dashboard\/)[^/]+(.*)/, '$1[slug]$2');
  } else if (pathname.startsWith('/signin/') && !pathname.startsWith('/signin/sent')) {
    url.pathname = pathname.replace(/(\/signin\/)[^/]+(.*)/, '$1[token]$2');
  } else if (pathname.startsWith('/reset-password/')) {
    url.pathname = pathname.replace(/(\/reset-password\/)[^/]+(.*)/, '$1[token]$2');
  } else if (pathname.startsWith('/confirm/email/')) {
    url.pathname = pathname.replace(/(\/confirm\/email\/)[^/]+(.*)/, '$1[token]$2');
  } else if (pathname.startsWith('/confirm/guest/')) {
    url.pathname = pathname.replace(/(\/confirm\/guest\/)[^/]+(.*)/, '$1[token]$2');
  } else if (pathname.startsWith('/email/unsubscribe/')) {
    url.pathname = pathname.replace(
      /(\/email\/unsubscribe\/)[^/]+\/[^/]+\/([^/]+)\/[^/]+(.*)/,
      '$1[email]/[slug]/$2/[token]$3',
    );
  } else if (pathname.match(/\/[^/]+\/redeem\/.*/)) {
    url.pathname = pathname.replace(/\/[^/]+\/redeem\/[^/]+(.*)/, '/[slug]/redeem/[code]$1');
  } else if (pathname.startsWith('/redeem/')) {
    url.pathname = pathname.replace(/\/redeem\/[^/]+(.*)/, '/redeem/[code]$1');
  } else if (pathname.match(/\/[^/]+\/redeemed\/.*/)) {
    url.pathname = pathname.replace(/\/[^/]+\/redeemed\/[^/]+(.*)/, '/[slug]/redeemed/[code]$1');
  } else if (pathname.startsWith('/redeemed/')) {
    url.pathname = pathname.replace(/\/redeemed\/[^/]+(.*)/, '/redeemed/[code]$1');
  }

  return url.href;
}

// Adapted from https://github.com/plausible/analytics/blob/master/tracker/src/plausible.js to use with manual mode
// See https://plausible.io/docs/custom-locations
(function initPlausible() {
  if (typeof window !== 'undefined') {
    window.plausible =
      window.plausible ||
      function () {
        (window.plausible.q = window.plausible.q || []).push(arguments);
      };
  }

  let lastLocationPathName;

  function trackPageView() {
    if (lastLocationPathName === location.pathname) {
      return;
    }
    lastLocationPathName = location.pathname;
    track('pageview');
  }

  if (typeof window !== 'undefined' && window.history.pushState) {
    const originalPushState = window.history['pushState'];
    window.history.pushState = function () {
      originalPushState.apply(this, arguments);
      trackPageView();
    };
    window.addEventListener('popstate', trackPageView);
  }

  if (typeof window !== 'undefined') {
    trackPageView();
  }
})();
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

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[TS - Analytics]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/TypeScript/TS - Analytics"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024