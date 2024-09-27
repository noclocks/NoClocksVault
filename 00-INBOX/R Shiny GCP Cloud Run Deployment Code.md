---
creation_date: 2024-08-15
modification_date: 2024-08-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/WIP
aliases:
  - R Shiny GCP Cloud Run Deployment Code
publish: true
permalink:
description:
image:
cssclasses:
---


# R Shiny GCP Cloud Run Deployment Code

> [!SOURCE] Sources:
> - **

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Install `gcloud` CLI



```sh
mkdir temp && cd temp
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-linux-x86_64.tar.gz
tar -xf google-cloud-cli-linux-x86_64.tar.gz

./google-cloud-sdk/install.sh

omz reload
```

```sh
gcloud components update
```

```sh
gcloud init
gcloud config list
```

```sh
gcloud artifacts repositories create shiny-server-repo --repository-format=docker --description="Docker Repo for Shiny Server" --location=us-east1
gcloud artifacts repositories list
```

```sh
gcloud auth configure-docker us-east1-docker.pkg.dev
```


```sh
docker tag rocker/shiny:latest us-east1-docker.pkg.dev/noclocks-default-project/shiny-server-repo/rocker-shiny:latest
docker push us-east1-docker.pkg.dev/noclocks-default-project/shiny-server-repo/rocker-shiny:latest
```

```sh
gcloud run deploy shiny-dashboard --concurrency=1 --memory=2Gi --platform=managed --region=us-east1 --allow-unauthenticated --port 3838 --image=us-east1-docker.pkg.dev/noclocks-default-project/shiny-server-repo/rocker-shiny:latest
```


## Appendix

*Note created on [[2024-08-15]] and last modified on [[2024-08-15]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[R Shiny GCP Cloud Run Deployment Code]] AND -"CHANGELOG" AND -"00-INBOX/R Shiny GCP Cloud Run Deployment Code"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024