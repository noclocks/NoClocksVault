---
creation_date: 2024-04-26
modification_date: 2024-04-26
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev/Windows
  - Topic/Business/IT
  - Topic/Dev
  - Status/WIP
aliases:
  - The Anatomy of a Windows Process
publish: true
permalink:
description:
image:
cssclasses:
---

# The Anatomy of a Windows Process

> [!SOURCE] Sources:
> - *[Windows Kernel Opaque Structures - Windows drivers | Microsoft Learn](https://learn.microsoft.com/en-us/windows-hardware/drivers/kernel/eprocess)*
> - *https://winstoreappsummary.blogspot.com/2024/03/process-knowledge.html*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> This note provides a detailed overview of the anatomy of an executable process.

![](https://i.imgur.com/FmZVk1c.png)
![](https://i.imgur.com/RhPlPQM.png)


Multiple programs are running on the computer at the same time. It must be managed by the operating system. Managing this process, along with memory management, is one of the main tasks an operating system must perform.

In order for the operating system to manage processes, it must create, store, and handle a lot of information necessary for management. A process has various information related to the process, and the operating system maintains information blocks that record detailed information for each process in the kernel memory (kernel object).

A single process has one or more execution blocks (or execution routines, execution units..) (Thread).

It can also be understood that several threads included in a program are grouped together and called a "process".

When a new process (program) is executed on a [[Tool - Microsoft Windows]] operating system:

1. Windows creates a structure named `EPROCESS` in the kernel memory space to manage it
2. The `ETHREAD` structure is created together as many threads as the process uses

## Windows Kernel Opaque Structures

This article lists and describes Windows kernel opaque structures. For many of these structures, drivers shouldn't access or change any members but should instead use system-supplied routines to access the information. See each structure for details.

### EPROCESS

The **EPROCESS** structure is an opaque structure that serves as the process object for a process.

Some routines, such as [**PsGetProcessCreateTimeQuadPart**](https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/ntddk/nf-ntddk-psgetprocesscreatetimequadpart), use **EPROCESS** to identify the process to operate on. Drivers can use the [**PsGetCurrentProcess**](https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/wdm/nf-wdm-iogetcurrentprocess) routine to obtain a pointer to the process object for the current process and can use the [**ObReferenceObjectByHandle**](https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/wdm/nf-wdm-obreferenceobjectbyhandle) routine to obtain a pointer to the process object that is associated with the specified handle. The [**PsInitialSystemProcess**](https://learn.microsoft.com/en-us/windows-hardware/drivers/kernel/mm64bitphysicaladdress) global variable points to the process object for the system process.

A process object is an Object Manager object. Drivers should use Object Manager routines such as [**ObReferenceObject**](https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/wdm/nf-wdm-obfreferenceobject) and [**ObDereferenceObject**](https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/wdm/nf-wdm-obdereferenceobject) to maintain the object's reference count.

### ETHREAD

The **ETHREAD** structure is an opaque structure that serves as the thread object for a thread.

Some routines, such as [**PsIsSystemThread**](https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/ntifs/nf-ntifs-psissystemthread), use **ETHREAD** to identify the thread to operate on. Drivers can use the [**PsGetCurrentThread**](https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/ntddk/nf-ntddk-psgetcurrentthread) routine to obtain a pointer to the thread object for the current thread and can use the [**ObReferenceObjectByHandle**](https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/wdm/nf-wdm-obreferenceobjectbyhandle) routine to obtain a pointer to the thread object that is associated with the specified handle.

A thread object is an Object Manager object. Drivers should use Object Manager routines such as [**ObReferenceObject**](https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/wdm/nf-wdm-obfreferenceobject) and [**ObDereferenceObject**](https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/wdm/nf-wdm-obdereferenceobject) to maintain the object's reference count.

 ***
 
```plaintext
Alpc  = Advanced LPC Routines
Cc    = Cache Manager
Cm    = Config Manager
Dbgk  = Debugger Facilities
Em    = Errata Manager
Etw   = Event Tracing Facilities
Ex    = Executive Support Facilities
FsRtl = File System Runtime Library Facilities
Hvl   = Hypervisor Library Support Facilities 
Io    = I/O manager
Kd    = Kernel Debugger Facilities
Ke    = Internal Core routines
Ki    = Not exported kernel routines (i = internal)
Ldr   = Image Loading Facilities
Lpc   = Local Procedure Call Facilities
Lsa   = Local Security Authority Routines
Mm    = Memory Manager
Ob    = Object Manager
Pc    = Performance Counter Routines
Po    = Power Manager
Pp    = Plug and Play Manager
Ps    = Process & Thread Manager
Rtl   = Runtime Library Facilities Rtl 
Se    = Security Referenece Monitor
Wmi   = WMI routines
```

The **Executive Subsystem** deals with base OS features, such as memory management, process and thread management, security, I/O, networking, and inter-process communication.

The **Kernel** deals with low-level OS functions, such as thread scheduling, interrupts and exception dispatching, and multiprocessor synchronization.

**Device drivers** includes both hw and sw drivers and they usually translate user I/O calls into specific hardware device I/O requests.

The Hardware Abstraction Layer (**HAL**) is a layer of code that isolates the kernel, the device drivers, and the rest of the Windows executive from platform-specific hardware.

The main kernel files can be summed as follows:

|File Name|Components|
|---|---|
|Ntoskrnl.exe|Executive and Kernel|
|Hal.dll|HAL|
|Win32k.sys|Kernel mode part of the GUI|
|*.sys in \SystemRoot\System32\Drivers|Core driver files|

Process and threads' most significant data structures are living both in user and kernel space, depending on their role and functionality.

Here a summary of the most important **kernel structures** and their role:

|Kernel Structure|Description|
|---|---|
|_EPROCESS|executive process object|
|_KPROCESS|kernel process object|
|_ETHREAD|executive thread object|
|_KTHREAD|kernel thread object|
|_KPCR|Processor information|
|_KPRCB|CPU state|

Here is a summary of where are placed and how are interconnected together. Here is also an overview of how some process and thread structures are interlinked.

## Process

As opposed to the *nix landscape, where a process is the one normally executing code, in the Windows world a process is just a container of resources used to execute the program. A thread is the entity actually running code. So what’s inside a process?

- **Private Address Space**: gives each process the same address virtual space memory layout
- **Private Handle Table**: resides in kernel memory and contains all handles to objects belonging to the process.
- **Access Token**: security context used to access shared resources.
- **One or more threads**: the one executing code. A process must have at least one thread.

Each process is managed by the Executive and it is represented by two objects, named EPROCESS and KPROCESS.

### EPROCESS/KPROCESS

Executive Process Block (**EPROCESS**) is the principal process structure that resides in kernel and equivalent to the user mode counterpart *_PEB_ If we inspect the `lass` process fromkdb, we can retrieve its EPROCESS value (in this case **ffffd60b4aa5b240**).