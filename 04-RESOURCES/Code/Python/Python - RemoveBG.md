---
creation_date: 2024-08-22
modification_date: 2024-08-22
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Python
  - Status/WIP
aliases:
  - RemoveBG Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# RemoveBG Python Code

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
> - *[cropcircles/dev/scripts/removebg.py at main · doehm/cropcircles (github.com)](https://github.com/doehm/cropcircles/blob/main/dev/scripts/removebg.py)*

## Code

- [removebg.py](https://github.com/doehm/cropcircles/blob/main/dev/scripts/removebg.py)

```python
import requests

def call_remove_bg(api_key, image, to):
  response = requests.post(
      'https://api.remove.bg/v1.0/removebg',
      files={'image_file': open(image, 'rb')},
      data={'size': 'auto'},
      headers={'X-Api-Key': api_key},
  )
  if response.status_code == requests.codes.ok:
      with open(to, 'wb') as out:
          out.write(response.content)
  else:
      print("Error:", response.status_code, response.text)
  
if isinstance(r.images, list): 
  img_ls = r.images
  img_to = r.to
else:
  img_ls = [r.images]
  img_to = [r.to]
  
for k in range(0,len(img_ls)):
  print(img_ls[k])
  call_remove_bg(api_key = r.api_key, image = img_ls[k], to = img_to[k])
```

## See Also

- [[R - Call RemoveBG From Python]]

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python]]
- [[Tool - Python Flask]]


***

## Appendix

*Note created on [[2024-08-22]] and last modified on [[2024-08-22]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Python - RemoveBG]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - RemoveBG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024