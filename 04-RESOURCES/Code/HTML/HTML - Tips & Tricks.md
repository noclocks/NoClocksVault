---
creation_date: 2024-08-13
modification_date: 2024-08-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/HTML
  - Topic/Dev
  - Topic/Dev/Web
  - Topic/Dev/HTML
  - Status/WIP
aliases:
  - HTML Tips & Tricks Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# HTML Tips & Tricks Code

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
> - *https://medium.com/@asierr/15-html-tricks-every-developer-should-know-09e781713d09*

## Semantic HTML

> [!TIP] See Also:
> [[HTML - Semantic Elements]]

Using [[HTML - Semantic Elements|Semantic HTML]] tags not only improves the readability of your code but also enhances accessibility and [[Search Engine Optimization (SEO)|SEO]]. 

Semantic elements clearly describe their meaning in a human and machine-readable way:

```html
<header>
  <h1>Website Title</h1>
  <nav>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>
</header>
<main>
  <article>
    <h2>Article Title</h2>
    <p>This is the main content of the article.</p>
  </article>
</main>
<footer>
  <p>&copy; 2024 Your Company. All rights reserved.</p>
</footer>
```

## Picture Element

> [!TIP] Use the `<picture>` element to specify multiple source files for different screen sizes and resolutions, ensuring the most appropriate image is loaded depending on the device.

```html
<picture>
  <source media="(min-width: 800px)" srcset="large.jpg">
  <source media="(min-width: 400px)" srcset="medium.jpg">
  <img src="small.jpg" alt="A descriptive alt text">
</picture>
```

## Data Attributes

Data attributes (`data-*`) allow you to store extra information on [[Hyper Text Markup Language (HTML)|HTML]] elements without using non-standard attributes. 

This information can be accessed via [[04-RESOURCES/Code/JavaScript/_README|JavaScript]], making it useful for dynamic content.

```html
<button data-user-id="123" onclick="showUserDetails(this)">View Details</button>
<script>
  function showUserDetails(button) {
    var userId = button.getAttribute('data-user-id');
    console.log('User ID:', userId);
  }
</script>
```

## HTML Entities

HTML entities are used to display reserved characters in HTML. They can also be used for special characters and symbols.

```html
<p>&copy; COMPANY 2024 &mdash; All rights reserved.</p>  
<p>Use &amp; to display an ampersand (&).</p>  
<p>Use &lt; and &gt; for angle brackets (&lt; and &gt;).</p>
```

results:

<p>&copy; COMPANY 2024 &mdash; All rights reserved.</p>  
<p>Use &amp; to display an ampersand (&).</p>  
<p>Use &lt; and &gt; for angle brackets (&lt; and &gt;).</p>

## Inline SVG

> [!TIP] [[Scalable Vector Graphics (SVG)]] can be included directly in [[Hyper Text Markup Language (HTML)|HTML]], providing crisp and scalable images that look great on all screen sizes and resolutions.

```html
<svg width="100" height="100" xmlns="http://www.w3.org/2000/svg">
  <circle cx="50" cy="50" r="40" stroke="black" stroke-width="3" fill="red" />
</svg>
```

result:

<svg width="100" height="100" xmlns="http://www.w3.org/2000/svg">  
<circle cx="50" cy="50" r="40" stroke="black" stroke-width="3" fill="red" />  
</svg>
<br>

## Autofocus Attribute

The autofocus attribute can be added to form elements to automatically focus on that element when the page loads.

```html
<input type="text" name="username" placeholder="Username" autofocus>
```

## Placeholder Attribute

The placeholder attribute provides a hint to the user of what can be entered in the input field.

```html
<input type="email" name="email" placeholder="Enter your email">
```

<input type="email" name="email" placeholder="Enter your email">


## Required Attribute

The required attribute ensures that the user cannot submit the form without filling in that field.

```html
<form>
  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required>
  <button type="submit">Submit</button>
</form>
```

<form>  
<label for="email">Email:</label>  
<input type="email" id="email" name="email" required>  
<button type="submit">Submit</button>  
</form>


## Pattern Attribute

The `pattern` attribute specifies a regular expression that the input field's value must match for the form to be submitted.

```html
<form>  
  <label for="username">Username (only letters and numbers):</label>  
  <input type="text" id="username" name="username" pattern="[A-Za-z0-9]+" required>  
  <button type="submit">Submit</button>  
</form>
```

<form>  
  <label for="username">Username (only letters and numbers):</label>  
  <input type="text" id="username" name="username" pattern="[A-Za-z0-9]+" required>  
  <button type="submit">Submit</button>  
</form>

## Details and Summary Elements

> [!TIP] See Also:
> [[HTML - Collapsible Content]]

The `<details>` and `<summary>` elements can be used to create expandable and collapsible sections, providing an easy way to hide and show content.

```html
<details>
  <summary>More Info</summary>
  <p>This is additional information that can be expanded or collapsed.</p>
</details>
```

<details>  
<summary>More Info</summary>  
<p>This is additional information that can be expanded or collapsed.</p>  
</details>

## Accessibility with ARIA

[[Accessible Rich Internet Applications (ARIA)]] attributes can enhance accessibility by providing additional information to assistive technologies.

```html
<button aria-label="Close" onclick="closeWindow()">X</button>
<p role="alert">This is an important message.</p>
```

## HTML5 Form Validation

HTML5 provides several built-in validation features that can be applied to form elements, such as `type`, `required`, `min`, `max`, and `pattern`.

```html
<form>
  <label for="age">Age:</label>
  <input type="number" id="age" name="age" min="18" max="99" required>
  <button type="submit">Submit</button>
</form>
```

<form>  
<label for="age">Age:</label>  
<input type="number" id="age" name="age" min="18" max="99" required>  
<button type="submit">Submit</button>  
</form>

## Meta Tags

Meta tags provide metadata about the HTML document. They can be used to specify character sets, page descriptions, keywords, viewport settings, and more.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="A comprehensive guide to HTML tricks for developers.">
  <meta name="keywords" content="HTML, web development, tips, tricks">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>15 HTML Tricks Every Developer Should Know</title>
</head>
<body>
  <!-- Page content -->
</body>
</html>
```

## Custom Data Lists

The `<datalist>` element provides an autocomplete feature for input elements, displaying a list of predefined options as the user types.

```html
<form>
  <label for="browsers">Choose a browser:</label>
  <input list="browsers" id="browser" name="browser">
  <datalist id="browsers">
    <option value="Chrome">
    <option value="Firefox">
    <option value="Safari">
    <option value="Edge">
    <option value="Opera">
  </datalist>
  <button type="submit">Submit</button>
</form>
```

<form>  
<label for="browsers">Choose a browser:</label>  
<input list="browsers" id="browser" name="browser">  
<datalist id="browsers">  
<option value="Chrome">  
<option value="Firefox">  
<option value="Safari">  
<option value="Edge">  
<option value="Opera">  
</datalist>  
<button type="submit">Submit</button>  
</form>

## Using the Output Element

The `<output>` element represents the result of a calculation or user action. It can be used in conjunction with JavaScript to display dynamic results.

```html
<form oninput="result.value=parseInt(a.value)+parseInt(b.value)">
  <label for="a">A:</label>
  <input type="number" id="a" name="a" value="0">
  <label for="b">B:</label>
  <input type="number" id="b" name="b" value="0">
  <label for="result">Result:</label>
  <output name="result" for="a b">0</output>
</form>
```

## Conclusion

Mastering [[Hyper Text Markup Language (HTML)|HTML]] is essential for any web developer, and these tricks can help you write cleaner, more efficient, and more accessible code. 

From using [[HTML - Semantic Elements|Semantic Elements]] and data attributes to leveraging new HTML5 features and improving accessibility, these techniques will enhance your web development skills and enable you to create better user experiences. Keep exploring and experimenting with HTML to discover even more ways to improve your web projects.

***

## Appendix

*Note created on [[2024-08-13]] and last modified on [[2024-08-13]].*

### See Also

- [[04-RESOURCES/Code/HTML/_README|HTML Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[MOC - JavaScript|JavaScript Map of Content]]

### Backlinks

```dataview
LIST FROM [[HTML - Tips & Tricks]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/HTML/HTML - Tips & Tricks"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024