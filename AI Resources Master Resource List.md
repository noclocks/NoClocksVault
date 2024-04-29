---
creation_date: 2024-04-29
modification_date: 2024-04-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/List
  - Topic/AI
  - Topic/Dev
  - Status/WIP
aliases:
  - AI Resources
  - AI Resources Master Resource List
  - AI Resources List
publish: true
permalink:
description:
image:
cssclasses:
---

# AI Resources Master Resource List

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - *[Related resources from around the web | OpenAI Cookbook](https://cookbook.openai.com/articles/related_resources)*

> [!NOTE]
> Items with a ⭐ are "favorites" or "recommended" resources. 

> [!NOTE]
> All lists are displayed in alphabetical order.

- Libraries & Tools
- Guides
- Videos
- Papers

## Diagram

```mermaid
graph LR
  promptinglibs[Prompting Libraries & Tools]
  promptingguides[Prompting Guides]

promptinglibs
promptinguides
```

## Prompt Engineering

### Libraries & Tools

| Name                                                         | Note | Rating | Description                                                  |
| ------------------------------------------------------------ | ---- | ------ | ------------------------------------------------------------ |
| [Arthur Shield](https://www.arthur.ai/get-started)           |      | `N/A`  | A paid product for detecting toxicity, hallucination, prompt injection, etc. |
| [Baserun](https://baserun.ai/)                               |      | `N/A`  | A paid product for testing, debugging, and monitoring LLM-based apps |
| [Chainlit](https://docs.chainlit.io/overview)                | [[Tool - Python Chainlit\|Chainlit]]     | ⭐⭐     | A Python library for making chatbot interfaces.              |
| [Embedchain](https://github.com/embedchain/embedchain)       | [[Tool - Python Embedchain\|Embedchain]]     | ⭐⭐     | A Python library for managing and syncing unstructured data with LLMs. |
| [FLAML](https://microsoft.github.io/FLAML/docs/Getting-Started/) |      | `N/A`  | A Python library for automating selection of models, hyperparameters, and other tunable choices. |
| [Guardrails.ai](https://shreyar.github.io/guardrails/)       |      | `N/A`  | A Python library for validating outputs and retrying failures. Still in alpha. |
| [Guidance](https://github.com/microsoft/guidance)            |      | `N/A`  | A Python library from Microsoft using Handlebars templating. |
| [Haystack](https://github.com/deepset-ai/haystack)           |      | `N/A`  | Open-source LLM orchestration framework.                     |
| [HoneyHive](https://honeyhive.ai/)                           |      | `N/A`  | An enterprise platform to evaluate, debug, and monitor LLM apps. |
| [LangChain](https://github.com/hwchase17/langchain)          | [[Tool - Langchain\|Langchain]]     | ⭐⭐⭐    | A popular Python/JavaScript library for chaining language model prompts. |
| [LiteLLM](https://github.com/BerriAI/litellm)                |      | `N/A`  | A minimal Python library for calling LLM APIs.               |
| [LlamaIndex](https://github.com/jerryjliu/llama_index)       | [[Tool - Python LlamaIndex|LlamaIndex]]     | ⭐⭐⭐    | A Python library for augmenting LLM apps with data.          |
| [LMQL](https://lmql.ai/)                                     |      | `N/A`  | A programming language for LLM interaction with various supports. |
| [OpenAI Evals](https://github.com/openai/evals)              |      | `N/A`  | An open-source library for evaluating language models and prompts. |
| [Outlines](https://github.com/normal-computing/outlines)     |      | `N/A`  | A Python library for simplifying prompting and constraining generation. |
| [Parea AI](https://www.parea.ai/)                            |      | `N/A`  | A platform for debugging, testing, and monitoring LLM apps.  |
| [Portkey](https://portkey.ai/)                               |      | `N/A`  | A platform for observability and management in LLM apps.     |
| [Promptify](https://github.com/promptslab/Promptify)         |      | ⭐      | A small Python library for using language models in NLP tasks. |
| [PromptPerfect](https://promptperfect.jina.ai/prompts)       |      | ⭐      | A paid product for testing and improving prompts.            |
| [Prompttools](https://github.com/hegelai/prompttools)        |      | ⭐⭐     | Open-source Python tools for testing and evaluating models.  |
| [Scale Spellbook](https://scale.com/spellbook)               |      | ⭐⭐⭐    | A paid product for building and shipping language model apps. |
| [Semantic Kernel](https://github.com/microsoft/semantic-kernel) |      | `N/A`  | A library from Microsoft supporting prompt templating and more. |
| [Vellum](https://www.vellum.ai/)                             |      | `N/A`  | A paid AI product development platform for LLM apps.         |
| [Weights & Biases](https://wandb.ai/site/solutions/llmops)   |      | `N/A`  | A paid product for tracking model training and prompt engineering. |
| [YiVal](https://github.com/YiVal/YiVal)                      |      | `N/A`  | An open-source GenAI-Ops tool for tuning and evaluating prompts and more. |


### Guides

- [Brex's Prompt Engineering Guide](https://github.com/brexhq/prompt-engineering): Brex's introduction to language models and prompt engineering.
- [learnprompting.org](https://learnprompting.org/): An introductory course to prompt engineering.
- [Lil'Log Prompt Engineering](https://lilianweng.github.io/posts/2023-03-15-prompt-engineering/): An OpenAI researcher's review of the prompt engineering literature (as of March 2023).
- [OpenAI Cookbook: Techniques to improve reliability](https://cookbook.openai.com/articles/techniques_to_improve_reliability): A slightly dated (Sep 2022) review of techniques for prompting language models.
- [promptingguide.ai](https://www.promptingguide.ai/): A prompt engineering guide that demonstrates many techniques.
- [Xavi Amatriain's Prompt Engineering 101 Introduction to Prompt Engineering](https://amatriain.net/blog/PromptEngineering) and [202 Advanced Prompt Engineering](https://amatriain.net/blog/prompt201): A basic but opinionated introduction to prompt engineering and a follow up collection with many advanced methods starting with CoT.

### Academic Papers



## Conclusion

***

## Appendix

*Note created on [[2024-04-29]] and last modified on [[2024-04-29]].*

### Backlinks

```dataview
LIST FROM [[AI Resources Master List]] AND -"CHANGELOG" AND -"//AI Resources Master List"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
