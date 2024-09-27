---
creation_date: 2024-09-26
modification_date: 2024-09-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Math
  - Topic/Statistics
  - Topic/History
  - Status/WIP
aliases:
  - Bayes Theorem
publish: true
permalink:
description:
image:
cssclasses:
---

# Bayes Theorem

> [!SOURCE] Sources:
> - *https://en.wikipedia.org/wiki/Bayes'_theorem*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

**Bayes' Theorem** is stated mathematically as:

$$P(A \mid B) = \frac {P(B \mid A) P(A)} {P(B)} \qquad P(B) > 0$$

where,

$A$ and $B$ are [events](event%20(probability%20theory).md). 

Further:

- $P(A \mid B)$ : [conditional probability](conditional%20probability.md) of $A$ happening given $B$ is true; also known as [posterior probability](posterior%20probability.md) of $A$ given $B$
- $P(B \mid A)$ : [conditional probability](conditional%20probability.md) of $B$ happening given $A$ is true; also known as [likelihood](likelihood%20function.md) of $A$ given $B$ because $P(B \mid A) = L(A \mid B)$
- $P(A)$ : [prior probability](prior%20probability.md)
- $P(B)$ : [marginal likelihood](marginal%20likelihood.md) or evidence

## Generalizations

### Bayes' Theorem for 3 events

A version of Bayes' theorem for 3 events {{results from the addition of a 3rd event $C$ (or more events if $C$ is composed from multiple events, such as $C = X \cap Y$) called the _context_, with $P(C) > 0$}}, on which {{all probabilities are conditioned}}:

$$P(A \mid B \cap C) = \frac {P(B \mid A \cap C) P(A \mid C)} {P(B \mid C)}$$

## References

- https://en.wikipedia.org/wiki/Bayes'_theorem

***

## Appendix

*Note created on [[2024-09-26]] and last modified on [[2024-09-26]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Bayes Theorem]] AND -"CHANGELOG" AND -"01-SLIPBOX/Bayes Theorem"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024