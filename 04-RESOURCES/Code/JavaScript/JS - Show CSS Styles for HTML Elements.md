---
creation_date: 2024-09-18
modification_date: 2024-09-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/JavaScript
  - Status/WIP
aliases:
  - JavaScript Show CSS Styles for HTML Elements Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Show CSS Styles for HTML Elements

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

```javascript
// http://stackoverflow.com/a/2664055/180275
function getStyle(elem, property_name) { 

      var value, defaultView = (elem.ownerDocument || document).defaultView;

      if (defaultView && defaultView.getComputedStyle) {      

      // W3C standard way.

      // sanitize property name to css notation.
      //(Camel case to hyphen, fontSize => font-size)
         property_name = property_name.replace(/([A-Z])/g, "-$1").toLowerCase();

         return defaultView.getComputedStyle(elem, null).getPropertyValue(property_name);
      }
      else if (elem.currentStyle) { // IE
      // sanitize property name to camelCase
      //(Reverse of above: font-size => fontSize)
         property_name = property_name.replace(/\-(\w)/g, function(str, letter) { return letter.toUpperCase(); });

         value = elem.currentStyle[property_name];

         if (/^\d+(em|pt|%|ex)?$/i.test(value)) { 
         // convert other units to pixels on IE
            return (function(value) {
              var oldLeft = elem.style.left, oldRsLeft = elem.runtimeStyle.left;
              elem.runtimeStyle.left = elem.currentStyle.left;
              elem.style.left = value || 0;
              value = elem.style.pixelLeft + "px";
              elem.style.left = oldLeft;
              elem.runtimeStyle.left = oldRsLeft;
              return value;
           })(value);
        }
        return value;
      }
    }

    function showStyleValues() {

       var html = document.getElementsByTagName('html')[0];
       var body = document.getElementsByTagName('body')[0];

       var tab = document.createElement('table');

       tab.style.width='100%';
       tab.setAttribute('border','1');

       var tab_body = document.createElement('tbody');
       
       for (var style_name in html.style) {

           var tr = document.createElement('tr');

           var td_name       = document.createElement('td');
           var td_html_value = document.createElement('td');
           var td_body_value = document.createElement('td');

           var html_val = getStyle(html, style_name);
           var body_val = getStyle(body, style_name);

           td_name      .appendChild(document.createTextNode(style_name));
           td_html_value.appendChild(document.createTextNode(html_val  ));
           td_body_value.appendChild(document.createTextNode(body_val  ));

           if (html_val != body_val) {
              td_html_value.style['color'] = 'red';
              td_body_value.style['color'] = 'red';
           }

           tr.appendChild(td_name );
           tr.appendChild(td_html_value);
           tr.appendChild(td_body_value);

           tab_body.appendChild(tr);
       }
       tab.appendChild(tab_body);

       body.appendChild(tab)

    }

    function main() {
       showStyleValues();
    }
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

*Note created on [[2024-09-18]] and last modified on [[2024-09-18]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[JS - Show CSS Styles for HTML Elements]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Show CSS Styles for HTML Elements"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024