---
creation_date: 2024-04-29
modification_date: 2024-04-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/AI
  - Topic/Dev
  - Status/WIP
aliases:
  - Few-Shot Prompting
publish: true
permalink:
description:
image:
cssclasses:
---


# Few-Shot Prompting

> [!SOURCE] Sources:
> - *https://github.com/dair-ai/Prompt-Engineering-Guide/blob/main/guides/prompts-advanced-usage.md#few-shot-prompting*

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
> While [[Large Language Models (LLMs)]] already demonstrate remarkable [[Zero-Shot Prompting]] capabilities, they still fall short on more complex tasks when using the zero-shot setting. To improve on this, few-shot prompting is used as a technique to enable in-context learning where we provide demonstrations in the prompt to steer the model to better performance. The demonstrations serve as conditioning for subsequent examples where we would like the model to generate a response.


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
- [[Checklist - AI Tools|AI Tools Checklist]]
- [[AI Starter Guide.pdf]]
- [[Tool - Python PromptTools|PromptTools Python Package]]
- [[Tool - Langchain|Langchain]], [[Tool - Langsmith|Langsmith]], [[Tool - Langserve|Langserve]]

### Backlinks

```dataview
LIST FROM [[Zero-Shot Prompting]] AND -"CHANGELOG" AND -"//Zero-Shot Prompting"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024