---
creation_date: 2024-09-26
modification_date: 2024-09-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/Golang
  - Topic/Dev
  - Topic/Dev/Golang
  - Status/WIP
aliases:
  - Base64 Encode with Golang
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Base64 Encode with Golang

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Code

```go
package main

import (
	"bufio"
	"encoding/base64"
	"os"
)

func main() {

	// Buffered input that splits input on lines.
	input := bufio.NewScanner(os.Stdin)

	// Base64 Encoder/writer.
	encoder := base64.NewEncoder(
		base64.StdEncoding,
		os.Stdout)

	// Scan until EOF (no more input).
	for input.Scan() {
		bytes := input.Bytes()
		_, _ = encoder.Write(bytes)
		_, _ = encoder.Write([]byte{'\n'})
	}

	// Close the encoder and ensure it flushes remaining output
	_ = encoder.Close()
}
```

***

## Appendix

*Note created on [[2024-09-26]] and last modified on [[2024-09-26]].*

### See Also

- [[_README|Go Code Snippets]]

### Backlinks

```dataview
LIST FROM [[Go - Base64 Encode]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/Golang/Go - Base64 Encode"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

