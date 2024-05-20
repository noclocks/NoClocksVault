---
creation_date: 2024-04-26
modification_date: 2024-04-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Python
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
import os
import torch
from transformers import AutoTokenizer, AutoModelForCausalLM, BitsAndBytesConfig
from dotenv import load_dotenv

load_dotenv()


CACHE_DIR = os.path.normpath(
    os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "models")
)


class ChatModel:
    def __init__(self, model_id: str = "google/gemma-2b-it", device="cuda"):

        ACCESS_TOKEN = os.getenv(
            "ACCESS_TOKEN"
        )  # reads .env file with ACCESS_TOKEN=<your hugging face access token>

        self.tokenizer = AutoTokenizer.from_pretrained(
            model_id, cache_dir=CACHE_DIR, token=ACCESS_TOKEN
        )
        quantization_config = BitsAndBytesConfig(
            load_in_4bit=True, bnb_4bit_compute_dtype=torch.bfloat16
        )

        self.model = AutoModelForCausalLM.from_pretrained(
            model_id,
            device_map="auto",
            quantization_config=quantization_config,
            cache_dir=CACHE_DIR,
            token=ACCESS_TOKEN,
        )
        self.model.eval()
        self.chat = []
        self.device = device

    def generate(self, question: str, context: str = None, max_new_tokens: int = 250):

        if context == None or context == "":
            prompt = f"""Give a detailed answer to the following question. Question: {question}"""
        else:
            prompt = f"""Using the information contained in the context, give a detailed answer to the question.
Context: {context}.
Question: {question}"""

        chat = [{"role": "user", "content": prompt}]
        formatted_prompt = self.tokenizer.apply_chat_template(
            chat,
            tokenize=False,
            add_generation_prompt=True,
        )
        print(formatted_prompt)
        inputs = self.tokenizer.encode(
            formatted_prompt, add_special_tokens=False, return_tensors="pt"
        ).to(self.device)
        with torch.no_grad():
            outputs = self.model.generate(
                input_ids=inputs,
                max_new_tokens=max_new_tokens,
                do_sample=False,
            )
        response = self.tokenizer.decode(outputs[0], skip_special_tokens=False)
        response = response[len(formatted_prompt) :]  # remove input prompt from reponse
        response = response.replace("<eos>", "")  # remove eos token

        return response
```

### RAG Utility

- `src/utils/rag.py`

```python
import os
from langchain_community.document_loaders import PyPDFLoader
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain_community.embeddings import HuggingFaceEmbeddings
from langchain_community.vectorstores import FAISS
from langchain_community.vectorstores.utils import DistanceStrategy
from transformers import AutoTokenizer


CACHE_DIR = os.path.normpath(
    os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "models")
)


class Encoder:
    def __init__(
        self, model_name: str = "sentence-transformers/all-MiniLM-L12-v2", device="cpu"
    ):
        self.embedding_function = HuggingFaceEmbeddings(
            model_name=model_name,
            cache_folder=CACHE_DIR,
            model_kwargs={"device": device},
        )


class FaissDb:
    def __init__(self, docs, embedding_function):
        self.db = FAISS.from_documents(
            docs, embedding_function, distance_strategy=DistanceStrategy.COSINE
        )

    def similarity_search(self, question: str, k: int = 3):
        retrieved_docs = self.db.similarity_search(question, k=k)
        context = "".join(doc.page_content + "\n" for doc in retrieved_docs)
        return context


def load_and_split_pdfs(file_paths: list, chunk_size: int = 256):
    loaders = [PyPDFLoader(file_path) for file_path in file_paths]
    pages = []
    for loader in loaders:
        pages.extend(loader.load())

    text_splitter = RecursiveCharacterTextSplitter.from_huggingface_tokenizer(
        tokenizer=AutoTokenizer.from_pretrained(
            "sentence-transformers/all-MiniLM-L12-v2"
        ),
        chunk_size=chunk_size,
        chunk_overlap=int(chunk_size / 10),
        strip_whitespace=True,
    )
    docs = text_splitter.split_documents(pages)
    return docs
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