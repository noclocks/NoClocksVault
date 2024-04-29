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
I want you to act as a prompt generator. Firstly, I will give you a title like this: "Act as an English Pronunciation Helper". Then you give me a prompt like this: "I want you to act as an English pronunciation assistant for Turkish speaking people. I will write your sentences, and you will only answer their pronunciations, and nothing else. The replies must not be translations of my sentences but only pronunciations. Pronunciations should use Turkish Latin letters for phonetics. Do not write explanations on replies. My first sentence is "how the weather is in Istanbul?"." (You should adapt the sample prompt according to the title I gave. The prompt should be self-explanatory and appropriate to the title, don't refer to the example I gave you.). My first title is "Act as a Code Review Helper" (Give me prompt only)
```

**Example User Prompt**:

```python
import Random
    a = random.randint(1,12)
    b = random.randint(1,12)
    for i in range(10):
        question = "What is "+a+" x "+b+"? "
        answer = input(question)
        if answer = a*b
            print (Well done!)
        else:
            print("No.")
```

**Example Response**:

```plaintext
There are several bugs in the provided code:

1. The import statement is incorrect. Python is case-sensitive, so "Random" should be "random".
2. Variables `a` and `b` are defined outside the loop, so they will not change for each iteration. They should be inside the loop if you want to generate different questions.
3. In the question string, `a` and `b` are integers, so you need to convert them to strings using the `str()` function to concatenate them.
4. In the if statement, you are using a single equals sign `=` which is an assignment operator. You should use the double equals sign `==` for comparison.
5. The print statement "Well done!" is not enclosed in quotes. In Python, strings must be enclosed in quotes.
6. The input from the user is a string, so you need to convert it to an integer using the `int()` function before comparing it with the product of `a` and `b`.

Here is the corrected code:

```python
import random
for i in range(10):
    a = random.randint(1,12)
    b = random.randint(1,12)
    question = "What is "+ str(a) +" x "+ str(b) +"? "
    answer = int(input(question))
    if answer == a*b:
        print ("Well done!")
    else:
        print("No.")
```

**API Request**:

> [!CODE]- View [[MOC - Python|Python]] Code:
> ```python
> from openai import OpenAI
> client = OpenAI()
>
> response = client.chat.completions.create(
>  model="gpt-4",
>   messages=[
>     {
>       "role": "system",
>       "content": "You will be provided with a piece of Python code, and your task is to find and fix bugs in it."
>     },
>     {
>       "role": "user",
>       "content": "import Random\n    a = random.randint(1,12)\n    b = random.randint(1,12)\n    for i in range(10):\n        question = \"What is \"+a+\" x \"+b+\"? \"\n        answer = input(question)\n        if answer = a*b\n            print (Well done!)\n        else:\n            print(\"No.\")"
>     }
>   ],
>   temperature=0.7,
>   max_tokens=64,
>   top_p=1
> )
> ```

> [!CODE]- View [[Tool - Curl|cURL]] Code:
> ```bash
> curl https://api.openai.com/v1/chat/completions \
>   -H "Content-Type: application/json" \
>   -H "Authorization: Bearer $OPENAI_API_KEY" \
>   -d '{
>   "model": "gpt-4",
>   "messages": [
>     {
>       "role": "system",
>       "content": "You will be provided with a piece of Python code, and your task is to find and fix bugs in it."
>     },
>     {
>       "role": "user",
>       "content": "import Random\n    a = random.randint(1,12)\n    b = random.randint(1,12)\n    for i in range(10):\n        question = \"What is \"+a+\" x \"+b+\"? \"\n        answer = input(question)\n        if answer = a*b\n            print (Well done!)\n        else:\n            print(\"No.\")"
>     }
>   ],
>   "temperature": 0.7,
>   "max_tokens": 64,
>   "top_p": 1
> }'
> ```

> [!CODE]- View [[JavaScript Object Notation (JSON)|JSON]]:
> ```json
> {
>   "model": "gpt-4",
>   "messages": [
>     {
>       "role": "system",
>       "content": "You will be provided with a piece of Python code, and your task is to find and fix bugs in it."
>     },
>     {
>       "role": "user",
>       "content": "import Random\n    a = random.randint(1,12)\n    b = random.randint(1,12)\n    for i in range(10):\n        question = \"What is \"+a+\" x \"+b+\"? \"\n        answer = input(question)\n        if answer = a*b\n            print (Well done!)\n        else:\n            print(\"No.\")"
>     }
>   ],
>   "temperature": 0.7,
>   "max_tokens": 64,
>   "top_p": 1
> }
