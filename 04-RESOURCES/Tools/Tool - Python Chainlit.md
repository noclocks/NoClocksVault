---
creation_date: 2024-04-04
modification_date: 2024-04-04
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Topic/Dev
  - Topic/Python
  - Status/WIP
aliases:
  - Chainlit
publish: true
permalink:
description:
image:
cssclasses:
  - tool
---

# Chainlit

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
> - *[Overview - Chainlit](https://docs.chainlit.io/get-started/overview)*

Chainlit is an open-source [[MOC - Python|Python]] package to build production ready Conversational AI.

![[Video - Chainlit Demo.mp4]]

## Features

1. [Build fast:](https://docs.chainlit.io/examples/openai-sql) Integrate seamlessly with an existing code base or start from scratch in minutes
    
2. [Copilot:](https://docs.chainlit.io/deployment/copilot) Embed your chainlit app as a Software Copilot
    
3. [Data persistence:](https://docs.chainlit.io/data-persistence/overview) Collect, monitor and analyze data from your users
    
4. [Visualize multi-steps reasoning:](https://docs.chainlit.io/concepts/step) Understand the intermediary steps that produced an output at a glance
    
5. [Iterate on prompts:](https://docs.chainlit.io/advanced-features/prompt-playground) Deep dive into prompts in the Prompt Playground to understand where things went wrong and iterate

## Integrations

- [[Tool - OpenAI|OpenAI]] & [[Tool - OpenAI Assistant|OpenAI Assistant]]
- [[Tool - Langchain|LangChain]]
- [[Tool - Autogen|Autogen]]
- [[Tool - Python LlamaIndex|LlamaIndex]]
- [[Tool - Haystack|Haystack]]

## Custom Frontend

Chainlit comes with a [[Tool - ChatGPT|ChatGPT]] like [[Checklist - Frontend Design|Frontend Design|frontend]] that you can use out of the box. However, you can also build your own frontend and use Chainlit as a backend.

See [Chainlit - Custom React Frontend](https://github.com/Chainlit/cookbook/tree/main/custom-frontend) on [[Tool - GitHub|GitHub]].

## Installation

```shell
pip install chainlit
chainlit hello
```

## Usage

1. Create `app.py`: Create a new [[MOC - Python|Python]] file named `app.py` in your project directory. This file will contain the main logic for your [[Large Language Model (LLM)|LLM]] application.

```shell
touch app.py
```

2. Write application logic

```python

```

***

## Appendix

*Note created on [[2024-04-04]] and last modified on [[2024-04-04]].*

### Backlinks

- [[MOC - Python|Python MOC]]
- [[04-RESOURCES/Code/Python/_README|Python Code Snippets]]
- [[04-RESOURCES/Tools/_README|Tools]]
- [[Tool - OpenAI|OpenAI]]
- [[Tool - Python Streamlit|Streamlit]]
- [[Tool - Python Langchain|Langchain]]

```dataview
LIST FROM [[Tool - Python Chainlit]] AND -"CHANGELOG" AND -"04-RESOURCES/Tools/Tool - Python Chainlit"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024