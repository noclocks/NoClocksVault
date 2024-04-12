---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Decision
  - Topic/Dev
  - Topic/Dev/WebDev
  - Topic/Dev/Frontend
  - Topic/Dev/JavaScript
  - Status/WIP
aliases:
  - TypeScript ADR
publish: true
permalink:
description:
image:
cssclasses:
---

# TypeScript

> [!SOURCE] Sources:
> - **

## Context

[[Frontend TypeScript]] offers ...

## Motivation

[It is said](http://ttendency.cs.ucl.ac.uk/projects/type_study/documents/type_study.pdf) that types can help to prevent ~15% bugs. They are especially useful to specify what's nullable, what's not and the expected return types. Issues like [#1596](https://github.com/opencollective/opencollective/issues/1596) could have been prevented by using Typescript.

- Cleaner patterns

By providing `interface` and `enum` types out of the box, Typescript makes the code cleaner and easier to understand in places that use them.

- Developer experience

IDEs like VSCode (through IntelliSense) [are able to improve autocompletion](https://code.visualstudio.com/docs/languages/typescript) and errors detection thanks to Typescript.

- Smarter code refactoring

Type safety make the refactors safer.

## Decision

Use TypeScript and `tsx`.

## Alternatives

- `JSX`
- `Flow` is a strong alternative to [[Frontend TypeScript]].

## Consequences

-

## Affected Projects

- [[Frontend]]
- [[Component Library]]
- [[Design System]]
- [[No Clocks Website]]

## See Also

- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[MOC - JavaScript|JavaScript Map of Content]]
- [[Architectural Decision Record (ADR)]]
- [[Decision Record (DR)]]

***

## Appendix

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[TypeScript]] AND -"CHANGELOG" AND -"03-AREAS/Decisions/TypeScript"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024