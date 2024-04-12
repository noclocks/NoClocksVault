---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Decision
  - Topic/Dev
  - Status/WIP
aliases:
  - GitHub Actions for CICD
publish: true
permalink:
description:
image:
cssclasses:
---

# GitHub Actions for CICD

> [!SOURCE] Sources:
> - **

## Context

- Implement a CI configuration using GitHub Actions Workflows

## Motivation

GitHub Actions is now available and it could provide a better experience than CircleCI for our setup.

- Deep integration with GitHub obviously
- 100% Free (because we're Open Source). We don't want to pay for CI if we don't have to.
- Faster because of bigger limits in the number of concurrent jobs (CircleCI allows us 4 concurrent jobs with our current free plan).


## Decision


## Alternatives

- Do nothing and keep current setup with CircleCI
- Pay for higher concurrency limits with CircleCI
- Another CI platform


## Consequences


## Affected Projects


## See Also

- [[Architectural Decision Record (ADR)]]
- [[Decision Record (DR)]]

***

## Appendix

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[GitHub Actions for CICD]] AND -"CHANGELOG" AND -"03-AREAS/Decisions/GitHub Actions for CICD"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024