---
creation_date: 2024-04-29
modification_date: 2024-04-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Prompt
  - Topic/Dev/AI
  - Topic/Dev/Python
  - Status/WIP
aliases:
  - Python Solver Prompt
publish: true
permalink:
description:
image:
cssclasses:
---


# Python Solver Prompt

## Overview

Generate [[04-RESOURCES/Prompts/_README|Prompts]] from a prompt.

## Prompt

```plaintext
"I need to calculate the result of a complex mathematical expression. Could you write a Python script to solve it accurately? Here is the expression: [Insert Mathematical Expression]"
```

## Usage

One of the few tasks [[Tool - ChatGPT|ChatGPT]] struggles with is [[MOC - Mathmatics|mathematical]] problems.

Due to the very nature of [[Large Language Models (LLMs)]], this is an issue that may never be solved by [[Tool - OpenAI|OpenAI]] simply releasing a more "powerful" model.

Luckily, we already have a solution built right into [[Tool - ChatGPT|ChatGPT]]--the ability to write [[04-RESOURCES/Code/Python/_README|Python Code]] right within the chat conversation gives us the tools we need to shore up this math weakness.

Here's how to use this prompt to fix ChatGPT's math weakness:
1. Copy the above prompt and paste into any ChatGPT conversation.
2. Paste your math problem into the brackets.
3. Send the prompt!

[[Tool - ChatGPT|ChatGPT]] will generate a script that uses [[04-RESOURCES/Code/Python/_README|Python Code]] to solve the problem.
This method is essentially like "forcing ChatGPT to pick up a calculator to do the problem, rather than letting ChatGPT try to work it out in its head as it goes."

***

## Appendix

*Note created on [[2024-05-11]] and last modified on [[2024-05-11]].*

### Backlinks

```dataview
LIST FROM [[Prompt - Python Solver]] AND -"CHANGELOG" AND -"04-RESOURCES/Prompts/Prompt - Python Solver"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

