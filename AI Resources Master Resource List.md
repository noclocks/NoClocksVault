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
| [LangChain](https://github.com/hwchase17/langchain)          | [[Tool - Langchain\Langchain]]     | ⭐⭐⭐    | A popular Python/JavaScript library for chaining language model prompts. |
| [LiteLLM](https://github.com/BerriAI/litellm)                |      | `N/A`  | A minimal Python library for calling LLM APIs.               |
| [LlamaIndex](https://github.com/jerryjliu/llama_index)       | [[Tool - llamaindex|L]]     | ⭐⭐⭐    | A Python library for augmenting LLM apps with data.          |
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


| Name             | Link                                                         | Note | Description                                                  | Rating |
| ---------------- | ------------------------------------------------------------ | ---- | ------------------------------------------------------------ | ------ |
| Arthur Shield    | [Arthur Shield](https://www.arthur.ai/get-started)           |      | A paid product for detecting toxicity, hallucination, prompt injection, etc. | `N/A`  |
| Baserun          | [Baserun](https://baserun.ai/)                               |      | A paid product for testing, debugging, and monitoring LLM-based apps | `N/A`  |
| Chainlit         | [Chainlit](https://docs.chainlit.io/overview)                |      | A Python library for making chatbot interfaces.              | ⭐⭐     |
| Embedchain       | [Embedchain](https://github.com/embedchain/embedchain)       |      | A Python library for managing and syncing unstructured data with LLMs. | ⭐⭐     |
| FLAML            | [FLAML](https://microsoft.github.io/FLAML/docs/Getting-Started/) |      | A Python library for automating selection of models, hyperparameters, and other tunable choices. | `N/A`  |
| Guardrails.ai    | [Guardrails.ai](https://shreyar.github.io/guardrails/)       |      | A Python library for validating outputs and retrying failures. Still in alpha. | `N/A`  |
| Guidance         | [Guidance](https://github.com/microsoft/guidance)            |      | A Python library from Microsoft using Handlebars templating. | `N/A`  |
| Haystack         | [Haystack](https://github.com/deepset-ai/haystack)           |      | Open-source LLM orchestration framework.                     | `N/A`  |
| HoneyHive        | [HoneyHive](https://honeyhive.ai/)                           |      | An enterprise platform to evaluate, debug, and monitor LLM apps. | `N/A`  |
| LangChain        | [LangChain](https://github.com/hwchase17/langchain)          |      | A popular Python/JavaScript library for chaining language model prompts. | ⭐⭐⭐    |
| LiteLLM          | [LiteLLM](https://github.com/BerriAI/litellm)                |      | A minimal Python library for calling LLM APIs.               | `N/A`  |
| LlamaIndex       | [LlamaIndex](https://github.com/jerryjliu/llama_index)       |      | A Python library for augmenting LLM apps with data.          | ⭐⭐⭐    |
| LMQL             | [LMQL](https://lmql.ai/)                                     |      | A programming language for LLM interaction with various supports. | `N/A`  |
| OpenAI Evals     | [OpenAI Evals](https://github.com/openai/evals)              |      | An open-source library for evaluating language models and prompts. | `N/A`  |
| Outlines         | [Outlines](https://github.com/normal-computing/outlines)     |      | A Python library for simplifying prompting and constraining generation. | `N/A`  |
| Parea AI         | [Parea AI](https://www.parea.ai/)                            |      | A platform for debugging, testing, and monitoring LLM apps.  | `N/A`  |
| Portkey          | [Portkey](https://portkey.ai/)                               |      | A platform for observability and management in LLM apps.     | `N/A`  |
| Promptify        | [Promptify](https://github.com/promptslab/Promptify)         |      | A small Python library for using language models in NLP tasks. | ⭐      |
| PromptPerfect    | [PromptPerfect](https://promptperfect.jina.ai/prompts)       |      | A paid product for testing and improving prompts.            | ⭐      |
| Prompttools      | [Prompttools](https://github.com/hegelai/prompttools)        |      | Open-source Python tools for testing and evaluating models.  | ⭐⭐     |
| Scale Spellbook  | [Scale Spellbook](https://scale.com/spellbook)               |      | A paid product for building and shipping language model apps. | ⭐⭐⭐    |
| Semantic Kernel  | [Semantic Kernel](https://github.com/microsoft/semantic-kernel) |      | A library from Microsoft supporting prompt templating and more. | `N/A`  |
| Vellum           | [Vellum](https://www.vellum.ai/)                             |      | A paid AI product development platform for LLM apps.         | `N/A`  |
| Weights & Biases | [Weights & Biases](https://wandb.ai/site/solutions/llmops)   |      | A paid product for tracking model training and prompt engineering. | `N/A`  |
| YiVal            | [YiVal](https://github.com/YiVal/YiVal)                      |      | An open-source GenAI-Ops tool for tuning and evaluating prompts and more. | `N/A`  |

- [Arthur Shield](https://www.arthur.ai/get-started): A paid product for detecting toxicity, hallucination, prompt injection, etc.
- [Baserun](https://baserun.ai/): A paid product for testing, debugging, and monitoring LLM-based apps
- ⭐ [Chainlit](https://docs.chainlit.io/overview): A Python library for making chatbot interfaces.
- ⭐ [Embedchain](https://github.com/embedchain/embedchain): A Python library for managing and syncing unstructured data with LLMs.
- [FLAML (A Fast Library for Automated Machine Learning & Tuning)](https://microsoft.github.io/FLAML/docs/Getting-Started/): A Python library for automating selection of models, hyperparameters, and other tunable choices.
- [Guardrails.ai](https://shreyar.github.io/guardrails/): A Python library for validating outputs and retrying failures. Still in alpha, so expect sharp edges and bugs.
- [Guidance](https://github.com/microsoft/guidance): A handy looking Python library from Microsoft that uses Handlebars templating to interleave generation, prompting, and logical control.
- [Haystack](https://github.com/deepset-ai/haystack): Open-source LLM orchestration framework to build customizable, production-ready LLM applications in Python.
- [HoneyHive](https://honeyhive.ai/): An enterprise platform to evaluate, debug, and monitor LLM apps.
- ⭐[LangChain](https://github.com/hwchase17/langchain): A popular Python/JavaScript library for chaining sequences of language model prompts.
- [LiteLLM](https://github.com/BerriAI/litellm): A minimal Python library for calling LLM APIs with a consistent format.
- [LlamaIndex](https://github.com/jerryjliu/llama_index): A Python library for augmenting LLM apps with data.
- [LMQL](https://lmql.ai/): A programming language for LLM interaction with support for typed prompting, control flow, constraints, and tools.
- [OpenAI Evals](https://github.com/openai/evals): An open-source library for evaluating task performance of language models and prompts.
- [Outlines](https://github.com/normal-computing/outlines): A Python library that provides a domain-specific language to simplify prompting and constrain generation.
- [Parea AI](https://www.parea.ai/): A platform for debugging, testing, and monitoring LLM apps.
- [Portkey](https://portkey.ai/): A platform for observability, model management, evals, and security for LLM apps.
- [Promptify](https://github.com/promptslab/Promptify): A small Python library for using language models to perform NLP tasks.
- [PromptPerfect](https://promptperfect.jina.ai/prompts): A paid product for testing and improving prompts.
- [Prompttools](https://github.com/hegelai/prompttools): Open-source Python tools for testing and evaluating models, vector DBs, and prompts.
- [Scale Spellbook](https://scale.com/spellbook): A paid product for building, comparing, and shipping language model apps.
- [Semantic Kernel](https://github.com/microsoft/semantic-kernel): A Python/C#/Java library from Microsoft that supports prompt templating, function chaining, vectorized memory, and intelligent planning.
- [Vellum](https://www.vellum.ai/): A paid AI product development platform to experiment with, evaluate, and deploy advanced LLM apps.
- [Weights & Biases](https://wandb.ai/site/solutions/llmops): A paid product for tracking model training and prompt engineering experiments.
- [YiVal](https://github.com/YiVal/YiVal): An open-source GenAI-Ops tool for tuning and evaluating prompts, retrieval configurations, and model parameters using customizable datasets, evaluation methods, and evolution strategies.



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
