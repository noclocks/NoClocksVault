---
creation_date: 2024-04-15
modification_date: 2024-04-15
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Cheatsheet
  - Topic/Dev/Windows
  - Topic/CLI
  - Topic/Dev
  - Topic/IT
  - Topic/Business/Tech
  - Topic/CMD
  - Status/WIP
aliases:
  - Windows Command Line Cheatsheet
  - Windows Command Line Commands
  - Windows CMD Commands
  - Windows CMD
publish: true
permalink:
description:
image:
cssclasses:
---

# Windows Command Line Cheatsheet

> [!SOURCE] Sources:
> - **

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

The [[Microsoft Windows|Windows]] [[Command Line]], or the [[Windows Command Prompt]], is the [[Command Line Interface (CLI)]] on [[Microsoft Windows]] machines, analogous to the Terminal in [Unix](https://www.stationx.net/unix-commands-cheat-sheet/)/[Linux](https://www.stationx.net/linux-command-line-cheat-sheet/). 

It emulates many command-line abilities in Microsoft’s deprecated text-only operating system [[MS-DOS]] (but [it’s not MS-DOS](https://superuser.com/questions/451432/are-the-command-prompt-and-ms-dos-the-same-thing)).

> [!TIP]
> Another name for the Windows Command Line is "cmd".

Scripts containing Windows commands ([[Batch Scripts]]) have `.bat` as the [[file extension]]. All `cmd` commands are **case-insensitive**, so `arp` and `ARP` are the same. 

> [!TIP]
> If you need help using any command, add `/?` to it.

## Cheatsheet

- Navigation
- File Management
- 

### Navigation

| Command | Description |
| ------- | ----------- |
|`c:`|Change the current drive to the C:\ drive|
|`d:`|Change the current drive to the D:\ drive|
|`CD c:\path\to\my_folder`|Change directory to `c:\path\to\my_folder`|
|`CD ..`|Navigate to the parent directory of the current working directory|
|`CD .\new_folder`|Navigate to the folder `new_folder` located in the current working directory|
|`CD /D d:\videos\`|Change the current drive to D:\ and access the folder `videos` on it.|
|`DIR`|Display files and folders in the current directory|
|`DIR /A c:\apps\`|Display files and folders in the directory `c:\apps\`|
|`DIR /A:D`|Display only folders (`D:` directories)|
|`DIR /A:-D`|Display only files (`D:` directories; `-:` not)|
|`DIR /A:H`|Display hidden files and folders|
|`DIR /O`|Display files and folders sorted alphabetically|
|`DIR /O:S`|Display files and folders sorted by file size from smallest to largest|
|`DIR /O:-S`|Display files and folders sorted by file size from largest to smallest|
|`DIR /B`|Display only the names of files and folders in the current working directory|
|`SORT`|Take input from a source file/pipeline, sort its contents alphabetically (default: A to Z; in reverse: Z to A), and display the output|
|`SORT "C:\music\playlist.m3u"`|Sort the contents of `C:\music\playlist.m3u` line by line|
|`DIR /B \| SORT /R /O ZtoA.txt`|List all file and folder names in the current working directory, sort them in reverse alphabetical order, and save the sorted output to a file `ZtoA.txt`:  <br>[![](https://www.stationx.net/wp-content/uploads/2023/01/Demonstration-of-DIR-B-SORT-R-O-ZtoA.txt.png)](https://www.stationx.net/wp-content/uploads/2023/01/Demonstration-of-DIR-B-SORT-R-O-ZtoA.txt.png)|
|`MOVE`|Move a file or files|
|`MOVE c:\f1\text.txt c:\f2`|Move a file `text.txt` from one folder `c:\f1` to another folder `c:\f2`|
|`MD new_folderMAKEDIR new_folder`|Create a new folder called `new_folder` in the current directory|
|`RD new_folderRMDIR new_folder`|Delete the folder called `new_folder` in the current directory|
|`TREE`|Show the directory structure of a disk/folder|
|`TREE "C:\Program Files"`|Show the directory structure of the folder “Program Files” on the disk C:\|
|`TREE C:\ /F`|Display the names of the files in each folder in the directory structure of the C:\ drive|
|`ATTRIB`|Display/set the attributes of the files in the current directory|
|`ATTRIB +H +S +R myItem`|Hide a file/folder `myItem`|
|`ATTRIB -H -S -R myItem`|Unhide a file/folder `myItem`|

### File Management

| Command | Description |
| ------- | ----------- |
|`COPY text.txt C:\schoolwork`|Copy the file `text.txt` to a folder with the path `C:\schoolwork`|
|`DEL text.txtERASE text.txt`|Delete the file `text.txt`|
|`REN text.txt script.batRENAME text.txt script.bat`|Rename a file `text.txt` to `script.bat`|
|`REPLACE .\src\hey.txt .\dest`|Overwrite; replace a file named `hey.txt` in a local folder `src` with another `hey.txt` in a local folder `dest`, both files sharing the same name.  <br>**Warning:** Don’t specify `.\dest\hey.txt` anywhere here.|
|`XCOPY`|Copy files and directory trees to another folder.  <br>XCOPY is similar to COPY but with additional switches to specify the source and destination paths in detail.|
|`XCOPY /S folder1 folder2`|Copy folders and subfolders of `folder1` to `folder2`|
|`ROBOCOPY`|Robust copying of files and directories: by default, such copying only occurs if the source and destination differ in time stamps or file sizes.|
|`EXPAND gameData.cab`|Decompresses the compressed .CAB cabinet file `gameData.cab`|
|`FC file1.ext file2.ext`|Compare the contents of two files (`file1.ext, file2.ext`) and display non-matching lines|
|`COMP file1.ext file2.ext`|Compare the contents of two files (`file1.ext, file2.ext`) and display non-matching items|
|`FIND "python" in run.bat`|Output every line that contains a text string (which you must enclose in quotation marks) "`python`" in the file `run.bat`|
|`FIND /C "python" in run.bat`|Count every line that contains a text string (which you must enclose in quotation marks) "`python`" in the file `run.bat`|
|`PRINT resume.txt`|Print contents of a file `resume.txt`|
|`OPENFILES /QUERY`|Query/display open files|
|`OPENFILES /DISCONNECT`|Disconnect files opened by network users.|
|`TYPE test.txt`|Displays the contents of the file `test.txt`|
|`TYPE playlist.m3u \| SORT /unique /o C:\work\unique_play.m3u`|Sort a file `playlist.m3u` and output only the unique values to a file `C:\work\unique_play.m3u`|
|`MORE`|Display contents of one or more files, one screen at a time.|
|`ASSOC`|Display or change the association between a file extension and a file type|
|`NOTEPAD`|Open the Notepad application from cmd|
|`NOTEPAD filename.ext`|Open a file `filename.ext` in Notepad|

### Disk Management

| Command | Description |
| ------- | ----------- |
|`CHKDSK`|Check and repair disk problems (local disks only)|
|`CHKDSK /F A:`|Fix errors on `A:` drive|
|`CHKDSK /R A:`|Recover data on `A:` drive|
|`CHKDSK /X A:`|Dismount drive `A:`|
|`CIPHER /E classified`|Encrypt the folder `classified`|
|`CIPHER /D secret_recipe.txt`|Decrypt the file `secret_recipe.txt`|
|`DEFRAG`|Disk Defragmentation|
|`CHKNTFS`|Display/modify disk-checking on startup|
|`COMPACT`|Display/change the compression of files in NTFS partitions|
|`CONVERT`|Convert FAT disk volume to NTFS|
|`DISKPART`|Display and adjust disk partition properties|
|`FORMAT`|Format the disk|
|`FSUTIL`|File system management|
|`LABEL d:x`|Rename disk D:\ to X:\|
|`SUBST p: c:\taxes`|Assign drive P:\ to the local folder `c:\taxes`|
|`SUBST p: /D`|Remove the path represented by P:\|
|`RECOVER d:\data.dat`|Recover a file `data.dat` from a bad or defective disk D:\|
|`VOL`|Display current disk volume label and serial number|
|`POWERCFG`|Control power settings and configure Hibernate/Standby modes|
|`SFC /SCANNOW`|Scan and update protected system files|

### 
