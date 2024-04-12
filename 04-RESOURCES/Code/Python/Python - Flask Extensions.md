---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Python
  - Status/WIP
aliases:
  - Flask Extensions Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Flask Extensions Python Code

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

- [[Tool - Python Flask-WTF|Flask-WTF]]
- [[Tool - Python Flask-SQLAlchemy|Flask-SQLAlchemy]]
- [[Tool - Python Flask-Login|Flask-Login]]
- [[Tool - Python Flask-Mail|Flask-Mail]]
- [[Tool - Python Flask-DB|Flask-DB]]
- [[Tool - Python Flask-Security|Flask-Security]]
- [[Tool - Python Flask-CORS|Flask-CORS]]
- [[Tool - Python Flask-Caching|Flask-Caching]]
- [[Tool - Python Flask-RESTful|Flask-RESTful]]
- [[Tool - Python Flask-RESTX|Flask-RESTX]]
- [[Tool - Python Flask-Admin|Flask-Admin]]
- [[Tool - Python Flask-DebugToolbar|Flask-DebugToolbar]]
- [[Tool - Python Flask-MonitoringDashboard|Flask-MonitoringDashboard]]
- [[Tool - Python Flask-SocketIO]]
- 

## Code

### Flask-SocketIO

[[Tool - SocketIO|SocketIO]] is a popular real-time event-driven library for web applications. Normally, [[Tool - Python Flask|Flask]] supports standard [[HTTP]] communication between the server and clients, but this library allows you to write [[Tool - SocketIO|SocketIO]] events in a [[Tool - Python Flask|Flask]]-like syntax. [Flask-SocketIO](https://github.com/miguelgrinberg/Flask-SocketIO) supports the use of both standard HTTP routes and SocketIO events on the same server in a really simple way.

Installation:

```python
# pip
pip install Flask-SocketIO

# poetry
poetry install Flask-SocketIO
```

Basic Usage:

```python
@app.route('/')
def index():
    return render_template('index.html')

@socketio.on('event name')
def socketio_event(message):
    emit('response', {'message': 'Hello, world'})
```

### Flask-CORS

> [!SOURCE] Sources:
> - *https://github.com/corydolphin/flask-cors*

[[Cross-Origin Resource Sharing (CORS)]] allows the use of cross-origin [[Asynchronous JavaScript and XML (AJAX)]] for your web applications. This super simple to use extension enables CORS across your site in just a few lines. Here’s all you’ll need to do to enable CORS with [this extension](https://github.com/corydolphin/flask-cors):

Installation:

```python
# pip
pip install Flask-CORS

# poetry
poetry install Flask-CORS
```

Basic Usage:

```python
from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
CORS(app)
```

Advanced Usage (using [[Flask application factory pattern]]):

```python
from flask import Flask
from flask_cors import CORS


def create_app(config: dict = None) -> Flask:
    """Application Factory for the Flask app.
    
    :param config: Configuration for the Flask app.
    :type config: dict
    
    :return: Flask app.    
    """
    
    app = Flask(__name__)
    CORS(app)

    from . import routes
    app.register_blueprint(routes.bp)

    return app
```

### Flask-Caching

One of the best ways to increase the performance of your webserver is to cache the data. [Flask-Caching](https://github.com/pallets-eco/flask-caching) introduces a super easy way to cache your views and pages based on route, and it also has built in support for a few different cache backends. Here’s how easily you could cache the results of a (static) Flask route for 50 seconds using Flask-Caching:

```python

```

### Flask-WTF

## See Also

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python]]
- [[Tool - Python Flask]]


***

## Appendix

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[Python - Flask Extensions]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Flask Extensions"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024