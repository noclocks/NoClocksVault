---
creation_date: 2024-04-29
modification_date: 2024-04-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Python
  - Status/WIP
aliases:
  - Embedchain API Server Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Embedchain API Server Python Code

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
> - *[embedchain/examples/api\_server at main · embedchain/embedchain](https://github.com/embedchain/embedchain/tree/main/examples/api_server)*

This is a [[MOC - Python|Python]] and [[Tool - Docker|Docker]] template to create your own [[Application Programming Interface (API)|API]] Server using the [[Tool - Python Embedchain|Embedchain]] package. To know more about the API Server and how to use it, go [here](https://docs.embedchain.ai/examples/api_server).

## Code

### Structure

```plaintext

```

### API Server

- `server.py`

```python
import logging

from flask import Flask, jsonify, request

from embedchain import App

app = Flask(__name__)


logger = logging.getLogger(__name__)


@app.route("/add", methods=["POST"])
def add():
    data = request.get_json()
    data_type = data.get("data_type")
    url_or_text = data.get("url_or_text")
    if data_type and url_or_text:
        try:
            App().add(url_or_text, data_type=data_type)
            return jsonify({"data": f"Added {data_type}: {url_or_text}"}), 200
        except Exception:
            logger.exception(f"Failed to add {data_type=}: {url_or_text=}")
            return jsonify({"error": f"Failed to add {data_type}: {url_or_text}"}), 500
    return jsonify({"error": "Invalid request. Please provide 'data_type' and 'url_or_text' in JSON format."}), 400


@app.route("/query", methods=["POST"])
def query():
    data = request.get_json()
    question = data.get("question")
    if question:
        try:
            response = App().query(question)
            return jsonify({"data": response}), 200
        except Exception:
            logger.exception(f"Failed to query {question=}")
            return jsonify({"error": "An error occurred. Please try again!"}), 500
    return jsonify({"error": "Invalid request. Please provide 'question' in JSON format."}), 400


@app.route("/chat", methods=["POST"])
def chat():
    data = request.get_json()
    question = data.get("question")
    if question:
        try:
            response = App().chat(question)
            return jsonify({"data": response}), 200
        except Exception:
            logger.exception(f"Failed to chat {question=}")
            return jsonify({"error": "An error occurred. Please try again!"}), 500
    return jsonify({"error": "Invalid request. Please provide 'question' in JSON format."}), 400


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=False)
```

### Docker

- `Dockerfile`:

```dockerfile
FROM python:3.11 AS backend

WORKDIR /usr/src/api
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENV FLASK_APP=api_server.py

ENV FLASK_RUN_EXTRA_FILES=/usr/src/api/*
ENV FLASK_ENV=development

CMD ["flask", "run", "--host=0.0.0.0", "--reload"]
```

- `compose.yml`:

```yaml
services:
  backend:
    container_name: embedchain_api
    restart: unless-stopped
    build:
      context: .
      dockerfile: Dockerfile
    env_file:
      - variables.env
    ports:
      - "5000:5000"
    volumes:
      - .:/usr/src/api
```

### Environment

- `.env`:

```plaintext
OPEN_API_KEY=""
```

- `requirements.txt`:

```plaintext
flask
embedchain
```


# See Also

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python]]
- [[Tool - Python Flask]]
- [[Tool - Python Embedchain|Embedchain]]
- [[Docker]]
- [[Docker Compose]]


***

## Appendix

*Note created on [[2024-04-29]] and last modified on [[2024-04-29]].*

### Backlinks

```dataview
LIST FROM [[Python - Embedchain API Server]] AND -"CHANGELOG" AND -"//Python - Embedchain API Server"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024