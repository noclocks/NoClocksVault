---
creation_date: 2024-09-22
modification_date: 2024-09-22
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Obsidian
  - Topic/PKM
  - Topic/Meta
  - Status/WIP
aliases:
  - Obsidian Tagging Strategy
  - Obsidian Tag Management
  - Obsidian Tags
  - Vault Tags
  - Tagsonomy
publish: true
permalink:
description:
image:
cssclasses:
---

# Obsidian Tagging Strategy ("Tagsonomy")

> [!SOURCE] Sources:
> - *[My Notes Tagsonomy | Richard Carter](http://richardcarter.com/sidelines/my-notes-tagsonomy/comment-page-1/)*

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
> This note is about how [[_README|Obsidian]] **tags** are implemented and used throughout this vault.

One simple but very powerful thing electronic systems like [[Obsidian]] allow you to do is assign one or more ‘tags’ (prefixed with a `#` symbol) and ‘sub-tags’ to individual notes. This enables you, among other things, to indicate what *type* of note they are. 

*Obviously, there are many different ways to do this, and I struggled for quite some time to come up with a taxonomy—an, if you will, **tagsonomy** -- that worked for me.*

[[Obsidian]] tags can be organized into a hierarchical structure, similar to a [[virtual file system]], using forward slashes (`/`) as the separator between parent/child nested tags.

Some other notes regarding [[Obsidian]] tags:

- **Tag Creation**: 

In general, tags are separated into the following root-level categories representing note "properties" and "state":

- `Status/<NoteStatus>`: Define the note's current state as a "Status" from a pre-defined set of possible note statuses.
- `Topic/<NoteTopic>`: Define the note's associated topic(s) - can be multiple topics and nested as many layers as necessary. Important to keep the nested tags consistent however.
- `Type/<NoteType>`: Define the note's "Type" from a pre-defined set of possible note types

## [[../../04-RESOURCES/Definitions/Acronyms/Yet Another Markup Language (YAML)|YAML]] Metadata Implementation

All note tags should be declared in the note's top-level [[YAML]] Frontmatter (Metadata) like so:

```YAML
tags:
  - Type/<NoteType>
  - Topic/<NoteTopic>
  - Status/<NoteStatus>
```

For example, this note's frontmatter uses the following tags defined in its frontmatter:

```YAML
tags:
  - Type/Note
  - Topic/Obsidian
  - Topic/PKM
  - Topic/Meta
  - Status/WIP
```

Notice how multiple `Topic/*` tags are implemented as this note relates to the #Topic/Obsidian,
#Topic/PKM, and the #Topic/Meta topics, respectively. 

## Status

The Note Status Tag should be implemented on every note in the vault, and by default new notes should typically use the #Status/WIP tag as the note is a "Work in Progress" initially.

The other defined Status tags available are enumerated below:

- `#Status/Complete`: Note is complete and will remain unchanged in the future.
- `#Status/Draft`: Note is considered as being in the "Draft" phase - typically specific to notes pertaining to content.
- `#Status/Ongoing`: Notes that will never be considered "Complete" as they are "ongoing" (i.e. `README`s, `MOC`s, etc.)
- `#Status/Todo`: Notes with action items
- `#Status/WIP`: Work in Progress

## Topic



## All Tags

```dataview
table file.etags as "tags"
```

```dataview
TABLE WITHOUT ID length(rows) as "Tag count", join(rows.unique, ", ") as "Unique tags"
WHERE file.etags 
FLATTEN file.etags as "tag"
GROUP BY tag
FLATTEN rows.tag[0] as unique
GROUP BY true
```

***

## Appendix

*Note created on [[2024-09-22]] and last modified on [[2024-09-22]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Obsidian - Tagging Strategy]] AND -"CHANGELOG" AND -"03-AREAS/Obsidian/Obsidian - Tagging Strategy"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024