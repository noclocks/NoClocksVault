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
> Diving deep into the core of an LLM-based AI agent, we find it’s structured much like a human, with distinct components akin to personality, memory, thought process, and abilities. Let’s break these down.

Anatomy of an Agent from the Agent Landscape Survey:

![](https://i.imgur.com/DywBVZp.png)

### Profile

Humans naturally adapt our mindset based on the tasks we're tackling, whether it's writing, cooking, or playing sports. Similarly, agents can be conditioned or "profiled" to specialize in specific tasks.

The profile of an agent is it's personality, mindset, and high-level instructions. Research indicates that merely informing an agent that it's an expert in a certain domain can boost its performance.

|**Potential Applications of Profiling**|**Description**|
|---|---|
|**Prompt Engineering**|Tailoring agent prompts for better results.|
|**Memory Adjustments**|Modifying how an agent recalls or prioritizes information.|
|**Action Selection**|Influencing the set of actions an agent might consider.|
|**Driving Mechanism**|Potentially tweaking the underlying large language model (LLM) that powers the agent.|

#### Example Agent Profile: Weather Expert

- **Profile Name:** Weather Specialist
- **Purpose:** Provide detailed and accurate weather information.
- **Preferred Memory Sources:** Meteorological databases, recent weather news, and scientific journals.
- **Action Set:** Fetching weather data, analyzing weather patterns, and providing forecasts.
- **Base Model Tweaks:** Prioritize meteorological terminology and understanding.

### Memory

Just as our memories shape our decisions, reactions, and identities, an agent's memory is the cornerstone of its identity and capabilities. Memory is fundamental for an agent to learn and adapt. At a high level, agents possess two core types of memories: long-term and short-term.

||**Long-Term Memory**|**Short-Term (Working) Memory**|
|---|---|---|
|**Purpose**|Serves as the agent's foundational knowledge base.|Handles recent or transient memories, much like our recollection of events from the past few days.|
|**What it Stores**|Historical data and interactions that have taken place over extended periods.|Immediate experiences and interactions.|
|**Role**|Guides the agent's core behaviors and understanding, acting as a vast reservoir of accumulated knowledge.|Essential for real-time tasks and decision-making. Not all these memories transition into long-term storage.|

### Planning

Planning is essential for agents to systematically tackle challenges, mirroring how humans break down complex problems into smaller tasks.

#### **1. What is Planning?**

- **Concept:** It's the agent's strategy for problem-solving, ensuring solutions are both comprehensive and systematic.
- **Human Analogy:** Just like humans split challenges into smaller, more manageable tasks, agents adopt a similar methodical approach.

#### **2. Key Planning Strategies**

|**Strategy**|**Description**|
|---|---|
|**Planning with Feedback**|An adaptive approach where agents refine their strategy based on outcomes, similar to iterative design processes.|
|**Planning without Feedback**|The agent acts as a strategist, using only its existing knowledge. It's like playing chess, anticipating challenges and planning several moves ahead.|

### Action

After the introspection of memory and the strategizing of planning, comes the finale: **Action**.

This is where the agent’s cognitive processes manifest into tangible outcomes using the agents abilities. 

Every decision, every thought, culminates in the action phase, translating abstract concepts into definitive results. Whether it’s penning a response, saving a file, or initiating a new process, the action component is the culmination of the agent’s decision-making journey. It’s the bridge between digital cognition and real-world impact, turning the agent’s electronic impulses into meaningful and purposeful outcomes.

Example of how a basic agent works:

![](https://i.imgur.com/vUpfWhE.png)


## The Agent Protocol: The Linguistics of AI Communication

After diving deep into the anatomy of an agent, understanding its core components, there emerges a pivotal question: **How do we effectively communicate with these diverse, intricately-designed agents?**

The answer lies in the **Agent Protocol**.

### Understanding the Agent Protocol

At its essence, the Agent Protocol is a standardized communication interface, a universal “language” that every AI agent, regardless of its underlying structure or design, can comprehend.

Think of it as the diplomatic envoy that ensures smooth conversations between agents and their developers, tools, or even other agents.

In an ecosystem where every developer might have their unique approach to crafting agents, the Agent Protocol acts as a unifying bridge. It’s akin to a standardized plug fitting into any socket or a universal translator decoding myriad languages.

## AutoGPT Forge: A Peek Inside the LLM Agent Template

Now we understand the architecture of an agent lets look inside the Forge. It’s a well-organized template, meticulously architected to cater to the needs of agent developers.

#### Forge’s Project Structure: A Bird’s-Eye View