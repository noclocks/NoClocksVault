---
creation_date: 2024-04-23
modification_date: 2024-04-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/AppsScript
  - Topic/Dev
  - Status/WIP
aliases:
  - AppsScript - Extract Data from Invoice File
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Extract Data from Invoice File with AppsScript

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Code

```javascript
function queryDocumentAI(bytes,contentType){
  const url = 'https://us-documentai.googleapis.com/v1/projects/123456789:process';
  const encoded = Utilities.base64Encode(bytes);
  let body = {
  "skipHumanReview": true,
  "fieldMask": "entities",
  "rawDocument": {
    "content": encoded,
    "mimeType": contentType
    } 
  }
  var param = {
    method      : "POST",
    headers     : {"Authorization": "Bearer " + ScriptApp.getOAuthToken()},
    "contentType" : "application/json",
      "payload":JSON.stringify(body, null, 2),
    muteHttpExceptions:true,
  };
  var txt = UrlFetchApp.fetch(url,param).getContentText();
  return JSON.parse(txt)
}
```

