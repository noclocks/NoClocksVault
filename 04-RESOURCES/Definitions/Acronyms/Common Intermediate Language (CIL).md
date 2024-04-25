---
creation_date: 2024-03-29
modification_date: 2024-03-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Definition
  - Topic/Dev
  - Status/Complete
aliases:
  - Common Intermediate Language
  - CIL
  - Microsoft Intermediate Language (MSIL)
  - Intermediate Language (IL)
publish: true
permalink:
description:
image:
cssclasses:
---

# Common Intermediate Language (CIL)

> [!SOURCE] Sources:
> - *[Common Intermediate Language - Wikipedia](https://en.wikipedia.org/wiki/Common_Intermediate_Language)*

> [!TIP] *Common Intermediate Language (CIL)* is also referred to as *Microsoft Intermediate Language (MSIL)* or *Intermediate Language (IL)*.

**Common Intermediate Language (CIL)**, formerly called **Microsoft Intermediate Language** (**MSIL**) or **Intermediate Language** (**IL**) is the *intermediate language binary instruction set defined within the [[Common Language Infrastructure (CLI)]] specification.*

CIL instructions are executed by a CIL-compatible runtime environment such as the [[Common Language Runtime]]. Languages which target the [[CLI]] compile to CIL. CIL is [[object-oriented]], [[stack-based]] [bytecode](https://en.wikipedia.org/wiki/Bytecode "Bytecode"). Runtimes typically [just-in-time](https://en.wikipedia.org/wiki/Just-in-time_compilation "Just-in-time compilation") compile CIL instructions into [native code](https://en.wikipedia.org/wiki/Native_code "Native code").

CIL was originally known as Microsoft Intermediate Language (MSIL) during the beta releases of the [[.NET]] languages. Due to standardization of [[C#]] and the [[CLI]], the bytecode is now officially known as CIL. [[Windows Defender]] virus definitions continue to refer to binaries compiled with it as MSIL.

## General Information

During compilation of [CLI programming languages](https://en.wikipedia.org/wiki/List_of_CLI_languages "List of CLI languages"), the [source code](https://en.wikipedia.org/wiki/Source_code "Source code") is translated into CIL code rather than into platform- or processor-specific [object code](https://en.wikipedia.org/wiki/Object_file "Object file"). CIL is a [CPU](https://en.wikipedia.org/wiki/CPU "CPU")- and platform-independent instruction set that can be executed in any environment supporting the Common Language Infrastructure, such as the [.NET runtime](https://en.wikipedia.org/wiki/Common_Language_Runtime "Common Language Runtime") on [Windows](https://en.wikipedia.org/wiki/Microsoft_Windows "Microsoft Windows"), or the [cross-platform](https://en.wikipedia.org/wiki/Cross-platform "Cross-platform") [Mono](https://en.wikipedia.org/wiki/Mono_(software) "Mono (software)") runtime. In theory, this eliminates the need to distribute different executable files for different platforms and CPU types. CIL code is verified for safety during runtime, providing better security and reliability than natively compiled executable files.[[5]](https://en.wikipedia.org/wiki/Common_Intermediate_Language#cite_note-5)[[6]](https://en.wikipedia.org/wiki/Common_Intermediate_Language#cite_note-6)

The execution process looks like this:

1. Source code is converted to CIL [bytecode](https://en.wikipedia.org/wiki/Bytecode "Bytecode") and a [CLI assembly](https://en.wikipedia.org/wiki/Assembly_(CLI) "Assembly (CLI)") is created.
2. Upon execution of a CIL assembly, its code is passed through the runtime's [JIT compiler](https://en.wikipedia.org/wiki/Just-in-time_compilation "Just-in-time compilation") to generate native code. Ahead-of-time compilation may also be used, which eliminates this step, but at the cost of executable-file portability.
3. The computer's processor executes the native code.