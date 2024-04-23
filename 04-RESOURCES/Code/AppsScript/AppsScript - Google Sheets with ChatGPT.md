---
creation_date: 2024-04-23
modification_date: 2024-04-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
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

> [!example] **Code Snippet Metadata**:
> - Date:: [[2024-04-23]]
> - Source: [[undefined]]
> - Language: undefined
> - Description:: undefined

# AppsScript - Google Sheets with ChatGPT



```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Code

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
2. We will be using the Chat Completions API. You can find more details about it [here](https://platform.openai.com/docs/api-reference/chat/create).
3. ChatGPT models have different roles, such as system, user, and assistant.
4. The systemContent parameter is where you provide roleplay for the GPT system. For example, you could say "You're an expert algebra teacher" or "You're an expert CV writer".
5. The userContent parameter is where you provide tasks to perform for the model. In our case, we will provide long passages from the spreadsheet to summarize and simplify.
6. We will be using the [GPT 3.5 turbo model](https://platform.openai.com/docs/models/gpt-3-5).
7. We are muting HTTPExceptions so that we can use our own error message in the catch block.
8. The error string is useful when we face errors such as [Rate Limit Exceed](https://platform.openai.com/docs/guides/rate-limits/what-are-the-rate-limits-for-our-api).

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

Read more on how to use URLFetchApp from [here](https://developers.google.com/apps-script/reference/url-fetch/url-fetch-app).

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

1. The `GPT_SIMPLIFY` formula simplifies whatever text is provided as input. The input to this function is data that is coming from the spreadsheet. When you select a range, a cell, or multiple cells, the data in the range will be automatically provided by the spreadsheet to this formula.
2. The `systemContent` is defined to be passed as the first parameter to the `fetchData(systemContent,userContent)` function.
3. We are checking if the input is an Array because the data passed to this function can either be a nested array or just a string if we select multiple cells or single cell, respectively, in the spreadsheet.

You can read more on custom functions on this [page](https://developers.google.com/apps-script/guides/sheets/functions).

Now go ahead and apply this formula in your spreadsheet. I copied some text from a book I'm reading in the first column and applied the formula in the second column named "Simplify Passage", like this `=GPT_SIMPLIFY(A2)` for the second cell.

Note: Make sure to refresh the spreadsheet before you apply the formula to sync with the latest changes in the script.

### GPT_SUMMARIZE

To summarize the formula we'll just copy the simplify function and some other things, as you can see in the code below.

```java
```