---
creation_date: 2024-05-13
modification_date: 2024-05-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Guide
  - Topic/Dev/Web
  - Topic/Dev/Design
  - Topic/Dev/Frontend
  - Topic/Dev/React
  - Topic/Dev/JavaScript
  - Topic/Dev/TypeScript
  - Status/WIP
aliases:
  - React Development Best Practices
  - React Development Best Practices Guide
publish: true
permalink:
description:
image:
cssclasses:
---

# React Development Best Practices Guide

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
> - *[10 React Best Practices You Need to Follow In 2023](https://www.makeuseof.com/must-follow-react-practices/)*

See Also: [[React Best Practices.pdf]].

Breakdown:

```table-of-contents
title:
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 3 # Include headings from the specified level
maxLevel: 3 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

### 1. Functional Components and Hooks

> [!TIP]
> *Utilize [[Tool - React.js|React]]'s Functional Components (`FC`) and hooks instead of class-based components. They result in more concise and readable code.*

```typescript
import React from 'react';
function StudentList() {
  return (
    <div>StudentList</div>
  )
}
export default StudentList
```

### 2. Avoid Using State (If Possible)

[[Tool - React.js|React]] state keeps track of the data which when changed triggers the React component to re-render.

When building [[Tool - React.js|React]] applications, avoid using state as much as possible since the more state you use, the more data you have to keep track of across your app.

One way of minimizing the use of state is by declaring it only when necessary. For instance, if you are fetching user data from an [[Application Programming Interface (API)|API]], store the whole user object in the state instead of storing the individual properties.

So, instead of:

```typescript
const [userName, setUserName] = useState('')
const [password, setPassword] = useState('')
```

instead do this:

```typescript
const [user, setUser] = useState({})
```

### 3. Maintain Clear Folder Structure

> [!TIP]
> Utilize Proper Project Structure and Organize Files for your React project. Organize files related to the same component into the same folder.

Folder structures help you and other developers understand the arrangement of files and assets being used in a project.

With a good folder structure, it’s easy to navigate around easily, saving time and helping avoid confusion. Folder structures differ with each team’s preferences, but here are a few of the commonly used folder structures in React.

#### Grouping by Features or Routes

Grouping files in your folder according to their routes and features helps keep everything about a particular feature in one space. For example, if you have a user dashboard, you can have the JavaScript, CSS, and test files relating to the dashboard in one folder.

Here’s an example to demonstrate that:

```plaintext
dashboard/
  index.tsx
  dashboard.css
  dashboard.test.tsx
home/
  index.tsx
  Home.css
  HomeAPI.ts
  Home.test.tsx
blog/
  index.tsx
  Blog.css
  Blog.test.tsx
```


#### Component-Centric Structure

When deciding on a folder structure for your React app, go for a component-centric one. This means storing all the files concerning one component in one folder.

If you were creating a `NavBar` component, for example, create a folder: `src/components/NavBar/` containing the component file (`NavBar.tsx`), the style sheet (`NavBar.module.css`), other [[04-RESOURCES/Code/JavaScript/_README|JavaScript]]/[[04-RESOURCES/Code/TypeScript/_README|TypeScript]] files, and asset files used in the component.

A single folder containing all of a component’s files makes it easy to reuse, share, and debug. If you need to see how a component works you only need to open a single folder.

Other React folder best practices are:

- Use index files to abstract the implementation details of your component file. Considering the `NavBar` example, create a `NavBar` folder and in this folder add a component file named `index.ts` (or `.js`) file.
- Keep reusable components in a separate folder. If you have components that more than one part of your application use, consider keeping them in a folder named components. This will help you locate them easily.
- Keep utility functions in a separate folder such as a `src/lib` or `src/helpers` folder. This will make it easier to manage and reuse these functions later on.

### 4. Avoid Using Indexes as Key Props

React uses keys to uniquely identify items in an array. With keys, React can pinpoint which item has been changed, added, or removed from the array.

When rendering arrays, you might use the index as the key.

```typescript
const Items = () => {
  const arr = ["item1", "item2", "item3", "item4", "item5"];

  return (
    <>
      {arr.map((elem, index) => {
        <li key={index}>{elem}</li>;
      })}
    </>
  );
};
```

While this sometimes works, using the index as a key can introduce issues especially if the list is expected to change. Consider this list.

```typescript
const arr = ["item1", "item2", "item3", "item4", "item5"];
```

Currently, the first list item, “Item1” is at index zero, but if you added another item at the beginning of the list, the “Item1” index would change to 1 which changes the behavior of your array.

The solution is to use a unique value as the index to ensure that the identity of the list item is maintained.

> [!SEEALSO] See Also:
> [[JavaScript - Set Operator]] which will ensure only unique items in an array are kept.

### 5. Opt for Fragments Instead of Divs

> [!TIP]
> In [[Tool - React.js|React]], components need to return code that is wrapped inside a signgle [[Hyper Text Markup Language (HTML)|HTML]] tag such as a `<div>` or a [[Tool - React.js|React]] *fragment*: `<>`. You should use fragments.

Using `<div>` increases the [[Document Object Model (DOM)|DOM]] size, especially in huge projects since the more tags or [[Document Object Model (DOM)|DOM]] nodes you have, the more memory your website needs and the more power a browser uses to load your website. This leads to lower page speed and potentially poor user experience.

One example of eliminating unnecessary `<div>` tags is not using them when returning a single element.

```javascript
const Button = () => {  
  return <button>Display</button>;  
};
```

### 6. Adhere to Naming Conventions

> [!TIP]
> Naming conventions help improve code readability. This is not only applicable to component names but even your variable names, all the way to your Hooks.

The [[Tool - React.js|React]] documentation does not offer any official pattern for naming your components. 

The most used naming conventions are `camelCase` and `PascalCase`.

- `PascalCase` is mostly used for component names:

```typescript
import React from 'react';
function StudentList() {
  return (
    <div>StudentList</div>
  )
}
export default StudentList
```

The component above is named StudentList, which is much more readable than Studentlist or studentlist.

On the other hand, the camelCase naming convention is mostly used for naming variables, Hooks, functions, arrays, and so on:

```typescript
const [firstName, setFirstName] = useState("Ihechikara");
const studentList = [];
const studentObject = {};
const getStudent = () => {}
```

You should always use `PascalCase` when naming components to differentiate them from other non-component `JSX`/`TSX` files. For example: `TextField`, `NavMenu`, and `SuccessButton`.

Use `camelCase` for functions declared inside [[Tool - React.js|React]] components like `handleInput()` or `showElement()`.

### 7. Avoid Repetition

If you notice you are writing duplicated code, convert it into components that can be reused.

For example, it makes more sense to create a component for your navigation menu instead of repeatedly writing the code in every component that requires a menu.

That’s the advantage of a component-based architecture. You can break down your project into small components you can reuse across your application.

### 8. De-structure Component Props

> [!TIP]
> Utilize *Object Destructuring for Props*.

Instead of passing the props object, use object destructuring to pass the prop name. This discards the need to refer to the props object each time you need to use it.

For example, the following is a component that uses props as is.

```javascript
const Button = (props) => {
  return <button>{props.text}</button>;
};
```

With object destructuring, you refer to the text directly.

```javascript
const Button = ({text}) => {
  return <button>{text}</button>;
};
```

### 9. Dynamically Render Arrays Using Map

Use `map()` to dynamically render repeated HTML blocks. For example, you can use `map()` to render a list of items in `<li>` tags.

```javascript
const Items = () => {
  const arr = ["item1", "item2", "item3", "item4", "item5"];
  return (
    <>
      {arr.map((elem, index) => {
        <li key={elem+index}>{elem}</li>;
      })}
    </>
  );
};
```

For comparison purposes, here is how you can render the list without map(). This approach is very repetitive.

```javascript
const List = () => {
  return (
    <ul>
      <li>Item1</li>
      <li>Item2</li>
      <li>Item3</li>
      <li>Item4</li>
      <li>Item5</li>
    </ul>
  );
};
```

### 10. Write Tests for Each Component

Write tests for the components you create as it reduces the possibility of errors. Testing ensures that the components are behaving as you would expect. One of the [most common testing frameworks for React is Jest](https://www.makeuseof.com/react-components-testing-jest-library/), and it provides an environment where you can execute your tests.


### Other Tips

#### Institute a Structured Import Order

> [!TIP]
> As your React application continues to grow, you’re bound to make extra imports. The structure of your imports go a long way in helping you understand what makes up your components.

As a convention, grouping similar utilities together seems to work fine. For instance, you can group external or third party imports separately from local imports.

Take a look at the following example:

```typescript
import { Routes, Route } from "react-router-dom";
import { createSlice } from "@reduxjs/toolkit";
import { Menu } from "@headlessui/react";
import Home from "./Home";
import logo from "./logo.svg";
import "./App.css";
```

In the code above, we first grouped third party libraries together (these are libraries we had to install beforehand).

We then imported files we created locally like stylesheets, images, and components.

For the sake of simplicity and easy understanding, our example doesn’t depict a very large codebase, but bear in mind being consistent with this format of imports will help you and other developers understand your React app better.

You can go further grouping your local files according to file types if that works for you — that is, grouping components, images, stylesheets, Hooks, and so on separately under your local imports.

Here’s an example:

```typescript
import Home from "./Home";
import About from "./About"
import Contact from "./Contact"
import logo from "./logo.svg";
import closeBtn from "./close-btn.svg"
import "./App.css";
import "Home.css";
```

#### Use a Linter

> [!TIP]
> A [linter tool](https://kinsta.com/blog/wordpress-workflow/#take-advantage-of-linting) helps improve code quality. One of the most popular linter tools for JavaScript and React is [[Tool - ESLint|ESLint]]. 
> 
> But how exactly does this help with improving code quality?

A linter tool helps with consistency in a code base. When [using a tool like ESLint](https://kinsta.com/blog/wordpress-workflow/#step-6-use-linting), you can set the rules you want every developer working on the project to follow. These rules may include requirements for using double quotes instead of single quotes, braces around arrow functions, a particular naming convention, and so much more.

The tool observes your code and then notifies you when a rule has been broken. The keyword or line that breaks the rule would usually be underlined in red.

Since every developer has their own style of coding, linter tools can help with code uniformity.

Linter tools can also help us fix bugs easily. We can see spelling errors, variables that have been declared but not used, and other such functionalities. Some of these bugs can be fixed automatically as you code.

Tools like ESLint are built into most [code editors](https://kinsta.com/blog/free-html-editor/) so you get linter functionalities on the go. You can also configure it to suit your coding requirements.

#### Employ Snippet Libraries

> [!TIP]
> Snippet libraries can make development faster by providing prebuilt code that developers use often.

The cool thing about using a framework with an active community is the availability of tools being created to make development easier.

A good example is the `ES7+ React/Redux/React-Native` snippets extension in [[Tool - VSCode|Visual Studio Code]], which has a lot of helpful commands for generating prebuilt code. For instance, if you want to create a React functional component without typing out all the code, all you need to do using the extension is type `rfce` and hit `Enter`.

The command above will go on to generate a functional component with a name that corresponds with the file name. We generated the code below using the ES7+ React/Redux/React-Native snippets extension:

```typescript
import React from 'react';
function StudentList() {
  return (
    <div>StudentList</div>
  )
}
export default StudentList
```

Another useful snippet tool is the Tailwind CSS IntelliSense extension, which simplifies the process of styling web pages with [Tailwind CSS](https://kinsta.com/blog/laravel-tailwind/). The extension can help you with autocompletion by suggesting utility classes, syntax highlighting, and linting functionalities. You can even see what your colors look like while coding.

#### Consider Combining CSS with JS

When working on large projects, using different stylesheet files for each component can make your file structure bulky and hard to navigate around.

A solution to this problem is to combine your CSS and JSX code. You can use frameworks/libraries like Tailwind CSS and Emotion for this.

Here’s what styling with Tailwind CSS looks like:

```javascript
<p className="font-bold mr-8">resource edge</p>
```

The code above give the paragraph element a bold font and adds some margin on the right. We are able to do this using the framework’s utility classes.

Here’s how you’d style an element using Emotion:

```javascript
<h1
css={css`
  color: black;
  font-size: 30px;
`}
>
Hello World!
</h1>
```

#### Limit Component Creation

One of the core features of React is code reusability. You can create a component and reuse its logic as many times as possible without rewriting that logic.

With that in mind, you should always limit the number of components you create. Not doing so bloats the file structure with unnecessary files that shouldn’t exist in the first place.

We’ll use a very easy example to demonstrate this:

```js
function UserInfo() {
  return (
    <div>
    <h1>My name is Ihechikara.</h1>
    </div>
  );
}
export default UserInfo
```

The component above shows the name of a user. If we were to create a different file for every user, we’d eventually have an unreasonable number of files. (Of course, we’re using user information to keep things simple. In a real life situation, you may be dealing with a different type of logic.)

To make our component reusable, we can make use of Props. Here’s how:

```js
function UserInfo({userName}) {
  return (
    <div>
    <h1>My name is {userName}.</h1>
    </div>
  );
}
export default UserInfo
```

After that, we can then import this component and use it as many times as we want:

```js
import UserInfo from "./UserInfo";
function App() {
  return (
    <div className="App">
    <UserInfo userName={"Ihechikara"} />
    <UserInfo userName={"John"} />
    <UserInfo userName={"Jane"} />
    </div>
  );
}
export default App;
```

Now we have three different instances of the `UserInfo` component coming from the logic created in one file instead of having three separate files for each user.

#### Implement Lazy Loading

Lazy loading is very useful as your React app grows. When you have a big codebase, [load time for your web pages](https://kinsta.com/blog/ttfb/) slows down. This is because the whole app has to be loaded every time for every user.

“Lazy loading” is a term used for various implementations. Here, we associate it with JavaScript and React, but you can also [implement lazy loading on images and videos](https://kinsta.com/blog/wordpress-lazy-load/).

By default, React bundles and deploys the whole application. But we can change this behavior using lazy loading, otherwise known as code splitting.

Basically, you can limit what section of your app gets loaded at a particular point. This is accomplished by splitting your bundles and only loading those relevant to the user’s requirements. For instance, you can first load only the logic required for the user to sign in, then load the logic for the user’s dashboard only after they have successfully signed in.

#### Employ Reusable Hooks

Hooks in React let you harness some of React’s additional functionalities, like interacting with your component’s state and running after-effects in relation to certain state changes in your component. We can do all this without writing class components.

We can also make Hooks reusable so we don’t have to retype the logic in every file they’re used. We do this by creating custom Hooks that can be imported anywhere in the app.

In the example below, we’ll create a Hook for fetching data from external APIs:

```js
import { useState, useEffect } from "react";
function useFetchData(url) {
  const [data, setData] = useState(null);
  useEffect(() => {
    fetch(url)
    .then((res) => res.json())
    .then((data) => setData(data))
    .catch((err) => console.log(`Error: ${err}`));
  }, [url]);
  return { data };
}
export default useFetchData;
```

We have created a Hook for fetching data from APIs above. Now it can be imported into any component. This saves us the stress of typing out all that logic in every component where we have to fetch external data.

The type of custom Hooks we can create in React is limitless, so it’s up to you to decide how to use them. Just remember that if it’s a functionality that has to be repeated across different components, you should definitely make it reusable.

#### Log and Manage Errors

There are different ways of handling errors in React like using error boundaries, try and catch blocks or using external libraries like `react-error-boundary`.

The built in error boundaries that was introduced in React 16 was a functionality for class components so we won’t discuss it because it’s advisable that you use functional components instead of class components.

On the other hand, using a `try` and `catch` block only works for imperative code, but not declarative code. This means that it’s not a good option when working with JSX.

Our best recommendation would be to use a [library like react-error-boundary](https://github.com/bvaughn/react-error-boundary). This library provides functionalities that can be wrapped around your components, which will help you detect errors while your React app is being rendered.

#### Monitor and Test Code

[Testing your code during development](https://kinsta.com/blog/code-review-tools/) helps you write [maintainable code](https://kinsta.com/blog/html-best-practices/). Unfortunately, this is something a lot of developers neglect.

Although many may argue that testing isn’t a big deal when building your web app, it comes with innumerable advantages. Here are just a few:

- Testing helps you [detect errors and bugs](https://kinsta.com/blog/debugging-wordpress-performance/).
- Detecting bugs leads to improved code quality.
- Unit tests can be documented for data collection and future reference.
- Early bug detection saves you the cost of paying developers to put out the fire the bug could cause if left unchecked.
- Bug-free apps and sites [earn trust and loyalty from their audience](https://kinsta.com/blog/trust-badges/), which leads to greater growth.

You can use tools like [Jest](https://kinsta.com/blog/jest/) or React Testing Library to test your code. There are [plenty of testing tools](https://kinsta.com/blog/performance-testing-tools/) you can choose from — it all comes down to the one that works best for you.

You can also test your React apps as you build them by running the apps [in your browser](https://kinsta.com/blog/microsoft-edge-vs-chrome/). You’d usually get any detected error displayed on the screen. This is similar to developing WordPress sites using [DevKinsta](https://kinsta.com/devkinsta/) — a tool that allows you to design, develop, and deploy WordPress sites on your local machine.

#### Use a Fast and Secure Hosting Provider

If you want to make your web app accessible to everyone after building it, you’d have to host it. It is important that you use a fast and secure hosting provider.

Hosting your website gives you access to different tools that make scaling and managing your website easy. The server where your website is hosted makes it possible for the files on your local machine to be stored securely on the server. The overall benefit of hosting your website is that other people get to see the awesome stuff you’ve created.

There are a variety of platforms that provide free hosting services to developers like Firebase, Vercel, Netlify, [GitHub Pages](https://kinsta.com/blog/github-pages/), or paid services like [Azure, AWS](https://kinsta.com/blog/aws-vs-azure/), GoDaddy, Bluehost, and so on.

You can also use [Kinsta’s Application Hosting platform](https://kinsta.com/application-hosting/). All you need to do is connect a GitHub repository, choose from Kinsta’s 25 globally positioned data centers, and go. You’ll receive access to fast setup, 24/7 support, top-of-the-line security, custom domains, advanced reporting and monitoring tools, and more.

## Conclusion

> [!NOTE]
> React Is a Powerful Tool, but You Must Follow Certain Practices

Although React is very flexible in how you can use it, following specific practices will help you get the most out of your experience.

When following these tips, keep your particular project and goals in mind as different React best practices may be more relevant in different contexts. For instance, a project with a small team and a limited scope may not require the same level of folder organization as a large project with multiple teams working together.

Writing React code can be a little difficult if the developers do not adhere to its best practices. Here are 20 ultimate react best practices to follow in 2023 to keep your ducks in a row.

1. Significant File Organization
2. Small and Specific Functional Components
3. Don’t Use Indexes as a Key Prop
4. Pick Fragments Over Divisions
5. Naming Conventions
6. Initializing React Component State Without Class Constructor
7. DRY Your React Code
8. Eliminating Redundancy with JavaScript Destructuring
9. Prefer Passing Objects
10. Use React Developer Tools
11. Conditional Rendering Practices
12. Use Snippet Libraries
13. CSS in JavaScript
14. Lazy Loading Implementation
15. Testing and Monitoring Code
16. Use a Fast and Secure Hosting Provider
17. Managing State in ReactJS Application
18. Writing clean and readable code using JSX
19. Implementing proper routing with React Router
20. Handling errors and debugging in a ReactJS application

***

## Appendix

*Note created on [[2024-05-13]] and last modified on [[2024-05-13]].*

#### See Also

- [[Tool - React.js|React]]
- [[04-RESOURCES/Code/React/_README|React Code]]
- [[04-RESOURCES/Code/TypeScript/_README|TypeScript]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Tool - Node.js|Node.js]]
- [[Checklist - Frontend Design|Frontend Design]]
- [[MOC - Development|Development Map of Content]]

#### Backlinks

```dataview
LIST FROM [[Guide - React Development Best Practices]] AND -"CHANGELOG" AND -"04-RESOURCES/Guides/Guide - React Development Best Practices"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024