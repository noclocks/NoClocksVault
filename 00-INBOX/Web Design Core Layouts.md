---
creation_date: 2024-04-25
modification_date: 2024-04-25
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/NA
aliases:
  - Web Design Core Layouts
publish: true
permalink:
description:
image:
cssclasses:
---

## Common Web Layout Elements

There's a reason we talk about web design. You start out with a blank page, and you can take it so many directions. And if you don't have much experience, starting out with a blank page might be a bit scary. We have over 25 years' experience and we'll give you some common rules of thumb to help you design your site.

Even now with the new focus on mobile Web, almost all mainstream webpages are built from these parts:

- **Header**: Visible at the top of every page on the site. Contains information relevant to all pages (like site name or logo) and an easy-to-use navigation system.
- **Main Content**: The biggest region, containing content unique to the current page.
- **Side Content**:
	- Information complementing the main content
	- Information shared among a subset of pages
	- Alternative navigation system
	- Everything not absolutely required by the page's main content.
- **Footer**: Visible at the bottom of every page on the site. Like the header, contains less prominent global information like legal notices or contact info.

These elements are quite common in all form factors, but they can be laid out different ways. 

Here are some examples (**1** represents header, **2** footer; **A** main content; **B1, B2** things on the side):

**1-column layout**. Especially important for mobile browsers so you don't clutter the small screen up.

![Example of a 1 column layout: Main on top and asides stacked beneath it.](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Design_and_accessibility/Common_web_layouts/1-col-layout.png)

**2-column layout**. Often used to target tablets, since they have medium-size screens.

![Example of a basic 2 column layout: One aside on the left column, and main on the right column.](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Design_and_accessibility/Common_web_layouts/2-col-layout-right.png)![Example of a basic 2 column layout: One aside on the right column, and main on the left column.](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Design_and_accessibility/Common_web_layouts/2-col-layout-left.png)

**3-column layouts**. Only suitable for desktops with big screens. (Even many desktop-users prefer viewing things in small windows rather than fullscreen.)

![Example of a basic 3 column layout: Aside on the left and right column, Main on the middle column.](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Design_and_accessibility/Common_web_layouts/3-col-layout.png)![Another example of a 3 column layout: Aside side by side on the left, Main on the right column.](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Design_and_accessibility/Common_web_layouts/3-col-layout-alt.png)![Another example of a 3 column layout: Aside side by side on the right, Main on the left column.](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Design_and_accessibility/Common_web_layouts/3-col-layout-alt2.png)

The real fun begins when you start mixing them all together:

![Example of mixed layout: Main on top and asides beneath it side by side.](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Design_and_accessibility/Common_web_layouts/1-col-layout-alt.png)![Example of a mixed layout: Main on the left column and asides stack on top of each other on the right column](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Design_and_accessibility/Common_web_layouts/2-col-layout-left-alt.png)![Example of a mixed layout: one aside on the left column and main in the right column with an aside beneath main.](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Design_and_accessibility/Common_web_layouts/2-col-layout-mix.png)![Example of a mixed layout: Main on the left of the first row and one aside on the right of that same row, a second aside covering the whole second row.](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Design_and_accessibility/Common_web_layouts/2-col-layout-mix-alt.png)

These are just examples and you're quite free to lay things out as you want. You may notice that, while the content can move around on the screen, we always keep the header (1) on top and the footer (2) at the bottom. Also, the main content (A) matters most, so give it most of the space.

These are rules of thumb you can draw on. There are complex designs and exceptions, of course. In other articles we'll discuss how to design responsive sites (sites that change depending on the screen size) and sites whose layouts vary between pages. For now, it's best to keep your layout consistent throughout your site.