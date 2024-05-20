---
creation_date: 2024-04-04
modification_date: 2024-04-04
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Topic/Dev
  - Topic/Dev/Python
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
> - *[ChainLit (github.com)](https://github.com/Chainlit)*
> - *[Overview - Chainlit](https://docs.chainlit.io/get-started/overview)*
> - *[Chainlit/cookbook: Chainlit's cookbook repo](https://github.com/Chainlit/cookbook)*
> - *[Literal AI - Evaluate, Improve & Monitor LLM applications](https://getliteral.ai/)*

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
- [[Tool - Python Langchain|LangChain]]
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

2. Write Application Logic: In `app.py`, import the Chainlit package and define a function that will handle incoming messages from the chatbot UI. Decorate the function with the `@cl.on_message` decorator to ensure it gets called whenever a user inputs a message.

Here’s the basic structure of the script:

```python
import chainlit as cl

@cl.on_message
async def main(message: cl.Message):
    # Your custom logic goes here...

    # Send a response back to the user
    await cl.Message(
        content=f"Received: {message.content}",
    ).send()
```

The `main` function will be called every time a user inputs a message in the chatbot UI. You can put your custom logic within the function to process the user’s input, such as analyzing the text, calling an API, or computing a result.

The [Message](https://docs.chainlit.io/api-reference/message) class is responsible for sending a reply back to the user. In this example, we simply send a message containing the user’s input.

3. Run Application Locally: To start your Chainlit app, open a terminal and navigate to the directory containing `app.py`. Then run the following command:

```python
chainlit run app.py -w
```

The `-w` flag tells Chainlit to enable auto-reloading, so you don’t need to restart the server every time you make changes to your application. Your chatbot UI should now be accessible at [http://localhost:8000](http://localhost:8000/).

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