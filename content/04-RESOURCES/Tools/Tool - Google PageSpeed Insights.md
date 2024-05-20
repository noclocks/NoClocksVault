---
creation_date: 2024-04-30
modification_date: 2024-04-30
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Tool
  - Topic/Dev/Web
  - Topic/Dev/Tool
  - Status/WIP
aliases:
  - Google PageSpeed
  - Google PageSpeed Insights
  - Google PageSpeed Test
  - Google Page Speed
publish: true
permalink:
description:
image:
cssclasses:
  - tool
---


# Google PageSpeed Insights

> [!SOURCE] Sources:
> - *[PageSpeed Insights](https://pagespeed.web.dev/)*
> - *[About PageSpeed Insights  |  Google for Developers](https://developers.google.com/speed/docs/insights/v5/about)*
> - *[Release Notes  |  PageSpeed Insights  |  Google for Developers](https://developers.google.com/speed/docs/insights/release_notes)*
> - *[Make the Web Faster  |  Google for Developers](https://developers.google.com/speed)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

![](https://i.imgur.com/eY9XT5k.png)

[[PageSpeed Insights (PSI)]] reports on the user experience of a page on both mobile and desktop devices, and provides suggestions on how that page may be improved.

PSI provides both lab and field data about a page. Lab data is useful for debugging issues, as it is collected in a controlled environment. However, it may not capture real-world bottlenecks. Field data is useful for capturing true, real-world user experience - but has a more limited set of metrics. See [How To Think About Speed Tools](https://developers.google.com/web/fundamentals/performance/speed-tools) for more information on the two types of data.

## Real-User Experience Data

Real-user experience data in PSI is powered by the [Chrome User Experience Report](https://developers.google.com/web/tools/chrome-user-experience-report) (CrUX) dataset. PSI reports real users' [First Contentful Paint](https://web.dev/fcp/) (FCP), [Interaction to Next Paint](https://web.dev/inp/) (INP), [Largest Contentful Paint](https://web.dev/lcp/) (LCP), and [Cumulative Layout Shift](https://web.dev/cls/) (CLS) experiences over the previous 28-day collection period. PSI also reports experiences for the experimental metric [Time to First Byte](https://web.dev/ttfb/) (TTFB), as well as the deprecated metric [First Input Delay](https://web.dev/fid/) (FID).

In order to show user experience data for a given page, there must be sufficient data for it to be included in the CrUX dataset. A page might not have sufficient data if it has been recently published or has too few samples from real users. When this happens, PSI will fall back to origin-level granularity, which encompasses all user experiences on all pages of the website. Sometimes the origin may also have insufficient data, in which case PSI will be unable to show any real-user experience data.

### Assessing Quality of Experiences

PSI classifies the quality of user experiences into three buckets: Good, Needs Improvement, or Poor. PSI sets the following thresholds in alignment with the [Web Vitals](https://web.dev/vitals/) initiative:

| |Good|Needs Improvement|Poor|
|-- |---|---|---|
|FCP|[0, 1800ms]|(1800ms, 3000ms]|over 3000ms|
|LCP|[0, 2500ms]|(2500ms, 4000ms]|over 4000ms|
|CLS|[0, 0.1]|(0.1, 0.25]|over 0.25|
|INP|[0, 200ms]|(200ms, 500ms]|over 500ms|
|TTFB (experimental)|[0, 800ms]|(800ms, 1800ms]|over 1800ms|

### Core Web Vitals

Core Web Vitals are a common set of performance signals critical to all web experiences. The Core Web Vitals metrics are INP, LCP, and CLS, and they may be aggregated at either the page or origin level. For aggregations with sufficient data in all three metrics, the aggregation passes the Core Web Vitals assessment if the 75th percentiles of all three metrics are Good. Otherwise, the aggregation does not pass the assessment. If the aggregation has insufficient data for INP, then it will pass the assessment if both the 75th percentiles of LCP and CLS are Good. If either LCP or CLS have insufficient data, the page or origin-level aggregation cannot be assessed.
***

## Appendix

*Note created on [[2024-04-30]] and last modified on [[2024-04-30]].*

### See Also

- [[PageSpeed Insights (PSI)]]
- [[Core Web Vitals]]

### Backlinks

```dataview
LIST FROM [[Tool - Google Page Speed Test]] AND -"CHANGELOG" AND -"04-RESOURCES/Tools/Tool - Google Page Speed Test"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024