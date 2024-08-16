---
creation_date: 2024-08-15
modification_date: 2024-08-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/JavaScript
  - Status/WIP
aliases:
  - JavaScript Manage Chromium Browser Experimental Flags Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Manage Chromium Browser Experimental Flags

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

> [!example] **Code Snippet Metadata**:
> - Date:: [[2024-08-15]]
> - Source: **
> - Language: [[MOC - JavaScript|JavaScript]]
> - Description:: ""

## Code Snippet

```javascript
// 2022-04-03, tested with Chrome 99.0.4844.84 on MacBook Pro m1
/*
  Open chrome://flags/
  F12 open developer console, swtich to tab "Console"
  Paste below codes
   - input backup() to download flags backup file
   - input restore() to select one backup to restore
*/

function saveFile(filename, data) {
  return new Promise(resolve => {
    const blob = new Blob([data], { type: 'octet/stream' });
    const url = window.URL.createObjectURL(blob);
    const dom = document.createElement('a');
    setTimeout(() => {
      dom.href = url;
      dom.download = filename;
      dom.dispatchEvent(new MouseEvent('click'));
      window.URL.revokeObjectURL(url);
      resolve();
    });
  });
}

function selectFile(ext) {
  return new Promise((resolve, reject) => {
    const input = document.createElement('input');
    input.type = 'file';
    input.accept = '.json';
    input.onchange = (e) => {
      if (e.target.files.length == 0) {
        reject("canceled");
        return;
      }
      const file = e.target.files[0];
      resolve(file);
    };
    input.dispatchEvent(new MouseEvent('click'));
  });
}

function readFile(file) {
  return new Promise((resolve, reject) => {
    const reader = new FileReader();
    reader.onabort = reader.onerror = e => reject(e);
    reader.onload = e => resolve(e.target.result);
    reader.readAsBinaryString(file);
  });
}

async function getFlags() {
  const module = await import('chrome://resources/js/cr.m.js');
  const config = await module.sendWithPromise('requestExperimentalFeatures');
  return config;
}

function parseFlags(config) {
  const flags = {};
  config.supportedFeatures.forEach(flag => {
    const k = flag.internal_name;
    flags[k] = flag;
    if (flag.options) {
      const options = flag.options.filter(option => option.selected);
      flag.selected = options.length == 0 ? flag.options[0] : options[0];
      flag.value = flag.selected.internal_name;
    } else {
      flag.value = flag.enabled.toString();
    }
  });
  return flags;
}

async function backup() {
  const config = await getFlags();
  await saveFile("backup.chrome-flags.json", JSON.stringify(config));
}

async function restore() {
  const file = await selectFile('.json');
  const data = await readFile(file);
  const flags = parseFlags(JSON.parse(data));
  const current = parseFlags(await getFlags());
  const keys = Array.from(new Set(Object.keys(flags).concat(Object.keys(current))));

  const same = keys.filter(k => current[k].value == flags[k].value);
  const diff = keys.filter(k => same.indexOf(k) == -1);
  const tasks = [];
  const table = diff.map(k => {
    const a = current[k];
    const b = flags[k];
    const noOptions = ["trie", "false"].indexOf(a.value) != -1;
    tasks.push(noOptions ? [k, b.value] : [b.value, "true"]);
    return noOptions ? {
      name: flags[k].name,
      current: a.value,
      update: b.value,
      url: `chrome://flags/#${current[k].internal_name}`,
    } : {
      name: flags[k].name,
      current: a.selected.description,
      update: b.selected.description,
      url: `chrome://flags/#${current[k].internal_name}`,
    };
  });
  console.table(table);
  console.log(`%c skip ${same.length} same items`, 'background: #FF0; color: #202124');
  console.log(`%c restore ${diff.length} diff items:`, 'background: #FF0; color: #202124');
  for (const task of tasks) {
    chrome.send("enableExperimentalFeature", task);
  }
}

// backup();
// restore();
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-08-15]] and last modified on [[2024-08-15]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[JS - Manage Chromium Browser Experimental Flags]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Manage Chromium Browser Experimental Flags"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024