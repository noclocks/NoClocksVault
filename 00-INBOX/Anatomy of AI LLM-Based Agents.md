---
creation_date: 2024-04-10
modification_date: 2024-04-10
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/AI
  - Status/WIP
aliases:
  - Anatomy of AI LLM-Based Agents
publish: true
permalink:
description:
image: "https://i.imgur.com/M1GE4CO.png"
cssclasses:
---

# Anatomy of LLM-Based Agents

> [!SOURCE] Sources:
> - *[AutoGPT/autogpts/forge/tutorials/002_blueprint_of_an_agent.md at master · Significant-Gravitas/AutoGPT (github.com)](https://github.com/Significant-Gravitas/AutoGPT/blob/master/autogpts/forge/tutorials/002_blueprint_of_an_agent.md)*

## Overview

> [!NOTE]
> *Overview Notes*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## What are LLM-Based AI Agents?

Before we add logic to our new agent, we have to understand **what an agent actually is**.

[[Large Language Models (LLMs)]] are *state-of-the-art [[machine learning]] models that harness vast amounts of web knowledge*. But what happens when you give the [[LLM]] the ability to use tools based on it's output? You get LLM-based [[AI]] agents — a new breed of [[artificial intelligence]] that promises more human-like decision-making in the real world.

Traditional [[autonomous]] agents operated with limited knowledge, often confined to specific tasks or environments. They were like calculators — efficient but limited to predefined functions. LLM-based agents, on the other hand don’t just compute; they understand, reason, and then act, drawing from a vast reservoir of information.

## The Anatomy of an Agent

> [!NOTE]
> Diving deep into the core of an LLM-based AI agent, we find it’s structured much like a human, with distinct components akin to personality, memory, thought process, and abilities. Let’s break these down:

