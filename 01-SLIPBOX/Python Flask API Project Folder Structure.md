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


```plaintext
<root>
├───config/
│   ├───config.testing.ini
│   ├───config.production.ini
│   └───config.development.ini
├───src/
│   ├───controllers/
│   ├───infra/
│   ├───middlewares/
│   ├───models/
│   ├───routes/
│   ├───schemas/
│   ├───__init__.py
│   ├───__main__.py
│   ├───app.py
│   ├───defaults
│   └───instances
├───contexts
│   └───meta
```

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

results in the following models in `src/app/infra/config/models.py`:

```python
# src/app/infra/config/models.py
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

as well as the following parser in `src/app/infra/config/parser.py`:

```python
# src/app/infra/config/parsers.py
import configparser
import os

from src.app.infra.config.models import (
    AppConfig,
    Config,
    DatabaseConfig,
)


DEFAULT_CONFIG_PATH: str = "./config/local.ini"


def load_config(path: str | None = None) -> Config:
    if path is None:
        path = os.getenv("CONFIG_PATH", DEFAULT_CONFIG_PATH)

    parser = configparser.ConfigParser()
    parser.read(path)

    application_data, database_data = parser["application"], parser["database"]

    application_config = AppConfig(
        debug=application_data.getboolean("debug"),
        major_version=application_data.getint("major_version"),
        minor_version=application_data.getint("minor_version"),
        patch_version=application_data.getint("patch_version"),
    )
    database_config = DatabaseConfig(
        host=database_data.get("host"),
        port=database_data.getint("port"),
        database=database_data.get("database"),
        user=database_data.get("user"),
        password=database_data.get("password"),
        echo=database_data.getboolean("echo"),
    )

    return Config(application_config, database_config)
```

To configure logging in `src/app/infra/log/main.py`:

```python
# src/app/infra/log/main.py
import logging

from src.app.infra.config.models import AppConfig
from src.app.infra.log.formatters import MainConsoleFormatter


DEFAULT_LOGGING_LEVEL: int = logging.INFO


def configure_logging(config: AppConfig) -> None:
    logging_level: int = logging.DEBUG if config.debug else DEFAULT_LOGGING_LEVEL

    console_handler = logging.StreamHandler()
    console_handler.setLevel(logging_level)
    console_handler.setFormatter(MainConsoleFormatter())

    logging.basicConfig(handlers=[console_handler], level=logging_level)
```

with the following formatter in `src/app/infra/log/formatters.py`:

```python
# src/app/infra/log/formatters.py
import logging


class MainConsoleFormatter(logging.Formatter):
    GREY = "\x1b[38;20m"
    GREEN = "\x1b[32;20m"
    YELLOW = "\x1b[33;20m"
    RED = "\x1b[31;20m"
    RESET = "\x1b[0m"
    FORMAT = "%(asctime)s - %(levelname)s - %(message)s"

    FORMATS = {
        logging.DEBUG: GREY + FORMAT + RESET,
        logging.INFO: GREEN + FORMAT + RESET,
        logging.WARNING: YELLOW + FORMAT + RESET,
        logging.ERROR: RED + FORMAT + RESET,
        logging.CRITICAL: RED + FORMAT + RESET,
    }

    def format(self, record):
        log_fmt = self.FORMATS.get(record.levelno)
        formatter = logging.Formatter(log_fmt)
        return formatter.format(record)
```

And, finally we have database package that holds migrations and [[alembic]] config with the `session_maker` factory:

```python
# src/app/infra/database/session.py  
from sqlalchemy import create_engine  
from sqlalchemy.orm.session import sessionmaker  
  
  
def create_session_maker(database_url: str) -> sessionmaker:  
    engine = create_engine(  
        database_url,  
        echo=True,  
        pool_size=15,  
        max_overflow=15,  
        connect_args={  
            "connect_timeout": 5,  
        },  
    )  
    return sessionmaker(engine, autoflush=False, expire_on_commit=False)
```

So, this part of the application will be almost similar for any design pattern. Let’s move to the one of the most popular and easy one.

## Model View Controller (MVC)

[MVC](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) is a well-known software design pattern. Its main advantage is its simplicity; it is intuitive even for beginners. We are going to create a simple template so MVC will meet all our needs for small size projects.

If we look at MVC implementation in other languages, we will see that there are other layers besides model, view and controller. For example, Spring MVC (Java) offers us following project layout.

![](https://i.imgur.com/ReTAzDc.png)

As you can see, there are some layers besides MVC. There:

- View is our presentation for the client.
- Controller is our endpoint that calls the necessary services and returns view to client.
- Service is a layer, that holds all the business logic/rules.
- DAO (Data Access Object) is a persistence layer, that holds all interactions with the database through the models.

From the following diagram, we can conclude that MVC is a 3-layered architecture, which can also have more than three layers (persistence, services, etc.).

As for Flask, we can also divide our application into 3 layers:

- Models — SQLAlchemy ORM models.
- View — our route that will call the necessary Controller.
- Controller is our business logic holder, that will manipulate the models and return the proper result.

But we gonna simplify Spring’s vision of MVC and do not separate a Services and DAO layers.

### Model Example

```python
# src/app/models/user.py
from sqlalchemy.orm import Mapped, mapped_column

from .base import CreatedUpdatedAtMixin


class User(CreatedUpdatedAtMixin):
    __tablename__ = "users"

    id: Mapped[int] = mapped_column(primary_key=True)
    username: Mapped[str | None] = mapped_column(unique=True)
    first_name: Mapped[str]
    last_name: Mapped[str]
```

with base model configuration and mixin:

```python
# src/app/models/base.py
import datetime

from sqlalchemy import func, MetaData
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column, registry


convention = {
    "ix": "ix_%(column_0_label)s",  # INDEX
    "uq": "uq_%(table_name)s_%(column_0_N_name)s",  # UNIQUE
    "ck": "ck_%(table_name)s_%(constraint_name)s",  # CHECK
    "fk": "fk_%(table_name)s_%(column_0_N_name)s_%(referred_table_name)s",  # FOREIGN KEY
    "pk": "pk_%(table_name)s",  # PRIMARY KEY
}

mapper_registry = registry(metadata=MetaData(naming_convention=convention))


class BaseModel(DeclarativeBase):
    registry = mapper_registry
    metadata = mapper_registry.metadata


class CreatedUpdatedAtMixin(BaseModel):
    """
    A model mixin that adds `created_at` and `updated_at` timestamp fields
    """
    __abstract__ = True

    created_at: Mapped[datetime.datetime] = mapped_column(
        nullable=False,
        server_default=func.now()
    )
    updated_at: Mapped[datetime.datetime] = mapped_column(
        nullable=False,
        server_default=func.now(),
        onupdate=func.now(),
    )
```

### Views Example

```python
# src/app/routes/user.py
from flask import Blueprint, g

from src.app.controllers.users import UserController

user_blueprint = Blueprint("user", __name__, url_prefix="/users")


@user_blueprint.route("/")
def list_users():
    session = g.session
    users_list = UserController(session).list_users()
    return [user.model_dump(mode="json") for user in users_list]
```

To avoid global variables, we should register blueprints like that (in package `__init__.py` module)

```python
# src/app/routes/__init__.py
from flask import Flask

from .user import user_blueprint


def register(app: Flask) -> None:
    app.register_blueprint(user_blueprint)
```

### Controller Example:

```python
# src/app/controllers/user.py
from pydantic import TypeAdapter
from sqlalchemy import select

from src.app.models.user import User as UserModel
from src.app.schemas.user import User as UserSchema

from .base import Controller


class UserController(Controller[UserModel]):

    # some operations with the user
    def list_users(self) -> list[UserSchema]:
        stmt = select(UserModel)
        result = self.session.scalars(stmt.order_by(UserModel.id)).fetchall()
        return TypeAdapter(list[UserSchema]).validate_python(result)
```

with such generic Controller (just to reduce code duplication):

```python
# src/app/controllers/base.py
from typing import Generic, TypeVar

from sqlalchemy.orm.session import Session

from src.app.models.base import BaseModel


Model = TypeVar("Model", bound=BaseModel)


class Controller(Generic[Model]):

    def __init__(self, session: Session):
        self.session = session
        self.model: type[Model] = type(Model)

    # some base operations
    # Note: controller needs to also provide de(serialization),
    # or it can be imported from the separate layer
    def get(self, pk: int) -> Model:
        return self.session.get(self.model, pk)
```