---
creation_date: 2024-04-26
modification_date: 2024-04-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/WIP
aliases:
  - Ops - GitOps
publish: true
permalink:
description:
image:
cssclasses:
---

# GitOps

> [!SOURCES]
> - *https://chat.openai.com/share/e/a955d598-0600-4d89-8cf2-94093b144d83*

![](https://i.imgur.com/afhC2q6.png)


> [!NOTE]
> **GitOps** is a paradigm or a set of practices that emphasizes using [[Tool - Git|Git]] as a single source of truth for declarative infrastructure and applications. In the GitOps model, [[Tool - Git|Git]] not only serves as the source control system but also as the central hub where all changes for infrastructure and applications are versioned and from which they are automatically applied and rolled out to the production environment.

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Key Principles

Here are the key principles and benefits of GitOps:

1. **Version Control:** Everything required to run your system—configuration files, environment specifications, and deployment scripts—is stored in a Git repository. This approach means every change is versioned and auditable.
    
2. **Automation:** GitOps relies heavily on automated tools to ensure that the state of your actual system matches the desired state described in your Git repository. This automation typically involves continuous integration and continuous deployment (CI/CD) pipelines.
    
3. **Immutability:** In GitOps, changes are made in a way that avoids direct manipulation of the state in the production environment. Instead, you update the Git repository, which triggers a process to apply these changes in an immutable way.
    
4. **Observability:** By integrating monitoring and logging tools, GitOps allows you to track the performance and health of your applications and infrastructure. Any discrepancies between the desired state stored in Git and the actual state of your system can be automatically flagged and addressed.
    
5. **Rollbacks and Quick Recovery:** Since all changes are stored in Git, you can quickly revert to a previous configuration if a new change leads to failure, thereby reducing downtime.
    

GitOps is particularly popular with [[Tool - Kubernetes|Kubernetes]] management, where it helps manage complex deployments and maintain consistency across large-scale systems through code. This approach not only enhances security and compliance but also improves productivity and stability by reducing manual intervention and errors.



***

## Appendix

*Note created on [[2024-04-26]] and last modified on [[2024-04-26]].*

### Backlinks

```dataview
LIST FROM [[Ops - GitOps]] AND -"CHANGELOG" AND -"03-AREAS/Operations/Ops - GitOps"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
