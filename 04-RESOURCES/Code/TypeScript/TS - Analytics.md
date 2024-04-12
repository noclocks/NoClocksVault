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

### Events

```typescript
// 
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

### Google Analytics

### Plausible

```typescript
# plausible.ts


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