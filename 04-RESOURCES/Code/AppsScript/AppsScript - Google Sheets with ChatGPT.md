---
creation_date: 2024-04-23
modification_date: 2024-04-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/AppsScript
  - Topic/Dev
  - Status/WIP
aliases:
  - AppsScript - Google Sheets with ChatGPT
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Google Sheets with ChatGPT AppsScript Code



```table-of-contents
title: Contents
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Code

- `formula.js`:

```javascript
/**
 * Simplifies the given paragraph in layman's term
 * @param {String} input value to simplify
 *  @return Simplified Text
 * @customfunction
 */
function GPT_SIMPLIFY(input) {
  const systemContent = "Simplify The Given Passage in layman's term."

  return Array.isArray(input) ?
    input.flat().map(text => fetchData(systemContent, text)) :
    fetchData(systemContent, input);
};


/**
 * Summarises the given paragraph in layman's term
 * @param {String} input value to summarize
 *  @return Summarized Bullet Points
 * @customfunction
 */
function GPT_SUMMARY(input) {
  const systemContent = "Summarize The Given Passage. Provide atleast 3 and atmost 5 bullet points"

  return Array.isArray(input) ?
    input.flat().map(text => fetchData(systemContent, text)) :
    fetchData(systemContent, input);
};
```

- `menu.js`:

```javascript
/**
 * Simplifies the given passage in layman's term.
 * @customfunction
 */
function gptSimplifyMenu() {
  try {
    // get sheets and data
    const ss = SpreadsheetApp.getActiveSheet();
    const data = ss.getDataRange().getValues();
    const lastRow = data.length;
    const lastCol = data[0].length;

    //console.log(data[0]);


    // define gpt's role play
    const systemContent = "Simplify The Given Passage in layman's term.";

    for (let i = 1; i < data.length; i++) {
      if (data[i][1] === "" || data[i][1] === "Some Error Occured, please try again after some time.") {
        data[i][1] = fetchData(systemContent, data[i][0]);
      }
    }

    // set sprd with new values
    ss.getRange(1, 1, lastRow, lastCol).setValues(data);

  } catch (e) {
    console.log(e);
    SpreadsheetApp.getActiveSpreadsheet().toast("Some Error Occured, please try again after some time.")

  }
}


/**
 * Summarizes the given passage in 3 to 5 bullet points
 * @customfunction
 */
function gptSummarizeMenu() {
  try {
    // get sheets and data
    const ss = SpreadsheetApp.getActiveSheet();
    const data = ss.getDataRange().getValues();
    const lastRow = data.length;
    const lastCol = data[0].length;

    //console.log(data[0]);


    // define gpt's role play
    const systemContent = "Summarize The Given Passage. Provide atleast 3 and atmost 5 bullet points";

    for (let i = 1; i < data.length; i++) {
      if (data[i][2] === "" || data[i][2] === "Some Error Occured, please try again after some time.") {
        data[i][2] = fetchData(systemContent, data[i][0]);
      }
    }

    // set sprd with new values
    ss.getRange(1, 1, lastRow, lastCol).setValues(data);

  } catch (e) {
    console.log(e);
    SpreadsheetApp.getActiveSpreadsheet().toast("Some Error Occured, please try again after some time.")

  }
}


/**
 * Create custom menu tab in sprd UI
 */
function createCustomMenu() {
  let menu = SpreadsheetApp.getUi().createMenu("GPT Functions");

  menu.addItem("GPT SIMPLIFY", "gptSimplifyMenu")
  menu.addItem("GPT SUMMARIZE", "gptSummarizeMenu")


  menu.addToUi();
}

/**
 * On spreadsheet open creates menu
 *
 */
function onOpen(e) {

  createCustomMenu();
}
```

- `utils.js`:

```javascript
const CHAT_GPT_API = "paste your API key here";
const BASE_URL = "https://api.openai.com/v1/chat/completions";


function fetchData(systemContent = "You are an expert mathematics teacher", userContent = "Help me understand calculus in easy way.") {
  try {
    const headers = {
      "Content-Type": "application/json",
      "Authorization": `Bearer ${CHAT_GPT_API}`
    };

    const options = {
      headers,
      method: "GET",
      muteHttpExceptions: true,
      payload: JSON.stringify({
        "model": "gpt-3.5-turbo",
        "messages": [{
          "role": "system",
          "content": systemContent
        },
        {
          "role": "user",
          "content": userContent
        }
        ],
        "temperature": 0.7
      })
    };

    const response = JSON.parse(UrlFetchApp.fetch(BASE_URL, options));

    /*  console.log(response)
     console.log(response.choices[0].message.content); */

    return response.choices[0].message.content;
  } catch (e) {
    console.log(e);
    SpreadsheetApp.getActiveSpreadsheet().toast("Some Error Occured, please try again after some time.")

    return "Some Error Occured, please try again after some time.";
  }
}
```


### fetchData

```javascript
const CHAT_GPT_API_KEY = "paste your API key here";
const BASE_URL = "https://api.openai.com/v1/chat/completions";


function fetchData(systemContent, userContent) {
  try {
    const headers = {
      "Content-Type": "application/json",
      "Authorization": `Bearer ${CHAT_GPT_API_KEY}`
    };

    const options = {
      headers,
      method: "GET",
      muteHttpExceptions: true,
      payload: JSON.stringify({
        "model": "gpt-3.5-turbo",
        "messages": [{
          "role": "system",
          "content": systemContent,
        },
        {
          "role": "user",
          "content": userContent
        },
        ],
        "temperature": 0.7
      })
    };

    const response = JSON.parse(UrlFetchApp.fetch(BASE_URL, options));
    //console.log(response);
    //console.log(response.choices[0].message.content)
    return response.choices[0].message.content;
  } catch (e) {
    console.log(e)
    SpreadsheetApp.getActiveSpreadsheet().toast("Some Error Occured Please check your formula or try again later.");
    return "Some Error Occured Please check your formula or try again later.";
  }
}
```


Here are some key points to notice in the code above:

1. Paste the API key that you created earlier inside the quotes.
2. We will be using the Chat Completions API. You can find more details about it [here](https://platform.openai.com/docs/api-reference/chat/create).
3. ChatGPT models have different roles, such as system, user, and assistant.
4. The systemContent parameter is where you provide roleplay for the GPT system. For example, you could say "You're an expert algebra teacher" or "You're an expert CV writer".
5. The userContent parameter is where you provide tasks to perform for the model. In our case, we will provide long passages from the spreadsheet to summarize and simplify.
6. We will be using the [GPT 3.5 turbo model](https://platform.openai.com/docs/models/gpt-3-5).
7. We are muting HTTPExceptions so that we can use our own error message in the catch block.
8. The error string is useful when we face errors such as [Rate Limit Exceed](https://platform.openai.com/docs/guides/rate-limits/what-are-the-rate-limits-for-our-api).

We're returning the content from the response object of GPT that'll be later on handled by our formulas.

The response object from [[ChatGPT]] has following structure:

```json
{
  "id": "chatcmpl-123",
  "object": "chat.completion",
  "created": 1677652288,
  "choices": [{
    "index": 0,
    "message": {
      "role": "assistant",
      "content": "\n\nHello there, how may I assist you today?",
    },
    "finish_reason": "stop"
  }],
  "usage": {
    "prompt_tokens": 9,
    "completion_tokens": 12,
    "total_tokens": 21
  }
}
```

Read more on how to use URLFetchApp from [here](https://developers.google.com/apps-script/reference/url-fetch/url-fetch-app).

## Formula Integration

### GPT_SIMPLIFY

Again, for the custom formula, we'll create a new file named formula and then we will create a function named `GPT_SIMPLIFY`:

```javascript
/**
 * Simplifies the given paragraph in layman's term.
 * @param {String} input The value to simplify.
 * @return Simplified Text.
 * @customfunction
 */
function GPT_SIMPLIFY(input) {
  console.log(input)
  const systemContent = "Simplify the given text in layman's term. Remember reader is not an expert in english.";
  return Array.isArray(input) ?
    input.flat().map(text => fetchData(systemContent, text)) :
    fetchData(systemContent, input);

}
```

1. The `GPT_SIMPLIFY` formula simplifies whatever text is provided as input. The input to this function is data that is coming from the spreadsheet. When you select a range, a cell, or multiple cells, the data in the range will be automatically provided by the spreadsheet to this formula.
2. The `systemContent` is defined to be passed as the first parameter to the `fetchData(systemContent,userContent)` function.
3. We are checking if the input is an Array because the data passed to this function can either be a nested array or just a string if we select multiple cells or single cell, respectively, in the spreadsheet.

You can read more on custom functions on this [page](https://developers.google.com/apps-script/guides/sheets/functions).

Now go ahead and apply this formula in your spreadsheet. I copied some text from a book I'm reading in the first column and applied the formula in the second column named "Simplify Passage", like this `=GPT_SIMPLIFY(A2)` for the second cell.

Note: Make sure to refresh the spreadsheet before you apply the formula to sync with the latest changes in the script.

### GPT_SUMMARIZE

To summarize the formula we'll just copy the simplify function and some other things, as you can see in the code below.

```javascript
/**
 * Summarzies the given paragraph. It provides from 3-5 bullet points
 *
 * @param {String} input The value to summarize.
 * @return summarize Text.
 * @customfunction
 */
function GPT_SUMMARY(input) {
  console.log(input)
  const systemContent = "Summarize the given text. Provide atleast 3 and atmost 5 bullet points.";
  return Array.isArray(input) ?
    input.flat().map(text => fetchData(systemContent, text)) :
    fetchData(systemContent, input);

}
```

The main thing to notice here is the different system content.

Note: Since this is not a tutorial on how to use [[ChatGPT]] optimally, I provided instructions as the system content instead of role-play, and then just provided data in the user content. You can improvise this by providing roles in system content, and tasks as well as data as two different user roles in our `FetchData()` function.

#### GPT Rate Limit Error

For free users, the rate limit to use the API is **3/minute**. As such, when you apply these formulas in more than three cells you'll encounter the error. Luckily the execution won't stop because we're returning an error string from fetch data which will be saved into those cells.

#### Auto Refresh and Error

Moreover, the auto-refresh feature of the formula can force the re-application of the formula on cells that already have satisfying values whenever source cells are updated, in our case cells in column "A".

When we add a rate limit on top of auto-refresh it can cause a conundrum. You can technically make changes in custom functions to accommodate such circumstances but, I like to keep formulas light and efficient. So, I recommend we instead create custom menus and apply these functions manually.

## Integrate GPT Chat API in Sheets Menu Functions

### GPT_SIMPLIFY

First, let's create another file named `menu`. Then we'll create the `gptSimplifyMenu` function which will be an alternative to the `GPT_SIMPLIFY` formula:


```javascript
/**
 * Simplifies the given paragraph in layman's term.
 * @customfunction
 */
function gptSimplifyMenu() {
  try {
    // get sheets and data
    const ss = SpreadsheetApp.getActiveSheet();
    const data = ss.getDataRange().getValues();
    const lastRow = data.length;
    const lastCol = data[0].length;

    // define gpt's role play
    const systemContent = "Simplify the given text in layman's term. Remember reader is not an expert in english.";


    for (let i = 1; i < data.length; i++) {
      // only simplify if not already simplified or error occured previously
      if (data[i][1] === "" || data[i][1] === "Some Error Occured Please check your formula or try again later.") {
        data[i][1] = fetchData(systemContent, data[i][0]);
        console.log(data[i][1]);

      }
    }

    ss.getRange(1, 1, lastRow, lastCol).setValues(data);
  } catch (e) {
    console.log(e)
    SpreadsheetApp.getActiveSpreadsheet().toast("Some Error Occured Please check your formula or try again later.");

  }
}
```

Key points that are different to understand in this code are:

1. We're hardcoding the data sources, as such `data[i]`, which refers to the second column (that is "Simplified Passage") as shown in the spreadsheet image above. This means that if you're using some other columns to save data from ChatGPT to, then you'll have to make changes according to it.
2. We only fetch data when the target cell is empty or contains an error message. This helps to avoid unnecessary API calls.

### Add a Custom Function as a Sheets Menu

The function is ready to be tested, but it still will not appear in the spreadsheet. To do so, we'll need to provide the following instructions:


```javascript
/**
 * Menu creates menu UI in spreadsheet.
 */
function createCustomMenu() {
   // define menu ui
  let menu = SpreadsheetApp.getUi().createMenu("GPT Functions");
   // add function to the menu
   menu.addItem("GPT SIMPLIFY", "gptSimplifyMenu");
   // add menu to the spreadsheet ui
  menu.addToUi();
}

/**
 * OnOpen trigger that creates menu
 * @param {Dictionary} e
 */
function onOpen(e) {
  createCustomMenu();
}
```

In `createCustomMenu()`:

1. We define menu with [`SpreadsheetApp.getUi().createMenu("GPT Functions")`](https://developers.google.com/apps-script/reference/base/ui#createmenucaption) as GPT Functions the title appearing in the spreadsheet tab.
2. We add a function to the menu with the `menu.addItem("GPT SIMPLIFY", "gptSimplifyMenu")`, where the first parameter is the title for display and the second is the function to call when pressed.
3. Add the menu to the UI with `menu.addToUi()`.

The [onOpen](https://developers.google.com/apps-script/guides/triggers#onopene) trigger runs automatically whenever the document the script is attached to reloads and as such will add a menu to the spreadsheet as shown in the image below.

### GPT Summarize Menu

We'll make some minor changes after copying the simplify function as shown below:

```javascript
/**
 * Summarzies the given paragraph. It provides from 3-5 bullet points
 * @customfunction
 */
function gptSummaryMenu() {
  try {
    // get sheets and data
    const ss = SpreadsheetApp.getActiveSheet();
    const data = ss.getDataRange().getValues();
    const lastRow = data.length;
    const lastCol = data[0].length;

    // define gpt's role play
    const systemContent = "Summarize the given text. Provide atleast 3 and atmost 5 bullet points.";


    for (let i = 0; i < data.length; i++) {
      console.log(`Inside gptSummaryMenu() for loop`)

      if (i == 0) continue;
      // only summarize if not already summarized or error occured previously
      if (data[i][2] === "" || data[i][2] === "Some Error Occured Please check your formula or try again later.") {
        data[i][2] = fetchData(systemContent, data[i][0]);
        console.log(data[i][2]);
      }
    }

    ss.getRange(1, 1, lastRow, lastCol).setValues(data);
  } catch (e) {
    console.log(e)
    SpreadsheetApp.getActiveSpreadsheet().toast("Some Error Occured Please check your formula or try again later.");
  }
}
```

1. The system role has been changed to address summary instruction.
2. The target column to save data is now the third column.
3. The doc string has been adjusted as well.

As for adding this function to the menu I'll leave it to you.

## Tips

All you need to make your own formula like `=GPT_COVER_LETTER_CREATOR()` are the following modifications:

### To FetchData

You can change System Content Description should to address your needs, like "You write an expert cover letter for software developers".

Add one more instruction in the messages array:

```javascript
// from this
[{
          "role": "system",
          "content": systemContent,
        },
        {
          "role": "user",
          "content": userContent
        },
        ],

// to
[{
          "role": "system",
          "content": "You write an expert cover letter for software developers",
        },
        {
          "role": "user",
          "content": "Write me a cover letter for this given job advertisement"
        },
        {
          "role": "user",
          "content": userContent // this is job ad from spreadsheet
        },
        ],
```
