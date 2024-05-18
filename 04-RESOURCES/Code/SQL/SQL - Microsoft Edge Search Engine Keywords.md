---
creation_date: 2024-05-10
modification_date: 2024-05-10
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/SQL
  - Topic/Dev
  - Topic/Dev/Data
  - Topic/Dev/SQL
  - Status/WIP
aliases:
  - Microsoft Edge Search Engine Keywords SQL Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Microsoft Edge Search Engine Keywords SQL Code

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

## Overview

> [!NOTE] About
> This note is about ...

## Code

- `tbl-keywords.sql`:

```sql
DROP TABLE IF NOT EXISTS keywords;
CREATE TABLE keywords (
    id INTEGER PRIMARY KEY,
    short_name VARCHAR NOT NULL,
    keyword VARCHAR NOT NULL,
    favicon_url VARCHAR NOT NULL,
    url VARCHAR NOT NULL,
    safe_for_autoreplace INTEGER,
    originating_url VARCHAR,
    date_created INTEGER DEFAULT 0,
    usage_count INTEGER DEFAULT 0,
    input_encodings VARCHAR,
    suggest_url VARCHAR,
    prepopulate_id INTEGER DEFAULT 0,
    created_by_policy INTEGER DEFAULT 0,
    last_modified INTEGER DEFAULT 0,
    sync_guid VARCHAR,
    alternate_urls VARCHAR,
    image_url VARCHAR,
    search_url_post_params VARCHAR,
    suggest_url_post_params VARCHAR,
    image_url_post_params VARCHAR,
    new_tab_url VARCHAR,
    last_visited INTEGER DEFAULT 0,
    created_from_play_api INTEGER DEFAULT 0,
    is_active INTEGER DEFAULT 0,
    starter_pack_id INTEGER DEFAULT 0
);
```

```python
import sqlite3

def insert_keyword(db_path, keyword_data):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    sql = '''
    INSERT INTO keywords
    (id, short_name, keyword, favicon_url, url, safe_for_autoreplace, originating_url, date_created, usage_count, input_encodings, suggest_url, prepopulate_id, created_by_policy, last_modified, sync_guid, alternate_urls, image_url, search_url_post_params, suggest_url_post_params, image_url_post_params, new_tab_url, last_visited, created_from_play_api, is_active, starter_pack_id)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    '''

    cursor.execute(sql, keyword_data)
    conn.commit()
    cursor.close()
    conn.close()

# Example usage
keyword_data = (2, 'Bing', 'bing.com', 'https://www.bing.com/sa/simg/bing_p_rr_teal_min.ico', '{bing:baseURL}search?q={searchTerms}&{bing:cvid}{bing:msb}{google:assistedQueryStats}', 1, None, 0, 0, 'UTF-8', '{bing:baseURL}qbox?query={searchTerms}&language={language}&{bing:partner}{bing:cvid}{bing:msb}{bing:ig}{google:inputType}{google:cursorPosition}{google:pageClassification}{bing:features}{bing:flights}', 1, 0, 0, '485bf7d3-0215-45af-87dc-538868000001', '[]', '{bing:baseURL}images/detail/search?iss=sbiupload&FORM=ANCMS1#enterInsights', None, None, 'imageBin={google:imageThumbnailBase64}', '{bing:baseURL

```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - Technology|Technology Map of Content]]
- [[MOC - Development|Development Map of Content]]
- [[MOC - Databases|Databases Map of Content]]
- [[Tool - PostgreSQL|PostgreSQL]]
- [[Tool - Microsoft SQL Server|Microsoft SQL Server]]
- [[04-RESOURCES/Code/SQL/_README|SQL Code]]

***

## Appendix

*Note created on [[2024-05-10]] and last modified on [[2024-05-10]].*

### Backlinks

```dataview
LIST FROM [[SQL - Microsoft Edge Search Engine Keywords]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/SQL/SQL - Microsoft Edge Search Engine Keywords"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024