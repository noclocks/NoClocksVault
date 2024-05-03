---
creation_date: 2024-05-03
modification_date: 2024-05-03
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Bash
  - Type/Code/Shell
  - Topic/Dev
  - Topic/Dev/Linux
  - Topic/Dev/Bash
  - Topic/Dev/Shell
  - Topic/Dev/Docker
  - Status/WIP
aliases:
  - Bash Install Docker Compose Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Install Docker Compose Bash Code

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
> - *[Install Docker Engine on Ubuntu | Docker Docs](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)*
> - *https://get.docker.com/*
> - *[Install latest version of Docker Compose](https://gist.github.com/deviantony/2b5078fe1675a5fedabf1de3d1f2652a)*
> - *[budibase/hosting/scripts/linux/install-docker-compose.sh at master · Budibase/budibase](https://github.com/Budibase/budibase/blob/master/hosting/scripts/linux/install-docker-compose.sh)*

## Code Snippet

```bash
#!/usr/bin/env bash

# apt update
sudo apt-get update

# apt install dependencies
sudo apt-get install -y ca-certificates curl

# install keyrings
sudo install -m 0755 -d /etc/apt/keyrings

# add docker official gpg key
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# add repository to apt sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# apt update
sudo apt-get update

# apt install docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# verify docker installation
sudo docker --version
```


## See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code Snippets]]
- [[Linux]], [[Tool - Ubuntu|Ubuntu]], [[Tool - Kali Linux|Kali Linux]]
- [[Tool - Zsh|Zsh]]
- [[MOC - Development|Development Map of Content]]
- [[Tool - WSL|Windows Sub-System for Linux (WSL)]]
- [[Tool - Docker|Docker]], [[Tool - Docker Compose|Docker Compose]], [[Tool - DockerHub|DockerHub]]
- [[Dockerized Projects]]
- [[Docker Init Command]]

***

## Appendix

*Note created on [[2024-05-03]] and last modified on [[2024-05-03]].*

### Backlinks

```dataview
LIST FROM [[Bash - Install Docker Compose]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Bash/Bash - Install Docker Compose"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024