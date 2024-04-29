---
creation_date: 2024-04-12
modification_date: 2024-04-12
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/JavaScript
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/JavaScript
  - Status/WIP
aliases:
  - JavaScript Screen Wake Lock API Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# JavaScript Screen Wake Lock API

> [!SOURCE] Sources:
> - *[Screen Wake Lock API - Web APIs | MDN (mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/API/Screen_Wake_Lock_API)*
> - *[Wake Lock Demo (mdn.github.io)](https://mdn.github.io/dom-examples/screen-wake-lock-api/)*
> - *[14 Lesser-Known but Incredibly Useful Web APIs You Should Know About | by Nebula Nomad | Mar, 2024 | JavaScript in Plain English](https://javascript.plainenglish.io/14-lesser-known-but-incredibly-useful-web-apis-you-should-know-about-91ba92ea8cf4)*

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!example] **Code Snippet Metadata**:
> - Date:: [[2024-04-12]]
> - Language: [[JavaScript]]
> - Description:: "Code snippets showcasing the Screen Wake Lock API with JavaScript."

## Code Snippet

- Example [[MOC - JavaScript|JavaScript]] Script:

```javascript
// status paragraph
const statusElem = document.querySelector('#status p');
// toggle button
const wakeButton = document.querySelector('[data-status]');
// checkbox
const reaquireCheck = document.querySelector('#reaquire');

// change button and status if wakelock becomes aquired or is released
const changeUI = (status = 'acquired') => {
  const acquired = status === 'acquired' ? true : false;
  wakeButton.dataset.status = acquired ? 'on' : 'off';
  wakeButton.textContent = `Turn Wake Lock ${acquired ? 'OFF' : 'ON'}`;
  statusElem.textContent = `Wake Lock ${acquired ? 'is active!' : 'has been released.'}`;
};
// test support
let isSupported = false;

if ('wakeLock' in navigator) {
  isSupported = true;
  statusElem.textContent = 'Screen Wake Lock API supported 🎉';
} else {
  wakeButton.disabled = true;
  statusElem.textContent = 'Wake lock is not supported by this browser.';
}

if (isSupported) {
  // create a reference for the wake lock
  let wakeLock = null;

  // create an async function to request a wake lock
  const requestWakeLock = async () => {
    try {
      wakeLock = await navigator.wakeLock.request('screen');

      // change up our interface to reflect wake lock active
      changeUI();

      // listen for our release event
      wakeLock.onrelease = function (ev) {
        console.log(ev);
      };
      wakeLock.addEventListener('release', () => {
        // if wake lock is released alter the button accordingly
        changeUI('released');
      });
    } catch (err) {
      // if wake lock request fails - usually system related, such as battery
      wakeButton.dataset.status = 'off';
      wakeButton.textContent = 'Turn Wake Lock ON';
      statusElem.textContent = `${err.name}, ${err.message}`;
    }
  }; // requestWakeLock()

  // if we click our button
  wakeButton.addEventListener('click', () => {
    // if wakelock is off request it
    if (wakeButton.dataset.status === 'off') {
      requestWakeLock();
    } else {
      // if it's on release it
      wakeLock.release().then(() => {
        wakeLock = null;
      });
    }
  });

  const handleVisibilityChange = () => {
    if (wakeLock !== null && document.visibilityState === 'visible') {
      requestWakeLock();
    }
  };

  reaquireCheck.addEventListener('change', () => {
    if (reaquireCheck.checked) {
      document.addEventListener('visibilitychange', handleVisibilityChange);
    } else {
      document.removeEventListener('visibilitychange', handleVisibilityChange);
    }
  });
} // isSupported
```

## Example

- Example [[Hyper Text Markup Language (HTML)|HTML]] Document with Script:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Wake Lock Demo</title>
    <style>
      #status {
        width: 50vw;
        min-width: 500px;
        margin-top: 20px;
      }
      #status h2 {
        margin-top: 0px;
      }
      #status p {
        padding-left: 20px;
      }
      [data-status='off'] ~ #status {
        border: 2px solid red;
      }
      [data-status='on'] ~ #status {
        border: 2px solid green;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>Wake Lock Demo</h1>
    </header>

    <p>The button below changes depending on whether wake lock is active or not.</p>

    <button data-status="off">Turn Wake Lock ON</button>

    <section id="status">
      <h2>Wake Lock Status</h2>
      <p></p>
    </section>

    <p>Wake lock will automatically release if if the tab becomes inactive.</p>
    <p>
      To re-activate the wake lock automatically when the tab becomes active again, check this box:
      <input
        type="checkbox"
        id="reaquire"
      />
    </p>
  </body>
  <script>
    // status paragraph
    const statusElem = document.querySelector('#status p');
    // toggle button
    const wakeButton = document.querySelector('[data-status]');
    // checkbox
    const reaquireCheck = document.querySelector('#reaquire');

    // change button and status if wakelock becomes aquired or is released
    const changeUI = (status = 'acquired') => {
      const acquired = status === 'acquired' ? true : false;
      wakeButton.dataset.status = acquired ? 'on' : 'off';
      wakeButton.textContent = `Turn Wake Lock ${acquired ? 'OFF' : 'ON'}`;
      statusElem.textContent = `Wake Lock ${acquired ? 'is active!' : 'has been released.'}`;
    };
    // test support
    let isSupported = false;

    if ('wakeLock' in navigator) {
      isSupported = true;
      statusElem.textContent = 'Screen Wake Lock API supported 🎉';
    } else {
      wakeButton.disabled = true;
      statusElem.textContent = 'Wake lock is not supported by this browser.';
    }

    if (isSupported) {
      // create a reference for the wake lock
      let wakeLock = null;

      // create an async function to request a wake lock
      const requestWakeLock = async () => {
        try {
          wakeLock = await navigator.wakeLock.request('screen');

          // change up our interface to reflect wake lock active
          changeUI();

          // listen for our release event
          wakeLock.onrelease = function (ev) {
            console.log(ev);
          };
          wakeLock.addEventListener('release', () => {
            // if wake lock is released alter the button accordingly
            changeUI('released');
          });
        } catch (err) {
          // if wake lock request fails - usually system related, such as battery
          wakeButton.dataset.status = 'off';
          wakeButton.textContent = 'Turn Wake Lock ON';
          statusElem.textContent = `${err.name}, ${err.message}`;
        }
      }; // requestWakeLock()

      // if we click our button
      wakeButton.addEventListener('click', () => {
        // if wakelock is off request it
        if (wakeButton.dataset.status === 'off') {
          requestWakeLock();
        } else {
          // if it's on release it
          wakeLock.release().then(() => {
            wakeLock = null;
          });
        }
      });

      const handleVisibilityChange = () => {
        if (wakeLock !== null && document.visibilityState === 'visible') {
          requestWakeLock();
        }
      };

      reaquireCheck.addEventListener('change', () => {
        if (reaquireCheck.checked) {
          document.addEventListener('visibilitychange', handleVisibilityChange);
        } else {
          document.removeEventListener('visibilitychange', handleVisibilityChange);
        }
      });
    } // isSupported
  </script>
</html>
```

## Details

The [Screen Wake Lock API](https://developer.mozilla.org/en-US/docs/Web/API/Screen_Wake_Lock_API) offers a way to **keep the device from dimming or locking the screen automatically** when an app needs to keep running.

It’s really handy for things like video calls, presentations, live games, and online learning, where you can’t have the screen turning off. With this API, developers can make sure the screen stays on, even when there’s no user touch.

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-04-12]] and last modified on [[2024-04-12]].*

### Backlinks

```dataview
LIST FROM [[JS - Screen Wake Lock API]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/JavaScript/JS - Screen Wake Lock API"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024