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
> While [[Large Language Models (LLMs)]] already demonstrate remarkable [[Zero-Shot Prompting]] capabilities, they still fall short on more complex tasks when using the [[Zero-Shot Prompting]] technique. To improve on this, **few-shot prompting** is used as a technique to enable *in-context learning where we provide demonstrations in the prompt to steer the model to better performance. The demonstrations serve as conditioning for subsequent examples where we would like the model to generate a response.*

## Example

*To demonstrate **few-shot prompting**, we use an example presented by [Brown et al. 2020](https://arxiv.org/abs/2005.14165). In the example, the task is to correctly use a new word in a sentence.*

Prompt:

```plaintext
A "whatpu" is a small, furry animal native to Tanzania. An example of a sentence that uses
the word whatpu is:
We were traveling in Africa and we saw these very cute whatpus.
To do a "farduddle" means to jump up and down really fast. An example of a sentence that uses
the word farduddle is:
```

Output:

```plaintext
When we won the game, we all started to farduddle in celebration.
```

> [!NOTE]
> Note that in the prompt above we didn't provide the model with any examples -- that's the zero-shot capabilities at work. When zero-shot doesn't work, it's recommended to provide demonstrations or examples in the prompt. Below we discuss the approach known as few-shot prompting.

We can observe that the model has somehow learned how to perform the task by providing it with just one example (i.e., 1-shot). For more difficult tasks, we can experiment with increasing the demonstrations (e.g., 3-shot, 5-shot, 10-shot, etc.).

Following the findings from [Min et al. (2022)](https://arxiv.org/abs/2202.12837), here are a few more tips about demonstrations/exemplars when doing few-shot:

- "the label space and the distribution of the input text specified by the demonstrations are both important (regardless of whether the labels are correct for individual inputs)"
- the format you use also plays a key role in performance, even if you just use random labels, this is much better than no labels at all.
- additional results show that selecting random labels from a true distribution of labels (instead of a uniform distribution) also helps.

Let's try out a few examples. Let's first try an example with random labels (meaning the labels Negative and Positive are randomly assigned to the inputs):

Prompt:

```plaintext
This is awesome! // Negative
This is bad! // Positive
Wow that movie was rad! // Positive
What a horrible show! //
```

Output:

```plaintext
Negative
```

We still get the correct answer, even though the labels have been randomized. Note that we also kept the format, which helps too. In fact, with further experimentation, it seems the newer GPT models we are experimenting with are becoming more robust to even random formats. 

Prompt:

```plaintext
Positive This is awesome! 
This is bad! Negative
Wow that movie was rad!
Positive
What a horrible show! --
```

Output:

```plaintext
Negative
```

There is no consistency in the format above but the model still predicted the correct label. We have to conduct a more thorough analysis to confirm if this holds for different and more complex tasks, including different variations of prompts.

## Limitations

Standard few-shot prompting works well for many tasks but is still not a perfect technique, especially when dealing with more complex reasoning tasks. Let's demonstrate why this is the case. 

It seems like few-shot prompting is not enough to get reliable responses for this type of reasoning problem. The example above provides basic information on the task. If you take a closer look, the type of task we have introduced involves a few more reasoning steps. In other words, it might help if we break the problem down into steps and demonstrate that to the model. More recently, [chain-of-thought (CoT) prompting](https://arxiv.org/abs/2201.11903) has been popularized to address more complex arithmetic, commonsense, and symbolic reasoning tasks.

Overall, it seems that providing examples is useful for solving some tasks. When zero-shot prompting and few-shot prompting are not sufficient, it might mean that whatever was learned by the model isn't enough to do well at the task. From here it is recommended to start thinking about fine-tuning your models or experimenting with more advanced prompting techniques. Up next we talk about one of the popular prompting techniques called chain-of-thought prompting which has gained a lot of popularity.


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