---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/JavaScript
  - Status/WIP
aliases:
  - JavaScript Compression Stream API Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Compression Stream API

> [!SOURCE] Sources:
> - *[Compression Streams API - Web APIs | MDN (mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/API/Compression_Streams_API)*
> - *[14 Lesser-Known but Incredibly Useful Web APIs You Should Know About | by Nebula Nomad | Mar, 2024 | JavaScript in Plain English](https://javascript.plainenglish.io/14-lesser-known-but-incredibly-useful-web-apis-you-should-know-about-91ba92ea8cf4)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!example] **Code Snippet Metadata**:
> - Date:: [[2024-04-12]]
> - Source: **
> - Language: [[MOC - JavaScript|JavaScript]]
> - Description:: ""

## Code Snippet

```javascript
// To compress data
async function compressData(input) {
  // Create a compression stream in gzip format
  const compressionStream = new CompressionStream('gzip');
  // Create a stream from the input data
  const inputStream = new ReadableStream({
    start(controller) {
      // Put the input data into the stream
      controller.enqueue(new TextEncoder().encode(input));
      // Close the stream
      controller.close();
    },
  });

  // Pipe the input stream through the compression stream
  const compressedStream = inputStream.pipeThrough(compressionStream);

  // Gather the compressed data chunks
  const chunks = [];
  const reader = compressedStream.getReader();
  while (true) {
    const { done, value } = await reader.read();
    if (done) break;
    chunks.push(value);
  }

  // Combine the chunks into a single Uint8Array
  const compressedData = new Uint8Array(chunks.reduce((acc, val) => [...acc, ...val], []));
  return compressedData;
}

// To decompress data
async function decompressData(compressedData) {
  // Create a decompression stream in gzip format
  const decompressionStream = new DecompressionStream('gzip');
  // Create a stream from the compressed data
  const inputStream = new ReadableStream({
    start(controller) {
      // Put the compressed data into the stream
      controller.enqueue(compressedData);
      // Close the stream
      controller.close();
    },
  });

  // Pipe the input stream through the decompression stream
  const decompressedStream = inputStream.pipeThrough(decompressionStream);

  // Gather the decompressed data chunks
  const chunks = [];
  const reader = decompressedStream.getReader();
  while (true) {
    const { done, value } = await reader.read();
    if (done) break;
    chunks.push(value);
  }

  // Combine the chunks into a single string
  const decompressedData = new TextDecoder().decode(concatenateUint8Arrays(chunks));
  return decompressedData;
}

// Helper function to concatenate Uint8Arrays
function concatenateUint8Arrays(arrays) {
  let totalLength = arrays.reduce((acc, val) => acc + val.length, 0);
  let result = new Uint8Array(totalLength);
  let length = 0;
  for (let array of arrays) {
    result.set(array, length);
    length += array.length;
  }
  return result;
}

// Example usage
const originalData = 'This is the data to compress';
compressData(originalData).then(compressedData => {
  console.log('Compressed Data:', compressedData);
  decompressData(compressedData).then(decompressedData => {
    console.log('Decompressed Data:', decompressedData);
  });
});
```

## Details

The [Compression Stream API](https://developer.mozilla.org/en-US/docs/Web/API/Compression_Streams_API) is a JavaScript API that lets you compress and decompress data streams. It uses gzip or a default format. With a built-in compression library, JavaScript apps don’t need extra libraries for this. This makes the app download smaller. It’s a great tool for making web pages load faster and use less data.

Here’s an example of how to use the Compression Stream API in JavaScript to compress and decompress data using `gzip`.

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[JS - Compression Stream API]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Compression Stream API"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024