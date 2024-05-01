---
creation_date: 2024-05-01
modification_date: 2024-05-01
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Cheatsheet
  - Topic/Dev/Frontend
  - Status/WIP
aliases:
  - Favicons Cheatsheet
  - Favicons Guide
publish: true
permalink:
description:
image:
cssclasses:
---

# Favicons Cheatsheet

> [!SOURCE] Sources:
> - *[audreyfeldroy/favicon-cheat-sheet: Obsessive cheat sheet to favicon sizes/types. Please contribute! (Note: this may be in flux as I learn new things about favicon best practices.)](https://github.com/audreyfeldroy/favicon-cheat-sheet)*

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
> A painfully obsessive cheat sheet to favicon sizes/types.

## HTML

### Basics

- For the main favicon itself, it's best for cross-browser compatibility not to use any HTML.
- Just name the file `favicon.ico` and place it in the root of your domain.[1](https://github.com/audreyfeldroy/favicon-cheat-sheet#fn1)[2](https://github.com/audreyfeldroy/favicon-cheat-sheet#fn2)
- This works in every desktop browser/version all the way back to IE6

### Optional but Encouraged

You probably also want the following:

1. Touch icon for iOS 2.0+ and Android 2.1+:
    
    > ```html
    > <link rel="apple-touch-icon-precomposed" href="path/to/favicon-180.png">
    > ```
    
2. IE 10 Metro tile icon (Metro equivalent of apple-touch-icon):
    
    > ```html
    > <meta name="msapplication-TileColor" content="#FFFFFF">
    > <meta name="msapplication-TileImage" content="/path/to/favicon-144.png">
    > ```
    
    Replace #FFFFFF with your desired tile color.
    
3. IE 11 Tile for Windows 8.1 Start Screen
    
    > ```html
    > <meta name="application-name" content="Name">
    > <meta name="msapplication-tooltip" content="Tooltip">
    > <meta name="msapplication-config" content="/path/to/ieconfig.xml">
    > ```
    > 
    > ieconfig.xml
    > 
    > ```xml
    > <?xml version="1.0" encoding="utf-8"?>
    >     <browserconfig>
    >       <msapplication>
    >         <tile>
    >           <square70x70logo src="/path/to/smalltile.png"/>
    >           <square150x150logo src="/path/to/mediumtile.png"/>
    >           <wide310x150logo src="/path/to/widetile.png"/>
    >           <square310x310logo src="/path/to/largetile.png"/>
    >           <TileColor>#FFFFFF</TileColor>
    >         </tile>
    >       </msapplication>
    >     </browserconfig>
    > ```






## References

Compiled from:

- [http://mathiasbynens.be/notes/rel-shortcut-icon](http://mathiasbynens.be/notes/rel-shortcut-icon) <-- special thanks [@mathiasbynens](https://github.com/mathiasbynens)
- [http://mathiasbynens.be/notes/touch-icons](http://mathiasbynens.be/notes/touch-icons) <-- special thanks [@mathiasbynens](https://github.com/mathiasbynens)
- [http://www.jonathantneal.com/blog/understand-the-favicon/](http://www.jonathantneal.com/blog/understand-the-favicon/)
- [https://en.wikipedia.org/wiki/Favicon.ico](https://en.wikipedia.org/wiki/Favicon.ico)
- [http://snook.ca/archives/design/making_a_good_favicon](http://snook.ca/archives/design/making_a_good_favicon)
- [http://www.netmagazine.com/features/create-perfect-favicon](http://www.netmagazine.com/features/create-perfect-favicon)
- [http://www.ravelrumba.com/blog/android-apple-touch-icon/](http://www.ravelrumba.com/blog/android-apple-touch-icon/)
- [http://msdn.microsoft.com/en-us/library/ie/gg491740(v=vs.85](http://msdn.microsoft.com/en-us/library/ie/gg491740(v=vs.85)).aspx

***

## Appendix

*Note created on [[2024-05-01]] and last modified on [[2024-05-01]].*

### Backlinks

```dataview
LIST FROM [[Cheatsheet - Favicons]] AND -"CHANGELOG" AND -"//Cheatsheet - Favicons"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024