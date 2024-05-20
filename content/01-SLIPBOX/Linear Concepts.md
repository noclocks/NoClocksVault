---
creation_date: 2024-05-03
modification_date: 2024-05-03
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Productivity
  - Status/Complete
aliases:
  - Linear Concepts
publish: true
permalink:
description:
image:
cssclasses:
---


# Linear Concepts

> [!SOURCE] Sources:
> - *[Concepts – Linear Docs](https://linear.app/docs/conceptual-model)*

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
> Gain a basic understanding of [[Tool - Linear|Linear]]'s design so you can set up your workspace and navigate efficiently.

![Linear interface showing active issues page](https://cdn.sanity.io/images/ornj730p/production/81ac25292faa05f7f4529a07f79f4cbc68998a71-2160x1327.png?w=1440&q=95&auto=format&dpr=2)

## [Basic concepts](https://linear.app/docs/linear-method#basic-concepts)

### [Workspace](https://linear.app/docs/linear-method#workspace)

A Linear workspace is the container for all issues, teams and other concepts relating to an individual company. As a user, you can have accounts on one or many workspaces and can switch between these accounts using the dropdown menu in the top left-hand corner of the application. Workspaces each have a unique URL in the style linear.app/example. When you log into Linear, you're logging into a specific workspace.

### [Teams](https://linear.app/docs/linear-method#teams)

A workspace has one or many teams within it. Teams typically represent groups of people who work together frequently, though in some cases you may choose to structure teams as parts of a product. Teams hold issues, and can have their own projects (though projects can also be shared between teams.)

Teams have their own settings available to configure features like Cycles, Triage, and Workflows so you can tailor each team to best fit how work gets done. Each team also contains an archive, which keeps a record of issues that are not being actively kept in your backlog (archive rules can be defined in team settings.)

### [Issues](https://linear.app/docs/linear-method#issues)

The most basic concept in Linear is the issue. Most other concepts in Linear are either associated with issues, or function to group issues together.

An issue represents a task described in plain language. Each issue must belong to a single Linear team, has an identifier constructed of its team ID and number, like "ENG-123".

Issues are required to have a title and status – all other properties and relations are optional. This makes it quick to create issues and cuts down on unnecessary work (see [_Write Issues Not User Stories_](https://linear.app/method/write-issues-not-user-stories)).

We support basic issue properties such as priority, estimate, label, due date, and assignee. You can create relations between issues to mark issues as blocked or blocking or create sub-issues.

You can create issues from anywhere in the app. Try it - open any page in the app and type C.

#### [Workflows](https://linear.app/docs/linear-method#workflows)

As you work on and complete issues, they'll move through workflows; a group of ordered issue statuses defined per-team. These are the statuses that you'll see group issues on list views and show up as column headers on boards. We create a default workflow for you that you can further customize to have more statuses, different names, and colors.

You can update issue statuses manually to reflect the current progress on that task. Where possible however, we recommend using integrations or automations to update issue status to avoid the need to "manage tickets".

For example, our GitHub and GitLab integrations move issues to _In Progress_ when you copy the git branch name and continues to update the status as the PR is drafted, opened, reviewed, and merged. Cycle automations move issues to and from the backlog and you can set issues to close and archive on their own so lists stay relevant.

![](https://cdn.sanity.io/images/ornj730p/production/80ad3ad6a4fb855f491f341737c8f8f5fb9cbcd2-16x16.svg?q=95&auto=format&dpr=2)

**Special Statuses  
**

-   **Backlog** is a status category in Linear. Each team has it's own backlog and teams can add additional backlog statuses to group issues down further.  
    
-   **Triage** is an optional status in Linear that makes it possible to review issues before accepting them and moving them to your team's backlog or cycles.

## [Organizing issues](https://linear.app/docs/linear-method#organizing-issues)

### [Projects](https://linear.app/docs/linear-method#projects)

Projects group issues towards a specific, time-bound deliverable, like launching a new feature. Projects have their own pages in Linear that display all issues related to a project, project details, and graphs that show progress and project completion date ranges. Projects can be shared across multiple teams and organized under Roadmaps or Project views.

#### [Milestones](https://linear.app/docs/linear-method#milestones)

Milestones are a concept used to further organize issues inside an individual projects. For each project, define milestones in a way that represent meaningful stages of completion for that project, and assign issues in the project to those milestones.

You can filter by milestones in a project, and easily see how close to completion an individual milestone is at a given time based on the issues belonging to that milestone.

### [Cycles](https://linear.app/docs/linear-method#cycles)

Cycles are similar to sprints and prioritize a set of issues during a specific time period. Cycles are automated and repeating; you'll set a start date and duration for cycles, which will then repeat every _N_ weeks_._ They specifically do not end in a release. Issues not completed during a cycle roll over to the next cycle and we display basic statistics around estimated workload and percentage completion.

Cycles do not necessarily have a thematic grouping like Projects, and recur automatically according to a schedule, where Projects are intentionally curated.

### [Issue Views](https://linear.app/docs/linear-method#issue-views)

Views group issues according to a set of filters. Some issue views come standard like a team's _Backlog, All,_ or _Active_ issues, and you can define views based on any filter available in Linear. Because they're based on filters, views are dynamic -- when an issue meets the filter set defining the view they'll appear, when they no longer meet those criteria the issue will leave the view. Views can be constructed to be visible to only you, a particular team or your whole workspace.

-   Access views to see all issues under a label, assigned to a user, or part of a particular cycle or project.
-   My Issues is a curated set of views that shows you your assigned issues with the most relevant ones first, issues you've created, and ones you're subscribed to.

To build custom views, use filters on an existing view and then create a custom view from those parameters. You can also go to Views in the sidebar and create a custom view from scratch.

## [Organizing Projects](https://linear.app/docs/linear-method#organizing-projects)

### [Project Views](https://linear.app/docs/linear-method#project-views)

Default project views (_All, Backlog, Active, Closed_) are accessible from the sidebar under a team. Projects will appear in those categories based on the status of the project.

As with issue views, Project Views are dynamic: when a project meets the filter criteria of the view it will appear there, when it no longer meets the criteria it will leave the view. Project views represent the actual state of projects in your workspace.

### [Roadmaps](https://linear.app/docs/linear-method#roadmaps)

Roadmaps allow you to set direction based on an intentionally curated set of projects. Unlike project views, roadmaps do not automatically inherit projects based on a set of filter criteria. You must manually select each project you wish to appear in a roadmap.

Roadmaps help your team plan for the future and organize projects around particular themes or outcomes.

## [**Taking actions**](https://linear.app/docs/linear-method#taking-actions)

Whenever you do something in Linear that changes an issue, project, or another piece of data, you're taking an action.

### [How it works](https://linear.app/docs/linear-method#how-it-works)

We've designed Linear so that you can take actions in multiple ways: using buttons, keyboard shortcuts, contextual menus, or by searching for the action in the command line. This makes it easy to figure out how to do anything in the app and build muscle memory since you're always following the same patterns.

For example, let's say you want to apply the label _bug_ to an issue. You can follow any of these steps to do it:

🐭 Open the issue and click the apply label button  
🐭 Right-click on the issue from the board or list view and use the contextual menu  
⌨️ Use the keyboard shortcut L  
⌨️ Open the command menu Cmd/Ctrl K then search `label`.

To do anything else to an issue–add an estimate, set priority, update status, set the assignee, add it to a project–you follow pretty much the same steps. To do anything to a project from the roadmap or project view, you also take similar steps.

![Gif showing how to apply labels ](https://cdn.sanity.io/images/ornj730p/production/61e4d3d6737bb7dd061e4b256a05148dbd2bcefd-800x500.gif?w=1440&q=95&auto=format&dpr=2)

### [Bulk actions](https://linear.app/docs/linear-method#bulk-actions)

It's easy to update multiple issues at a time in Linear. You can move issues across teams, to and from cycles and projects, apply labels, and change status to tens or hundreds of issues at once. Cmd/Ctrl A will select all issues on a view and then you can take the action using any of the aforementioned methods.

An `Undo` action (Cmd/Ctrl Z) reverses most actions.

### [Keyboard shortcuts](https://linear.app/docs/linear-method#keyboard-shortcuts)

Your keyboard is the fastest method for using Linear. Even if you don't use keyboard shortcuts normally, we recommend learning ones for common actions such as creating an issue. These are the most helpful to learn:

C to create an issue in any view  
Cmd/Ctrl K to open the command menu  
x to select  
Shift Up/Down or Shift Click to select multiple  
Esc to go back or clear a list selection

Shortcuts cannot be remapped in Linear at this time, though we may consider adding custom shortcuts in the future.

![Gif showing keyboard shortcuts panel](https://cdn.sanity.io/images/ornj730p/production/0b7cb2241179e14f43cdccd33387a8d9df8713c6-1200x813.gif?w=1440&q=95&auto=format&dpr=2)

### [Quick Navigation](https://linear.app/docs/linear-method#quick-navigation)

Shortcuts follow patterns so that you learn them quickly. Navigate between views with Gthen \_shortcuts: G then I to go to the Inbox, G then V to the current cycle, and G then B to the backlog.

### [Easy access](https://linear.app/docs/linear-method#easy-access)

O then \_ shortcuts launch menus to then open items on a list. O then F opens favorites, O then P opens projects, and Othen C opens cycles.

See the full list of shortcuts by pressing ?.

### [Command menu](https://linear.app/docs/linear-method#command-menu)

The command menu lets you search and take any actions applicable to your view or selection.

Launch the command menu with Cmd K on macOS or Ctrl K on Windows or Linux. When using our PWA on mobile or touchscreens, use the two-finger tap to open the command line. We also bring up the command menu when you're clicking on items in the UI that have a corresponding action command menu, such as applying a filter.

The command menu groups its commands based on their functionality. Groups are prioritized based on what you're focusing on, or the view you're currently in. For example, if you are looking at cycles, the command menu will first display commands that are related to cycles. Groups are then further subdivided based on the type of command, making it easier to skim over large sets.

### [Mouse](https://linear.app/docs/linear-method#mouse)

Of course, you can navigate and take actions with your mouse. We have buttons, more menus, and dropdowns throughout the app. Right-clicking on issues in lists or boards or projects on the timeline will bring up contextual menus with foolproof [safe areas](https://medium.com/linear-app/invisible-details-2ca718b41a44).

***

## Appendix

*Note created on [[2024-05-03]] and last modified on [[2024-05-03]].*

### Backlinks

```dataview
LIST FROM [[Linear Concepts]] AND -"CHANGELOG" AND -"01-SLIPBOX/Linear Concepts"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024