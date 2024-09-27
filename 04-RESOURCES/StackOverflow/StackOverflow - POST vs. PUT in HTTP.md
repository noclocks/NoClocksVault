---
creation_date: 2024-01-28
modification_date: 2024-01-28
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Source
  - Type/Source/StackOverflow
  - Topic/Dev
  - Topic/Dev/API
  - Status/Complete
aliases:
  - POST vs PUT in HTTP
cssclasses: 
---

# POST vs PUT in HTTP

> [!SOURCE] Sources:
> - *[rest - What is the difference between POST and PUT in HTTP? - Stack Overflow](https://stackoverflow.com/questions/630453/what-is-the-difference-between-post-and-put-in-http)*

## Contents

```table-of-contents
style: nestedList
maxLevel: 10
includeLinks: true
debugInConsole: false
```

## Overview

> [!QUESTION] What is the difference between POST and PUT in HTTP?

**Background Information Analysis:**

According to [RFC 2616, § 9.5](https://www.rfc-editor.org/rfc/rfc2616#section-9.5), `POST` is used to _create_ a resource:

> The POST method is used to request that the origin server accept the entity enclosed in the request as a new subordinate of the resource identified by the Request-URI in the Request-Line.

According to [RFC 2616, § 9.6](https://www.rfc-editor.org/rfc/rfc2616#section-9.6), `PUT` is used to _create or replace_ a resource:

> The PUT method requests that the enclosed entity be stored under the supplied Request-URI. If the Request-URI refers to an already existing resource, the enclosed entity SHOULD be considered as a modified version of the one residing on the origin server. If the Request-URI does not point to an existing resource, and that URI is capable of being defined as a new resource by the requesting user agent, the origin server can create the resource with that URI.

## Question

> [!QUESTION] So, which HTTP method should be used to create a resource? Or should both be supported?

## Answers

**Overall:**

Both PUT and POST can be used for creating.

You have to ask, "what are you performing the action upon?", to distinguish what you should be using. Let's assume you're designing an API for asking questions. If you want to use POST, then you would do that to a list of questions. If you want to use PUT, then you would do that to a particular question.

**Great, both can be used, so which one should I use in my RESTful design:**

You do not need to support both PUT and POST.

Which you use is up to you. But just remember to use the right one depending on what object you are referencing in the request.

Some considerations:

- Do you name the URL objects you create explicitly, or let the server decide? If you name them then use PUT. If you let the server decide then use POST.
- PUT is defined to assume idempotency, so if you PUT an object twice, it should have no additional effect. This is a nice property, so I would use PUT when possible. Just make sure that the PUT-idempotency actually is implemented correctly in the server.
- You can update or create a resource with PUT with the same object URL
- With POST you can have 2 requests coming in at the same time making modifications to a URL, and they may update different parts of the object.

**Overall:**

Both PUT and POST can be used for creating.

You have to ask, "what are you performing the action upon?", to distinguish what you should be using. Let's assume you're designing an API for asking questions. If you want to use POST, then you would do that to a list of questions. If you want to use PUT, then you would do that to a particular question.

**Great, both can be used, so which one should I use in my RESTful design:**

You do not need to support both PUT and POST.

Which you use is up to you. But just remember to use the right one depending on what object you are referencing in the request.

Some considerations:

- Do you name the URL objects you create explicitly, or let the server decide? If you name them then use PUT. If you let the server decide then use POST.
- PUT is defined to assume idempotency, so if you PUT an object twice, it should have no additional effect. This is a nice property, so I would use PUT when possible. Just make sure that the PUT-idempotency actually is implemented correctly in the server.
- You can update or create a resource with PUT with the same object URL
- With POST you can have 2 requests coming in at the same time making modifications to a URL, and they may update different parts of the object.

**An example:**

I wrote the following as part of [another answer on SO regarding this](https://stackoverflow.com/questions/256349/what-are-the-best-common-restful-url-verbs-and-actions/256359#256359):

> **POST:**
> 
> Used to modify and update a resource
> 
> ```
> POST /questions/<existing_question> HTTP/1.1
> Host: www.example.com/
> ```
> 
> Note that the following is an error:
> 
> ```
> POST /questions/<new_question> HTTP/1.1
> Host: www.example.com/
> ```
> 
> If the URL is not yet created, you should not be using POST to create it while specifying the name. This should result in a 'resource not found' error because `<new_question>` does not exist yet. You should PUT the `<new_question>` resource on the server first.
> 
> You could though do something like this to create a resources using POST:
> 
> ```
> POST /questions HTTP/1.1
> Host: www.example.com/
> ```
> 
> Note that in this case the resource name is not specified, the new objects URL path would be returned to you.
> 
> **PUT:**
> 
> Used to create a resource, or overwrite it. While you specify the resources new URL.
> 
> For a new resource:
> 
> ```
> PUT /questions/<new_question> HTTP/1.1
> Host: www.example.com/
> ```
> 
> To overwrite an existing resource:
> 
> ```
> PUT /questions/<existing_question> HTTP/1.1
> Host: www.example.com/
> ```

Additionally, and a bit more concisely, [RFC 7231 Section 4.3.4 PUT](https://www.rfc-editor.org/rfc/rfc7231#section-4.3.4) states (emphasis added),

> **4.3.4. PUT**
> 
> The PUT method requests that the state of the target resource be `created` or `replaced` with the state defined by the representation enclosed in the request message payload.