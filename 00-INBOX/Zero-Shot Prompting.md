---
creation_date: 2024-04-29
modification_date: 2024-04-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev/AI
  - Topic/Dev
  - Status/WIP
aliases:
  - Zero-Shot Prompting
publish: true
permalink:
description:
image:
cssclasses:
---


# Zero-Shot Prompting

> [!SOURCE] Sources:
> - *https://github.com/dair-ai/Prompt-Engineering-Guide/blob/main/guides/prompts-advanced-usage.md#zero-shot-prompting*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> [[Large Language Models (LLMs)]] today trained on large amounts of data and tuned to follow instructions, are capable of performing tasks zero-shot.


## Example

Prompt:

```plaintext
Classify the text into neutral, negative, or positive.

Text: I think the vacation is okay.
Sentiment:
```

Output:

```plaintext
neutral
```

> [!NOTE]
> Note that in the prompt above we didn't provide the model with any examples -- that's the zero-shot capabilities at work. When zero-shot doesn't work, it's recommended to provide demonstrations or examples in the prompt. Below we discuss the approach known as few-shot prompting.

***

## Appendix

*Note created on [[2024-04-29]] and last modified on [[2024-04-29]].*

### See Also

- [[MOC - Artificial Intelligence|MOC - Artificial Intelligence]]
- [[Prompt Engineering|Prompt Engineering]]
- [[Few-Shot Prompting]]
- [[Chain-of-Thought (CoT)]]
- [[Zero-Shot CoT]]
- [[Self-Consistency]]
- [[Generate Knowledge Prompting]]
- [[List - AI Tools|AI Tools Checklist]]
- [[AI Starter Guide.pdf]]
- [[Tool - Python PromptTools|PromptTools Python Package]]
- [[Tool - Python Langchain|Langchain]], [[Tool - Langsmith|Langsmith]], [[Tool - Langserve|Langserve]]

### Backlinks

```dataview
LIST FROM [[Zero-Shot Prompting]] AND -"CHANGELOG" AND -"//Zero-Shot Prompting"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024