---
creation_date: 2024-05-20
modification_date: 2024-05-20
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Python
  - Topic/Dev
  - Topic/Dev/Python
  - Topic/Dev/Python
  - Status/WIP
aliases:
  - Webmail Login Script Python Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Webmail Login Script Python Code

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
> - *[basic\_scripts/webmail login.py at main · tbels89/basic\_scripts](https://github.com/tbels89/basic_scripts/blob/main/webmail%20login.py)*

## Code

**Dependencies**:
- `selenium`
- `chromedriver`

```python
#pip install selenium, chromedriver 

# automatically login to webmail using chrome and selenium 

import time
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

username1 = 'your email address'
password1 = 'your email password' 

class Browser:
    browser, service = None, None

    def __init__(self, driver: str):
        self.service = Service(driver)
        self.browser = webdriver.Chrome(service=self.service)

    def open_page(self, url: str):
        self.browser.get(url)

    """def close_browser(self):
        self.browser.close()"""

    def add_input(self, by: By, value: str, text: str):
        field = self.browser.find_element(by=by, value=value)
        field.send_keys(text)
        time.sleep(2)

    def click_button(self, by: By, value: str):
        button = self.browser.find_element(by=by, value=value)
        button.click()
        time.sleep(2)

    def login_email(self, username: str, password: str):
        self.add_input(by=By.ID, value='rcmloginuser', text=username)
        self.add_input(by=By.ID, value='rcmloginpwd', text=password)
        self.click_button(by=By.ID, value='rcmloginsubmit')

if __name__ == '__main__':
    browser = Browser('chromedriver_linux64/chromedriver') #where chromedriver is located 

    browser.open_page('https://website.com/login') # login page to open
    time.sleep(3)

    browser.login_email(username=username1, password=password1)
    time.sleep(10)
```

## Details

This script is generic and utilizes the [[Uniform Resource Loader (URL)|URL]] `https://website.com/login` as an example.

## See Also

- [[MOC - Python|Python Map of Content]]
- [[04-RESOURCES/Code/Python/_README|Python Code]]
- [[Tool - Python]]
- [[Tool - Python Flask]]


***

## Appendix

*Note created on [[2024-05-20]] and last modified on [[2024-05-20]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Python - Webmail Login Script]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Python/Python - Webmail Login Script"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024