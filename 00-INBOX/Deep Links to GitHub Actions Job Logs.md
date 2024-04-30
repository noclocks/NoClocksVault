---
creation_date: 2024-04-30
modification_date: 2024-04-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev
  - Topic/Dev/GitHub
  - Status/WIP
aliases:
  - Deep Links to GitHub Actions Job Logs
publish: true
permalink:
description:
image:
cssclasses:
---


# Deep Links to GitHub Actions Job Logs

> [!SOURCE] Sources:
> - *[Deep Links to GitHub Actions Job Logs • Chris Buckley](https://cmbuckley.co.uk/blog/2024/04/09/deep-links-to-github-actions-job-logs/)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

In [[Tool - GitHub Actions|GitHub Actions]], you can rather easily create a link to the current workflow run:

```plaintext
${{ github.server_url }}/${{ github.repository }}/actions/runs/${{ github.run_id }}
```

However, it’s not as easy to link to a specific job within that workflow run. The variable `${{` `github.job` `}}` says it contains a job ID, but in this case it means the key from your workflow:

```yaml
jobs:
  run_tests:
    name: Run Tests
    runs-on: ubuntu-latest
    steps:
      - run: echo ${{ github.job }} # outputs 'run_tests'
```

To link to the job logs, you can use the [GitHub CLI](https://cli.github.com/) which is available on all GitHub-hosted runners:

```yaml
jobs:
  run_tests:
    name: Run Tests
    runs-on: ubuntu-latest
    steps:
      - env:
          GH_TOKEN: ${{ github.token }}
        run: |
          gh run view ${{ github.run_id }} --json jobs --jq '
            .jobs[] | select(.name == "Run Tests") | .url'
```

You need to provide the `GH_TOKEN` environment variable for the CLI tool. If you’ve modified the default token permissions, you need at least read access to actions:

```yaml
permissions:
  actions: read
```

The CLI tool determines the repo from the current working directory. If you haven’t performed an `actions/checkout` step, or you are referencing a different repo, pass the relevant flag to the CLI tool:

```bash
gh -R ${{ github.repository }} run view ...
```

The [[Tool - JQ|JQ]] filter selects the job by name. If you don’t want to hardcode the job name, you need a further [[Application Programming Interface (API)|API]] call:

```bash
JOB_NAME=$(gh workflow view '${{ github.workflow }}' -r ${{ github.ref}} -y |
  yq eval .jobs.${{ github.job }}.name -)

gh run view ${{ github.run_id }} --json jobs --jq "
  .jobs[] | select(.name == \"$JOB_NAME\") | .url"
```

## Linking back to Pull Requests

This [[Uniform Resource Loader (URL)|URL]] can be useful when posting comments in a Pull Request. By default it doesn’t link to the PR, but you can add the `?pr` query string parameter to add a backlink:

```bash
gh run view ${{ github.run_id }} --json jobs --jq '
  .jobs[] | select(.name == "Run Tests") | (.url + "?pr=${{ github.event.number }}")'
```

![Section of the job page showing the job title and a 'back to pull request' link](https://cmbuckley.co.uk/files/2024/04/run-url-pr.png)

## Expanding the Logs for a Specific Step

Within the job there are a number of ordered steps. To expand the logs for a specific step, pass the `?check_suite_focus` query string param as well as a fragment like `#step:x:y`, corresponding to the step number and line number. The step number is based on the order, so you can use the API for that too:

```yaml
jobs:
  run_tests:
    name: Run Tests
    runs-on: ubuntu-latest
    steps:
      - name: Run Test Script
        run: make test

      - name: Get URL
        env:
          GH_TOKEN: ${{ github.token }}
        run: |
          gh run view ${{ github.run_id }} --json jobs --jq '
            .jobs[] | select(.name == "Run Tests")
            | (.url + (.steps[] | select(.name == "Run Test Script")
              | "?check_suite_focus#step:\(.number):1"))'
```

If you run this example, you might find that the URL step happens so quickly after the test step that the [[Application Programming Interface (API)|API]] response doesn’t contain the previous step’s result yet. You can either perform the API call a little later in the job, in a separate dependent job, or add a small `sleep` before calling the API.

_Inspired by [Grant G’s answer on Stack Overflow](https://stackoverflow.com/a/76681922/283078)._

***

## Appendix

*Note created on [[2024-04-30]] and last modified on [[2024-04-30]].*

### See Also

- [[Tool - GitHub|GitHub]]
- [[GitHub Actions for CICD]]

### Backlinks

```dataview
LIST FROM [[GitHub Actions Trick - Create Link to Current Workflow Run]] AND -"CHANGELOG" AND -"00-INBOX/GitHub Actions Trick - Create Link to Current Workflow Run"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

## Resources

***

## Appendix

*Note created on [[2024-04-30]] and last modified on [[2024-04-30]].*

### Backlinks

```dataview
LIST FROM [[Temp]] AND -"CHANGELOG" AND -"00-INBOX/Temp"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024