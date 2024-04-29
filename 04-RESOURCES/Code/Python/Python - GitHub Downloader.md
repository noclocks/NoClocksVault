---
creation_date: 2024-04-25
modification_date: 2024-04-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Python
  - Status/WIP
aliases:
  - GitHub Downloader Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# GitHub Downloader Python Code

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
> - *[auth-py/scripts/gh-download.py at main · supabase-community/auth-py](https://github.com/supabase-community/auth-py/blob/main/scripts/gh-download.py)*
> - *https://gist.github.com/pdashford/2e4bcd4fc2343e2fd03efe4da17f577d*

## Code

```python
"""
Downloads folders from github repo
Requires PyGithub
pip install PyGithub
"""

import base64
import getopt
import os
import shutil
import sys
from typing import Optional

from github import Github, GithubException
from github.ContentFile import ContentFile
from github.Repository import Repository


def get_sha_for_tag(repository: Repository, tag: str) -> str:
    """
    Returns a commit PyGithub object for the specified repository and tag.
    """
    branches = repository.get_branches()
    matched_branches = [match for match in branches if match.name == tag]
    if matched_branches:
        return matched_branches[0].commit.sha

    tags = repository.get_tags()
    matched_tags = [match for match in tags if match.name == tag]
    if not matched_tags:
        raise ValueError("No Tag or Branch exists with that name")
    return matched_tags[0].commit.sha


def download_directory(repository: Repository, sha: str, server_path: str) -> None:
    """
    Download all contents at server_path with commit tag sha in
    the repository.
    """
    if os.path.exists(server_path):
        shutil.rmtree(server_path)

    os.makedirs(server_path)
    contents = repository.get_dir_contents(server_path, ref=sha)

    for content in contents:
        print(f"Processing {content.path}")
        if content.type == "dir":
            os.makedirs(content.path)
            download_directory(repository, sha, content.path)
        else:
            try:
                path = content.path
                file_content = repository.get_contents(path, ref=sha)
                if not isinstance(file_content, ContentFile):
                    raise ValueError("Expected ContentFile")
                with open(content.path, "w+") as file_out:
                    if file_content.content:
                        file_data = base64.b64decode(file_content.content)
                        file_out.write(file_data.decode("utf-8"))
            except (GithubException, OSError, ValueError) as exc:
                print("Error processing %s: %s", content.path, exc)


def usage():
    """
    Prints the usage command lines
    """
    print("usage: gh-download --repo=repo --branch=branch --folder=folder")


def main(argv):
    """
    Main function block
    """
    try:
        opts, _ = getopt.getopt(argv, "r:b:f:", ["repo=", "branch=", "folder="])
    except getopt.GetoptError as err:
        print(err)
        usage()
        sys.exit(2)
    repo: Optional[str] = None
    branch: Optional[str] = None
    folder: Optional[str] = None
    for opt, arg in opts:
        if opt in ("-r", "--repo"):
            repo = arg
        elif opt in ("-b", "--branch"):
            branch = arg
        elif opt in ("-f", "--folder"):
            folder = arg

    if not repo:
        print("Repo is required")
        usage()
        sys.exit(2)
    if not branch:
        print("Branch is required")
        usage()
        sys.exit(2)
    if not folder:
        print("Folder is required")
        usage()
        sys.exit(2)

    github = Github(None)
    repository = github.get_repo(repo)
    sha = get_sha_for_tag(repository, branch)
    download_directory(repository, sha, folder)


if __name__ == "__main__":
    """
    Entry point
    """
    main(sys.argv[1:])
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

*Note created on [[2024-04-25]] and last modified on [[2024-04-25]].*

### Backlinks

```dataview
LIST FROM [[Python - GitHub Downloader]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - GitHub Downloader"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024