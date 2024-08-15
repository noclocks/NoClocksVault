---
creation_date: 2024-08-15
modification_date: 2024-08-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Python
  - Status/WIP
aliases:
  - Netscape Converter
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Netscape Converter

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
> - *https://github.com/jhh/netscape-bookmark-converter/tree/master*

## Code

```python
#!/usr/bin/env python
#
# Convert browser bookmark export (NETSCAPE-Bookmark-file-1 format) to json
#
from argparse import ArgumentParser
from bs4 import BeautifulSoup
import json

parser = ArgumentParser(description='Convert Netscape bookmarks to JSON')
parser.add_argument(dest='filenames', metavar='filename', nargs='+')
parser.add_argument('-t', '--tag', metavar='tag', dest='tags',
                    action='append', help='add tag to bookmarks, repeat \
                                           for multiple tags')
args = parser.parse_args()

for filename in args.filenames:
    soup = BeautifulSoup(open(filename, encoding='utf8'), "html5lib")
    for link in soup.find_all('a'):
        bookmark = {}
        # url and title
        bookmark['url'] = link.get('href')
        bookmark['title'] = link.string.strip() if link.string\
                                                else bookmark['url']
        # tags
        tags = link.get('tags')
        bookmark['tags'] = tags.split(',') if tags else []
        if args.tags:
            bookmark['tags'] += args.tags
        # comment
        sibling = link.parent.next_sibling
        bookmark['comment'] = \
            sibling.string.strip() if sibling and sibling.name == 'dd' \
        else ''
        print(json.dumps(bookmark, sort_keys=False, indent=4))
```

## Details

Requirements:

```plaintext
beautifulsoup4==4.4.1
html5lib==0.999999999
six==1.10.0
```

## See Also

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python]]
- [[Tool - Python Flask]]


***

## Appendix

*Note created on [[2024-08-15]] and last modified on [[2024-08-15]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Python - Netscape Converter]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Netscape Converter"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024