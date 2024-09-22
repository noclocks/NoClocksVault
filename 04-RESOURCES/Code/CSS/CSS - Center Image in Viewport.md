---
creation_date: 2024-09-18
modification_date: 2024-09-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/CSS
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/CSS
  - Status/WIP
aliases:
  - CSS Center Image in Viewport Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# CSS Center Image in Viewport Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - **

## Code Snippet

### HTML

```html
<!DOCTYPE html>
<html>
<head>
  <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
  <title>Center the center of an image on the center of an HTML document</title>

  <style type='text/css'> 

  img {
     position: fixed;
   }

  </style>

  <script type='text/javascript'>

     var img;
     function resized() {

        img.style.left = ( (window.innerWidth  - img.naturalWidth ) / 2 ) + 'px';
        img.style.top  = ( (window.innerHeight - img.naturalHeight) / 2 ) + 'px';

     }

     function main() {

       img = document.getElementById('theImage');
       window.onresize = resized;

       resized();
     }

  </script>



</head>
<body onload='main()'>

  <img id='theImage' src='600x300.png'>

  <div>

Lorem ipsum dolor sit amet, elementum tellus feugiat ante ut proin. Lorem vel
sagittis et elit amet, at purus ultrices, wisi mattis in erat urna nunc et,
vitae elementum harum, facilisis ligula nunc ac. Quam urna mauris tortor amet
sodales in, amet diam fermentum vitae dictum sagittis, incidunt leo quam nibh
nulla adipiscing mauris, condimentum nec pellentesque egestas rutrum, id odio
in at cras bibendum. Eget eget tellus, est erat ut aliquam. Integer et vitae
tincidunt dictum nec consectetuer. Justo cras eleifend condimentum, sit nam
nulla vel mauris dolor, neque ac mattis, scelerisque et dolor quis eleifend.
Integer pede vestibulum morbi. Turpis elit et.
<p>
Nulla tellus recusandae magna, est molestiae quisque. Vestibulum ridiculus
purus sapien eu, fermentum augue, faucibus nibh, nunc metus duis at erat.
Lobortis ac turpis, nulla amet et praesent fermentum ultrices, ligula proin
sollicitudin lobortis viverra iaculis aliquam. Libero purus dictum eros
pellentesque wisi, a dignissim urna orci, diam facilisis lectus nullam, tempus
sociis donec justo corporis. Mi sed amet facilisi aliquam nunc gravida, lorem
ac vestibulum voluptatem consequat risus, tristique arcu sem nam nostra, auctor
suspendisse.
<p>
Leo quam interdum ligula nulla, eu nisl phasellus condimentum posuere eiusmod,
condimentum vestibulum doloribus vel ipsum pellentesque. Iaculis laoreet
suspendisse dictum nunc vel integer. Venenatis phasellus praesent nulla
sodales. Velit nec varius nullam, pellentesque dolor elit dui vulputate,
maecenas condimentum elementum sed taciti sociosqu fermentum, sem semper
dignissim, elementum sed leo lorem vitae at adipiscing. Erat duis pede sit, sit
lobortis vivamus, amet pretium sed id arcu, facilisis molestie turpis sociosqu
proin, rhoncus pellentesque. Vehicula sit eget ligula, tincidunt velit, lorem
libero turpis quam gravida vitae, velit eleifend urna occaecat. Ante eros
ultrices posuere, tempus porttitor tempus hac sed neque sed, aliquam metus
magna, tincidunt suspendisse ullamcorper vel mi. Iaculis lorem viverra tellus.
Metus amet mattis risus eros, non nisl sollicitudin mattis commodo nam mauris,
justo facilisis ipsum praesent. Eu molestie nullam et, dictum eu eu, wisi
aliquam nulla sodales mauris ipsum libero, sem placerat. Mi curabitur commodi.
<p>
Sed vitae, elementum bibendum. Turpis fusce eros rutrum sed, etiam sed erat,
fringilla tortor est mauris fermentum, morbi accumsan. At non non, turpis quam
vestibulum lectus suspendisse, aliquet iaculis soluta orci sem ut. Nullam nulla
mollis, vitae commodo eleifend congue accumsan, sit adipiscing vitae interdum
urna dolor, vel perspiciatis sodales ultrices ut. Velit at a. Commodo
vestibulum etiam platea, dui odio quam a leo justo, deleniti tincidunt odio
ligula, pellentesque massa et.

  </div>

</body>
</html>
```

### CSS

```css
img {
  position: fixed;
}
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/CSS/_README|CSS Code]]
- [[Cascading Style Sheets (CSS)]]
- [[Hyper Text Markup Language (HTML)]]
- [[MOC - JavaScript|JavaScript Map of Content]]


***

## Appendix

*Note created on [[2024-09-18]] and last modified on [[2024-09-18]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[CSS - Center Image in Viewport]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/CSS/CSS - Center Image in Viewport"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024