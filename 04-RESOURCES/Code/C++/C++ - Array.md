---
creation_date: 2024-09-26
modification_date: 2024-09-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/C++
  - Topic/Dev
  - Topic/Dev/C++
  - Status/WIP
aliases:
  - C++ Array Declaration Code
  - C++ Array Declaration
  - Array Declaration C++ Code
  - Array Declaration
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Array Declaration in `C++`

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Multidimensional Arrays

A multidimensional array is *an array with another array as its element type*.

The declaration order of dimensions is *the same as the access order, i.e. `int a[2][3]` means `a[0][0], a[0][1], a[0][2], a[1][0], a[1][1], a[1][2]` are accessible*.


```Cpp
int a[2][3]{{0, 1, 2}, {3, 4, 5}};
```

> [!TIP]
> *[Array-to-Pointer Decay](#array-to-pointer%20decay) is applied only once to multidimensional arrays.*


## Arrays of Unknown Bound

A multidimensional array can *have an unknown bound only in the first dimension*:

```Cpp
int valid[][10];
// int error[10][];
```

## Array-to-Pointer Decay

- Differences between array and `pointer`: 
	- While arrays can decay to `pointers`, *they are distinct types and not equivalent. For example, `int(*arr)[10]` (pointer to array of 10 `int`s) is not equivalent to `int **arr` (pointer to pointer to `int`).*
	- It might seem reasonable to decay the inner array of the first type to a pointer, making it equivalent to the second type. 
		- However, consider **pointer arithmetic** on both types: `arr + 1`. 
		- In the first case, the address is incremented by `sizeof(int[10])`. 
		- But in the second case, the address is incremented by `sizeof(int*)`.
		- The distinction is important when performing pointer arithmetic on [multidimensional arrays](#multidimensional%20arrays), such as `int arr[2][10]`, which decays to `int(*)[10]` instead of `int**`. It makes `arr[1]`, equivalent to `*(arr + 1)`, work properly.

***

## Appendix

*Note created on [[2024-09-26]] and last modified on [[2024-09-26]].*

### See Also

- [[_README|C++]]
- [[C++ - Implicit Conversion]]
- [[C++ - Lambda]]
- [[C++ - Overload Resolution]]

### Backlinks

```dataview
LIST FROM [[C++ - Array]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/C++/C++ - Array"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024


