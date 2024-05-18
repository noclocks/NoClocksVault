---
creation_date: 2024-05-13
modification_date: 2024-05-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev
  - Topic/Dev/Design
  - Topic/Dev/Frontend
  - Topic/Dev/React
  - Status/WIP
aliases:
  - TailwindCSS vs Modern CSS Alternatives
publish: true
permalink:
description:
image:
cssclasses:
---


# TailwindCSS vs Modern CSS Alternatives

> [!SOURCE] Sources:
> - *[Tailwind vs Modern CSS. Inline-classes VS CSS Nesting | by Julien Etienne | Medium](https://medium.com/@julienetienne/tailwind-vs-modern-css-31245acfdc2e)*

![](https://i.imgur.com/TIs1ao7.png)



```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!ABOUT]
> [[Tool - TailwindCSS|TailwindCSS]] is a beloved [[Cascading Style Sheets (CSS)|CSS]] framework, it has many loved features for creating user interfaces. 
>
> This note is not taking a deep dive into [[Tool - TailwindCSS|Tailwind]], instead it focuses and isolates some of the concerns with the use of *inline-classes* in [[Tool - TailwindCSS|Tailwind]] as well as touching on *new native CSS features that revolutionize how we approach those concerns*.

## Inline Classes

Inline-classes have been a highly praised feature of Tailwind. When seeking feedback on Tailwind I received a mix of opinions, though one point of view concerned me.

Some developers have expressed that they like Tailwind because they can manage their [[Cascading Style Sheets (CSS)|CSS]] and [[Hyper Text Markup Language (HTML)|HTML]] without changing screens. So here’s my strong stance on this:

> [!QUOTE]
> I strongly insist and urge that managing multiple files or syntax should be the responsibility of tooling such as an [[Integrated Development Environment (IDE)]], text editor, terminal or even multiple display monitors and should never be solved within a code-base.

The above is not specific to Tailwind, it’s more about having a professional perception to software development. I don’t expect push-back on this stance, I believe it’s a mature take.

The strength of inline-classes is that it can **define a scope**.

This is described well in this tweet:

![](https://i.imgur.com/fUdCke9.png)

This is probably the most compelling strength of Tailwind when compared to the unpredictable ways of doing things in traditional [[Cascading Style Sheets (CSS)|CSS]] projects.

## Scoping in Native CSS

Fortunately, modern [[Cascading Style Sheets (CSS)|CSS]] can scope unlike traditional CSS. Native CSS has at least two ways of scoping:

1. Wrap the new style you want to tweak within a **cascade layer**:

```css
.global-selector {
  background: limegreen;
  font-size: x-large;
}

/* New styles will not override existing styles */
@layer new-tweak {
  .global-selector {
    background: lightsalmon;
    color: crimson;
  }
}
```

or preferably,

2. Use a new class within a **nested scope**:

```css
.global-selector {
  background: limegreen;
  font-size: x-large;
}

/* New styles will not override existing styles */
.specific-parent {
  /* Private Scope */
  &.global-selector {
    background: lightsalmon;
    color: crimson;
  }
}
```

Both these approaches use native CSS and can achieve the same outcome as Tailwind, though for some it may take a bit of a paradigm shift to get used to.

## Problem with Inline Classes

There are a few concerns regarding inline-classes. They may be negligible or severe depending on your project or how you choose to interpret them.

-   **Inline-classes can sometimes become heavy**: *At the time of this article,* the [tailwindcss.com](http://tailwindcss.com/) landing HTML *(Just a convenient case study)* uses tailwind’s inline-classes and has a size of 432.5 KB. The class attributes and their values constitute 249KB of data, which means 57.6% of the page’s size is due to inline classes. With modern native CSS you could expect around 5% to 15%.
-   **Heavy HTML can affect your PageSpeed Insights score**: FE devs love to say “but its gziped bro” to justify excessive payloads. But the server’s gzip size is a little misleading *(that’s for another article)*. The more important concern in this scenario is the memory hit due to the data size of [*DOM Attr nodes*](https://developer.mozilla.org/en-US/docs/Web/API/Attr) as a consequence of inline styles.
-   **Attribute clutter**: There are Tailwind developers on both sides of the fence when it comes to attribute clutter. Debugging is done in both production and development code. Anyone who denies this is either lying out their teeth or has liklely never worked on an active, large scale project in high demand. **There are no source maps for HTML**, so despite minification you don’t want to be too messy.
-   **High bandwidth**: We live in a world of free-tier cloud services so this probably wont be a huge concern for most projects but for high bandwidth websites that surpass free tiers, heavy HTML may somewhat incur additional costs depending on your cloud provider. **CSS stylesheets were specifically designed to be cached during the conception of HTTP**. Tailwind’s inline-classes are part of the HTML document, which typically has more frequent changes and are generally not cached similarly to CSS stylesheets.
-   **Duplicated style dialect**: Tailwind will allow you to define inline-class syntax which is somewhat of a simplified dialect that resembles CSS. These classes link to framework CSS rules. It’s not direct duplication per-se but it’s an additional weight to the CSS that is also represented in the CSS of the framework code.

>   You can optionally move your Tailwind styles to a class using the `@apply` directive though for many, this may diminished the purpose of using Tailwind altogether.

## CSS Nesting Changes Everything

Because nested scopes are private

-   **You don’t have to define every element with a class**, just use your judgement and be reasonable.
-   **You no longer need to follow BEM, OOCSS or any other traditional CSS methodologies**. All those things are dead now.

CSS nesting and [relative selectors](https://dev.to/shubhamtiwari909/css-iswherehas-and-not-2afd) means we are not only defining fewer inline-classes than CSS frameworks, but we define fewer inline-classes when compared to traditional CSS projects.

## Conclusion

If you’re using CSS in the old-school way, just stop. Figure out how to get with the times. Maybe the below can help, but this is out of scope *(no pun intended)*:

-   [caniuse.com](https://caniuse.com/?search=nesting)
-   [PostCSS](https://postcss.org/)
-   [Nesting](https://www.npmjs.com/package/postcss-nesting)

For the past 15+ years CSS libraries and frameworks have predominantly relied on excessive inline classes. Tailwind is no exception.

>   IMHO Nesting CSS along with CSS framework like Tailwind doesn't seem necessary. I’d recommend choosing one approach or the other depending on what suits your needs.

Tailwind is massive, I believe *Tailwind to CSS* is bigger than *React to JS/TS.* So inevitably there will be many thought-leaders and mobs to sweet talk much of the concerns raised in this article away.

**CTFO, nobody is telling you to stop using Tailwind. As a developer, it’s more crucial to cheer-lead your own abilities and knowledge than the tools you use**. This is just another source of knowledge like any other.

Nothing is new here. We’ve had a similar situation when [*CSS-in-JS*](https://medium.com/dailyjs/what-is-actually-css-in-js-f2f529a2757) came onto the scene, and in the beginning, devs noticed that it was duplicating the CSS footprint and somewhat working against the concept of caching and invalidation *(I’m not entirely sure if this has been resolved since).*

I hope this article has connected a few dots in regards to CSS real-world concerns and solutions.

The magic word here is “awake” not “deter”.

***

## Appendix

*Note created on [[2024-05-13]] and last modified on [[2024-05-13]].*

### Backlinks

```dataview
LIST FROM [[TailwindCSS vs Modern CSS Alternatives]] AND -"CHANGELOG" AND -"//TailwindCSS vs Modern CSS Alternatives"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024