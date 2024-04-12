---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Python
  - Topic/Python/Flask
  - Topic/API
  - Status/WIP
aliases:
  - Python Flask API Project Folder Structure
publish: true
permalink:
description:
image:
cssclasses:
---

# Python Flask API Project Folder Structure

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

## Application Entrypoint

- `src/app/__main__.py`:

```python
from flask import Flask

from src.app import middlewares, routes
from src.app.infra.config import load_config
from src.app.infra.log import configure_logging
from src.app.infra.database.session import create_session_maker

def main() -> Flask:
    config = load_config()
    configure_logging(config.app_config)
    session_maker = create_session_maker(config.db_config.full_url)

    app = Flask(__name__)

    middlewares.register(app, session_maker)
    routes.register(app)

    return app

def run():
    app = main()
    app.run("localhost", 5000)

if __name__ == "__main__":
    run()
```

The Flask application is not in the module scope, but it needs to be passed all the necessary modules and configurations. At first, the `infra` is setup (`config`, `logging`, etc.) and the SQLAlchemy `session_maker` is instantiated.

So for this configuration:

```toml
[application]
debug = true
major_version = 0
minor_version = 1
patch_version = 0

[database]
host = localhost
port = 5432
database = app
user = app_admin
password = app_admin
echo = true
```

results in the following models in `src/app/infra/`

```python
# src/app/infrastructure/config/models.py
from dataclasses import dataclass

@dataclass
class AppConfig:
    debug: bool
    major_version: int
    minor_version: int
    patch_version: int

@dataclass
class DatabaseConfig:
    host: str
    port: int
    database: str
    user: str
    password: str
    echo: bool

    # default values
    rdbms: str = "postgresql"
    connector: str = "psycopg"

    @property
    def full_url(self) -> str:
        return "{}+{}://{}:{}@{}:{}/{}".format(
            self.rdbms, self.connector,
            self.user, self.password,
            self.host, self.port, self.database
        )

@dataclass
class Config:
    app_config: AppConfig
    db_config: DatabaseConfig
```