---
creation_date: 2024-04-29
modification_date: 2024-04-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Prompt
  - Topic/AI
  - Topic/Dev
  - Status/WIP
aliases:
  - Prompt Generator Prompt
  - Prompt Generator
publish: true
permalink:
description:
image:
cssclasses:
---


# Prompt Generator Prompt

## Overview

Generate [[04-RESOURCES/Prompts/_README|Prompts]] from a prompt.

## Prompt

```plaintext
I want you to act as a prompt generator.

Firstly, I will give you a title like this: "Act as a {{Actor}}". 

Then you give me a prompt like this: "I want you to act as a ...

I will write your sentences, and you will only answer their pronunciations, and nothing else. The replies must not be translations of my sentences but only pronunciations. Pronunciations should use Turkish Latin letters for phonetics. Do not write explanations on replies. My first sentence is "how the weather is in Istanbul?"." (You should adapt the sample prompt according to the title I gave. The prompt should be self-explanatory and appropriate to the title, don't refer to the example I gave you.). My first title is "Act as a Code Review Helper" (Give me prompt only)
```

