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
- [[Tool - Python Flask-Limiter]]

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
@app.route('/')
@cache.cached(timeout=50)
def index():
    return render_template('index.html')
```

### Flask-Limiter

This extension brings easy rate-limiting to your applications using application-wide limits and route-based limits using simple decorators. [Flask-Limiter](https://github.com/alisaifee/flask-limiter) can be configured to use any of the many supported backends to store rate-limiting data. Here’s how you could rate limit a Flask route with a one-line decorator:

```python
@app.route("/")
@limiter.limit("1 per minute")
def index():
    return render_template('index.html')
```

### Flask-Dance

[Flask-Dance](https://github.com/singingwolfboy/flask-dance) is an extension that allows your users to login to your application using any of the extension’s supported OAuth providers, including Facebook, Google, Twitter, Discord, and many others. You can also create custom configurations to use a custom OAuth provider, though that will take a little more setup time. This extension is a little bit more complex than those above, but much less headache than trying to configure OAuth yourself.

```python

```

### Flask2Postman

Postman is a very popular platform for building and testing APIs. One of the most common use cases for Postman is for testing the individual routes and endpoints in a web application. The [Flask2Postman](https://github.com/numberly/flask2postman) extension will automatically generate a Postman collection with test cases for each of the Flask routes in a given program. These generated test cases will include your docstring descriptions, routes, and HTTP method types.

### Flask-S3

Amazon’s Simple Storage Service (S3) is one of the most common object storage services in use. This Flask extension will serve static assets directly from your S3 storage, reducing or eliminating the need for large, expensive cache. Rather than pulling files from the server’s filesystem, [Flask-S3](https://github.com/e-dard/flask-s3) overrides Flask’s url_for() function to pull files directly from your S3 storage.

### Flask-Headers

```python
pip install flask-headers
```

```python
@app.route("/")
@headers({'Cache-Control':'public, max-age=30'})
def cacheable():
    return '''<h1>Hello Flask-Headers!</h1> Checkout my documentation
on <a href="https://github.com/wcdolphin/flask-headers">Github</a>'''
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