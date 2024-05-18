---
creation_date: 2024-05-13
modification_date: 2024-05-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Acronym
  - Topic/Dev/React
  - Status/WIP
aliases:
  - HOC
  - HOCs
  - Higher-Order Components
  - Higher-Order Component
  - Higher Order Components
publish: true
permalink:
description:
image:
cssclasses:
---

# Higher-Order Components (HOCs)

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

> [!DEFINITION]
> Higher-Order Components (HOCs) are pretty neat! They’re functions that take a component and return a new component with more features or behaviors. Basically, they let you reuse component logic and handle things like authentication or data fetching.

For example, you can use an HOC to check if a user is authenticated and then wrap a component that needs authentication with it. If the user is authenticated, the wrapped component will show up. But if not, they’ll be sent to the login page. Here’s an example to give you an idea of what it looks like:

```typescript
function requireAuth(Component) {
  return function AuthenticatedComponent(props) {
    const isAuthenticated = checkAuth();
	
	if (isAuthenticated) {
	  return <Redirect to="/login" />;
	}

	return <Component {...props} />;
  };
}

const WrappedComponent = requireAuth(MyComponent);
```

Alright, so in this example we got this function called requireAuth, which gets a component as input and returns a new one that checks if the user is logged in. If not, it takes the user to the login page. Otherwise, the wrapped component is rendered with the extra props from the HOC.

Now, we can also use HOCs to wrap a component that needs some data fetching. Basically, the HOC will fetch the data and pass it down to the component as props.

Check it out:

![](https://i.imgur.com/nieXdsx.png)

So in this example, the withDataFetching function takes a component and gets data from a URL to pass it down as props. If there’s an error, it goes into the error prop, and if the data’s still loading, the isLoading prop is set to true.

There are plenty of other rad HOCs you can use with React too! One of them is memo. Instead of causing unnecessary re-renders even if a component’s props remain the same, thereby slowing down your React app, memo allows you to optimize your component so that it only re-renders if the props it receives have changed, making your app more efficient and improving performance. This can be a real game-changer for optimizing performance in your React app.

But there are also some other HOCs that are commonly used in popular React libraries. For example, there’s connect from the react-redux library, which connects a component to the Redux store, so it can access the store’s state and dispatch functions. This means you can easily create components that react to changes in the Redux store. Another one is withFirebase from the react-redux-firebase library, which provides a Firebase instance to a component, so it can interact with the Firebase backend.

HOCs are pretty cool because they let you reuse component logic and deal with problems that affect the whole app. It’s like killing two birds with one stone! HOCs make it so your components are nice and tidy, they’re easy to take care of, they’re focused and easy to maintain.

***

## Appendix

*Note created on [[2024-05-13]] and last modified on [[2024-05-13]].*

### Backlinks

```dataview
LIST FROM [[Higher-Order Components (HOCs)]] AND -"CHANGELOG" AND -"//Higher-Order Components (HOCs)"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024


