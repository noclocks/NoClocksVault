---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Decision
  - Topic/Dev
  - Status/WIP
aliases:
  - Dockerized Projects
publish: true
permalink:
description:
image:
cssclasses:
---

# Dockerized Projects

> [!SOURCE] Sources:
> - **

## Context

To make it as easy as possible to setup project environments locally.

## Motivation

- Operating System Agnostic: Building the project inside a container guarantees that everybody is having a similar experience no matter the OS used.
- Easy to get up and running

With predefined commands that setup the app, developers don't have to worry about the right scripts or steps to get the app in the states they need.

There are predefined commands for development, testing, e2e and default.

- Developer experience

Until now the only way to run e2e tests is by setting up the API locally. This degrades the dev experience for developers that are only working on the frontend.

Suggestions to solve this limitation have come up; [#2531](https://github.com/opencollective/opencollective/issues/2531) and [#2556](https://github.com/opencollective/opencollective/issues/2556), but until we get there containers can help developers to have the environment they need by executing one command.

- Easy to maintain

This implementation provides predefined commands and the ability to run any current or future command using the same API as the predefined commands. The biggest point of change is the node version that needs to be updated in conjunction with the package.json and CircleCI config file.

## Decision

To leverage container technology, use [[Docker]] and [[Docker Compose]], to improve local project development environment setup and consistency.

## Alternatives

- [[Podman]]
- [[Development Containers]]
- [[GitHub Codespaces]]

## Consequences

- Projects should have `Dockerfile` and `compose.yml`

## Affected Projects


## See Also

- [[Docker]] and [[Docker Compose]]
- [[Docker Init Command]]
- [[Architectural Decision Record (ADR)]]
- [[Decision Record (DR)]]

***

## Appendix

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[Dockerized Projects]] AND -"CHANGELOG" AND -"03-AREAS/Decisions/Dockerized Projects"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024