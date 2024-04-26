---
creation_date: 2024-04-26
modification_date: 2024-04-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Python
  - Status/WIP
aliases:
  - Local LLM RAG Pipeline Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Local LLM RAG Pipeline Python Code

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
> - **

![](https://i.imgur.com/z5vsqst.png)


## Code

### App

- `src/app.py`:

```python
import os
import streamlit as st
from model import ChatModel
import rag_util


FILES_DIR = os.path.normpath(
    os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "files")
)


st.title("LLM Chatbot RAG Assistant")


@st.cache_resource
def load_model():
    model = ChatModel(model_id="google/gemma-2b-it", device="cuda")
    return model


@st.cache_resource
def load_encoder():
    encoder = rag_util.Encoder(
        model_name="sentence-transformers/all-MiniLM-L12-v2", device="cpu"
    )
    return encoder


model = load_model()  # load our models once and then cache it
encoder = load_encoder()


def save_file(uploaded_file):
    """helper function to save documents to disk"""
    file_path = os.path.join(FILES_DIR, uploaded_file.name)
    with open(file_path, "wb") as f:
        f.write(uploaded_file.getbuffer())
    return file_path


with st.sidebar:
    max_new_tokens = st.number_input("max_new_tokens", 128, 4096, 512)
    k = st.number_input("k", 1, 10, 3)
    uploaded_files = st.file_uploader(
        "Upload PDFs for context", type=["PDF", "pdf"], accept_multiple_files=True
    )
    file_paths = []
    for uploaded_file in uploaded_files:
        file_paths.append(save_file(uploaded_file))
    if uploaded_files != []:
        docs = rag_util.load_and_split_pdfs(file_paths)
        DB = rag_util.FaissDb(docs=docs, embedding_function=encoder.embedding_function)


# Initialize chat history
if "messages" not in st.session_state:
    st.session_state.messages = []

# Display chat messages from history on app rerun
for message in st.session_state.messages:
    with st.chat_message(message["role"]):
        st.markdown(message["content"])

# Accept user input
if prompt := st.chat_input("Ask me anything!"):
    # Add user message to chat history
    st.session_state.messages.append({"role": "user", "content": prompt})
    # Display user message in chat message container
    with st.chat_message("user"):
        st.markdown(prompt)

    # Display assistant response in chat message container
    with st.chat_message("assistant"):
        user_prompt = st.session_state.messages[-1]["content"]
        context = (
            None if uploaded_files == [] else DB.similarity_search(user_prompt, k=k)
        )
        answer = model.generate(
            user_prompt, context=context, max_new_tokens=max_new_tokens
        )
        response = st.write(answer)
    st.session_state.messages.append({"role": "assistant", "content": answer})
```

### Model

- `src/model.py`:

```python

```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python]]
- [[Tool - Python Flask]]


***

## Appendix

*Note created on [[2024-04-26]] and last modified on [[2024-04-26]].*

### Backlinks

```dataview
LIST FROM [[Python - Local LLM RAG Pipeline]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Local LLM RAG Pipeline"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024