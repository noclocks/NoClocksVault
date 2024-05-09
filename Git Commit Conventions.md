---
creation_date: 2024-05-09
modification_date: 2024-05-09
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Guide
  - Topic/Dev
  - Status/WIP
aliases:
  - Git Commit Conventions
publish: true
permalink:
description:
image:
cssclasses:
---


# Git Commit Conventions

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

## Overview

## Structure

1. First line is a subject line. It should have size about 50 characters, maximum limit is 80. Subject line is capitalized and hasn't period at the end;
2. A blank line separates subject from body;
3. Detailed description of the change in the body, breaking paragraphs where needed. The body should explain what  you did and why vs. how. The body also starts with a capitalized letter. Bullet points are made with an asterisk (*);
4. In case if a bug tracking system is used, bug Id's line is placed at the very end after a blank line.

## Subject Line Tags

- [FEATURE]: A new feature (also small additions). Most likely it will be an added feature, but it could also be removed;
- [BUGFIX]: A fix for a bug;
- [STYLE]: Changes in layout, page style and css files;
- [CLEANUP]: Code formatting, improvements in code style and readability;
- [DOCS]: Changes to documentation;
- [TEST]: Adding, changing, refactoring tests - no production code change;
- [OTHER]: Anything not covered by the above categories.


## Flags have to be added under certain circumstances

- (!!!) : Breaking change. Significant changes in software architecture or logic, that affect existing features and extentions or change user experience;
- (DB): Changes that require database structure or data to be updated;
- (WIP): Work in progress. This flag will be removed, once the final version of a change is available. Changes marked WIP are never merged.


## Tags usage examples

1. [STYLE] Change size of tag h1
2. [CLEANUP] Few code formatting
3. [BUGFIX] Fix bugs 101 and 110
4. [FEATURE] Add new universal system class object
5. (!!!)[FEATURE] Added new class ChartItem
6. (!!!)(DB)[FEATURE] Add new column ApplicationUserID


## Commit Message Example

(!!!)(DB)[FEATURE] Rewrite stored procedure

Additional information about commit changes


## Source
- [WIKI OpenStack Information in commit messages](https://wiki.openstack.org/wiki/GitCommitMessages#Information_in_commit_messages)
- [Karma-Runner Git Commit Msg](http://karma-runner.github.io/0.8/dev/git-commit-msg.html)
- [Wiki.Typo3.Org CommitMessage Format](http://wiki.typo3.org/CommitMessage_Format_(Git))
- [How to Write a Git Commit Message ](https://webcache.googleusercontent.com/search?q=cache:PM7POmjONvgJ:https://chris.beams.io/posts/git-commit/+&cd=1&hl=sl&ct=clnk&gl=si&client=firefox-b-d)


## Resources

***

## Appendix

*Note created on [[2024-05-09]] and last modified on [[2024-05-09]].*

### Backlinks

```dataview
LIST FROM [[Git Commit Conventions]] AND -"CHANGELOG" AND -"//Git Commit Conventions"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024