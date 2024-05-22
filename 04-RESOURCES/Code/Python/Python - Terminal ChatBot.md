---
creation_date: 2024-05-20
modification_date: 2024-05-20
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Python
  - Status/WIP
aliases:
  - Terminal ChatBot Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Terminal ChatBot Python Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - *[custom\_chatbots/chat\_in\_terminal.py at main · tbels89/custom\_chatbots](https://github.com/tbels89/custom_chatbots/blob/main/chat_in_terminal.py)*

## Code

**Dependencies**:
- `langchain`
- `openai`
- [[Tool - OpenAI|OpenAI]] API Key

```python
import os

from langchain.document_loaders import DirectoryLoader
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain.embeddings.openai import OpenAIEmbeddings
from langchain.vectorstores import Chroma
from langchain.chat_models import ChatOpenAI
from langchain.chains import RetrievalQA

def chatbot(user_input):    
    input_list = [] 
    result_list = []
    #full_conversation = [] #uncomment this line if you're tracking the full conversation and uncomment the section below 
    print("\nWelcome to your chatbot demo!\nType 'q' to quit.\n")
    while True:
        user_input = input("\nUser: ")
        if user_input == 'q':
            break
        input_list.append(f'User question: {user_input}') 

        # setup OpenAI API environment and model using OS
        api_key = os.environ['OPENAI_API_KEY'] = 'YOUR_API_KEY'
        llm = ChatOpenAI(
            model_name="gpt-3.5-turbo",
            temperature=0.1,
            max_tokens=1900,
            n=1,
            openai_api_key=api_key)

        # load data
        directory_path = "./data"
        loader = DirectoryLoader(directory_path, glob='**/*.txt')
        data = loader.load()
            
        # printing checks for how much data loaded 
        #print(f'Loaded {len(data)} documents')

        # turn data into chukns and create embeddings
        text_splitter = RecursiveCharacterTextSplitter(chunk_size=1000, chunk_overlap=0)
        split_data = text_splitter.split_documents(data)
        embeddings = OpenAIEmbeddings(openai_api_key=api_key)
        vector_data = Chroma.from_documents(split_data, embeddings)
        
        # initialize model
        qa = RetrievalQA.from_chain_type(llm=llm, chain_type="stuff", retriever=vector_data.as_retriever())

        # query model and print results
        query = user_input
        result = qa({"query":query})
        print(f"\nBot: {result['result']}\n")
        result_list.append(f"Chatbot: {result['result']}")

        # uncomment to track full conversation history in the terminal
        """full_conversation.extend([input_list[-1], result_list[-1]])
        print(f'Here is the full conversation:\n******************{full_conversation}*************************\n')"""

# run program
user_input = []
chatbot(user_input)
```

## Details

> [!NOTE] About
> Custom chatbot allowing users to query on their documents or anything generally. Runs from within the terminal.

## See Also

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python]]
- [[Tool - Python Flask]]


***

## Appendix

*Note created on [[2024-05-20]] and last modified on [[2024-05-20]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Python - Terminal ChatBot]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Terminal ChatBot"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024