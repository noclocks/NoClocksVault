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
  - LoggedInUser.ts
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# TS - LoggedInUser Custom Type

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

```typescript
export type LoggedInUser = {
  id: number;
  collective: {
    id: number;
    slug: string;
    name: string;
    legalName: string;
    type: string;
  };
  memberOf: Array<{
    id: number;
    role: string;
    collective: {
      id: number;
      slug: string;
      name: string;
      type: string;
      imageUrl: string;
      isArchived: boolean;
      isIncognito: boolean;
    };
  }>;
  hasTwoFactorAuth: boolean;
  hasRole: (roles: string[] | string, collective) => boolean;
  hostsUserisAdminOf: () => any[];
  isAdminOfCollective: (collective: any) => boolean;
  isAdminOfCollectiveOrHost: (collective: any) => boolean;
  isHostAdmin: (collective: any) => boolean;
  isAccountantOnly: (collective: any) => boolean;
  isSelf: (collective: any) => boolean;
  isRoot: boolean;
  canEditComment: (comment: any) => boolean;
  canEditEvent: (event: any) => boolean;
  canEditProject: (project: any) => boolean;
  canEditUpdate: (update: any) => boolean;
  canSeeAdminPanel: (collective: any) => boolean;
  email: string;
  hasPreviewFeatureEnabled: (featureKey: PREVIEW_FEATURE_KEYS | `${PREVIEW_FEATURE_KEYS}`) => boolean;
  getAvailablePreviewFeatures: () => PreviewFeature[];
};
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
LIST FROM [[TS - LoggedInUser Custom Type]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/TypeScript/TS - LoggedInUser Custom Type"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024