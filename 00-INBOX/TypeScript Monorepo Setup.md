---
creation_date: 2024-04-18
modification_date: 2024-04-18
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/NA
  - Topic/NA
  - Status/WIP
aliases:
  - TypeScript Monorepo Setup
publish: true
permalink:
description:
image:
cssclasses:
---

# Monorepo Setup with TypeScript

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

> [!NOTE] About
> A [[monorepo]] is a collection of many different apps and packages in a single codebase.
> The alternative setup is called **a [[polyrepo]]** - multiple codebases which are published and versioned separately.

```shell
pnpm dlx create-turbo@latest
```

## Sharing Code

### In a Polyrepo

In a polyrepo setup, the process for sharing code between applications is relatively lengthy.

Imagine that you have three separate repositories - `app`, `docs`, and `shared-utils`. Both `app` and `docs` depend on `shared-utils`, which is published as a package on npm.

Let's say a bug in `shared-utils` is causing a critical issue in both `app` and `docs`. You'll need to:

1. Make a commit in `shared-utils` fixing the error
2. Run a `publish` task inside `shared-utils` to publish it to npm
3. Make a commit in `app` bumping the version of the `shared-utils` dependency
4. Make a commit in `docs` bumping the version of the `shared-utils` dependency
5. `app` and `docs` are now ready to be deployed.

The more apps you have that depend on `shared-utils`, the longer this process takes. It can be extremely arduous.

### In a Monorepo

In a monorepo setup, `shared-utils` would be _in the same codebase_ as `app` and `docs`. This makes the process very simple:

1. Make a commit in `shared-utils` fixing the error
2. `app` and `docs` are now ready to be deployed.

No versioning is required, because `app` and `docs` don't depend on the version of `shared-utils` in npm - they depend on the **version that's in the codebase**.

This makes it possible to create single commits which fix bugs in multiple apps and packages at once. This can be an enormous gain in speed for teams.

## How do Monorepos Work?

The main building block of the monorepo is the [workspace](https://turbo.build/repo/docs/handbook/workspaces). Each application and package you build will be in its own workspace, with its own `package.json`. As you'll learn from our guide, workspaces can **depend on each other**, meaning your `docs` workspace can depend on `shared-utils`:

```json
{
  "dependencies": {
    "shared-utils": "workspace:*"
  }
}
```

Workspaces are managed by the same CLI which [installs your dependencies](https://turbo.build/repo/docs/handbook/package-installation).

## The Root workspace

You'll also have a root workspace - a `package.json` in the root folder of your codebase. This is a useful place for:

1. Specifying dependencies which are present across your entire monorepo
2. Adding tasks that operate on the _whole_ monorepo, not just individual workspaces
3. Adding documentation on how to use the monorepo