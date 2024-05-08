---
creation_date: 2024-05-08
modification_date: 2024-05-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Acronym
  - Topic/Dev
  - Topic/Dev/API
  - Status/Complete
aliases:
  - ASGI
  - Asynchronous Server Gateway Interface
publish: true
permalink:
description:
image:
cssclasses:
---

# Asynchronous Server Gateway Interface (ASGI)

> [!SOURCE] Sources:
> - *[ASGI Documentation — ASGI 3.0 documentation](https://asgi.readthedocs.io/en/latest/)*
> - *[django/asgiref: ASGI specification and utilities](https://github.com/django/asgiref)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> **ASGI** (*Asynchronous Server Gateway Interface*) is a successor to [[Web Server Gateway Interface (WSGI)]], intended to provide a standard interface between async-capable Python web servers, frameworks, and applications.

Where [[Web Server Gateway Interface (WSGI)|WSGI]] provided a standard for synchronous [[MOC - Python|Python]] apps, ASGI provides one for both asynchronous and synchronous apps, with a [[Web Server Gateway Interface (WSGI)|WSGI]] backwards-compatibility implementation and multiple servers and application frameworks.

## How does it work?

ASGI is structured as a single, asynchronous callable. It takes a `scope`, which is a `dict` containing details about the specific connection, `send`, an asynchronous callable, that lets the application send event messages to the client, and `receive`, an asynchronous callable which lets the application receive event messages from the client.

This not only allows multiple incoming events and outgoing events for each application, but also allows for a background coroutine so the application can do other things (such as listening for events on an external trigger, like a Redis queue).

In its simplest form, an application can be written as an asynchronous function, like this:

```python
async def application(scope, receive, send):
    event = await receive()
    ...
    await send({"type": "websocket.send", ...})
```

Every _event_ that you send or receive is a Python `dict`, with a predefined format. It’s these event formats that form the basis of the standard, and allow applications to be swappable between servers.

These _events_ each have a defined `type` key, which can be used to infer the event’s structure. Here’s an example event that you might receive from `receive` with the body from a HTTP request:

```json
{
    "type": "http.request",
    "body": b"Hello World",
    "more_body": False,
}
```

And here’s an example of an event you might pass to `send` to send an outgoing WebSocket message:

```json
{
    "type": "websocket.send",
    "text": "Hello world!",
}
```

## Specifications

> [!NOTE]
> See [Specifications — ASGI 3.0 documentation](https://asgi.readthedocs.io/en/latest/specs/index.html).

These are the specifications for ASGI. The root specification outlines how applications are structured and called, and the protocol specifications outline the events that can be sent and received for each protocol.

- [ASGI Specification](https://asgi.readthedocs.io/en/latest/specs/main.html)
    - [Abstract](https://asgi.readthedocs.io/en/latest/specs/main.html#abstract)
    - [Rationale](https://asgi.readthedocs.io/en/latest/specs/main.html#rationale)
    - [Overview](https://asgi.readthedocs.io/en/latest/specs/main.html#overview)
    - [Specification Details](https://asgi.readthedocs.io/en/latest/specs/main.html#specification-details)
    - [Version History](https://asgi.readthedocs.io/en/latest/specs/main.html#version-history)
    - [Copyright](https://asgi.readthedocs.io/en/latest/specs/main.html#copyright)
- [HTTP and WebSocket protocol](https://asgi.readthedocs.io/en/latest/specs/www.html)
    - [Spec Versions](https://asgi.readthedocs.io/en/latest/specs/www.html#spec-versions)
    - [HTTP](https://asgi.readthedocs.io/en/latest/specs/www.html#http)
    - [WebSocket](https://asgi.readthedocs.io/en/latest/specs/www.html#websocket)
    - [WSGI Compatibility](https://asgi.readthedocs.io/en/latest/specs/www.html#wsgi-compatibility)
    - [WSGI encoding differences](https://asgi.readthedocs.io/en/latest/specs/www.html#wsgi-encoding-differences)
    - [Version History](https://asgi.readthedocs.io/en/latest/specs/www.html#version-history)
    - [Copyright](https://asgi.readthedocs.io/en/latest/specs/www.html#copyright)
- [Lifespan](https://asgi.readthedocs.io/en/latest/specs/lifespan.html)
    - [Scope](https://asgi.readthedocs.io/en/latest/specs/lifespan.html#scope)
    - [Startup - `receive` event](https://asgi.readthedocs.io/en/latest/specs/lifespan.html#startup-receive-event)
    - [Startup Complete - `send` event](https://asgi.readthedocs.io/en/latest/specs/lifespan.html#startup-complete-send-event)
    - [Startup Failed - `send` event](https://asgi.readthedocs.io/en/latest/specs/lifespan.html#startup-failed-send-event)
    - [Shutdown - `receive` event](https://asgi.readthedocs.io/en/latest/specs/lifespan.html#shutdown-receive-event)
    - [Shutdown Complete - `send` event](https://asgi.readthedocs.io/en/latest/specs/lifespan.html#shutdown-complete-send-event)
    - [Shutdown Failed - `send` event](https://asgi.readthedocs.io/en/latest/specs/lifespan.html#shutdown-failed-send-event)
    - [Version History](https://asgi.readthedocs.io/en/latest/specs/lifespan.html#version-history)
    - [Copyright](https://asgi.readthedocs.io/en/latest/specs/lifespan.html#copyright)
- [TLS Extension](https://asgi.readthedocs.io/en/latest/specs/tls.html)
    - [The Base Protocol](https://asgi.readthedocs.io/en/latest/specs/tls.html#the-base-protocol)
    - [When to use this extension](https://asgi.readthedocs.io/en/latest/specs/tls.html#when-to-use-this-extension)
    - [TLS Connection Scope](https://asgi.readthedocs.io/en/latest/specs/tls.html#tls-connection-scope)
    - [Events](https://asgi.readthedocs.io/en/latest/specs/tls.html#events)
    - [Rationale (Informative)](https://asgi.readthedocs.io/en/latest/specs/tls.html#rationale-informative)
    - [Copyright](https://asgi.readthedocs.io/en/latest/specs/tls.html#copyright)

## Implementations

- [[Tool - Uvicorn]]

***

## Appendix

*Note created on [[2024-05-08]] and last modified on [[2024-05-08]].*

### Backlinks

```dataview
LIST FROM [[Asynchronous Server Gateway Interface (ASGI)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Acronyms/Asynchronous Server Gateway Interface (ASGI)"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024


