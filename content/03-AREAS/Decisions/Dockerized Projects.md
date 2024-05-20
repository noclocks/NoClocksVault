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
- Easy to get up and running: With predefined commands that setup the app, developers don't have to worry about the right scripts or steps to get the app in the states they need.
- There are predefined commands for development, testing, e2e and default.
- Developer experience
- Until now the only way to run e2e tests is by setting up the API locally. This degrades the dev experience for developers that are only working on the frontend.
- Easy to maintain

## Decision

To leverage container technology, use [[Docker]] and [[Docker Compose]], to improve local project development environment setup and consistency.

## Alternatives

- [[Podman]]
- [[Development Containers]]
- [[GitHub Codespaces]]

Some conversation have come up about creating [magic scripts](https://github.com/opencollective/opencollective/issues/2531#issuecomment-545900852) able to set up everything. (These would need to be OS dependent.)

Vagrant is another solution, [proposed by Benjamin Piouffle](https://github.com/opencollective/opencollective/pull/2644#discussion_r347774818), focused on creating cross-OS development environments through declarative configuration files. A drawback of this solution is the use of virtual machines that in general have worse performance than containers, as stated in this [post](https://www.vagrantup.com/intro/vs/docker.html).

## Consequences

- Projects should have `Dockerfile` and `compose.yml`

The use of containers should be optional and we should provide support for both: the manual method (installing everything directly in the host) and the container method.

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