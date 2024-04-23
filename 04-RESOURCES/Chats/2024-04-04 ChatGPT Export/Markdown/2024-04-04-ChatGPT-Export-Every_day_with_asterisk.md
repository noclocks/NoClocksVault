---
title: Every day with asterisk.
source: https://chat.openai.com/c/2e6b4d30-7fd1-4724-9c7c-aaec867865a4
---

# Every day with asterisk.

#### You:
<time datetime="2024-02-11T20:56:20.826Z" title="2/11/2024, 3:56:20 PM">03:56 PM</time>

A CRON expression is a string that consists of six fields that represent a set of times. The order of the six fields in Azure is: {second} {minute} {hour} {day} {month} {day of the week}. Suppose you needed a CRON expression that meant "every day", what special character would you put in the {day of the week} position?

#### ChatGPT:
<time datetime="2024-02-11T20:56:23.342Z" title="2/11/2024, 3:56:23 PM">03:56 PM</time>

To represent "every day" in a CRON expression, you would use the asterisk (\*) in the {day of the week} position. The asterisk is a wildcard character that signifies "any" or "every" value for the corresponding field. So, a CRON expression for "every day" would look like this:

```
* * * * * *
```

In this expression, each asterisk corresponds to the {second}, {minute}, {hour}, {day}, {month}, and {day of the week} fields, respectively. Using "\*" in the {day of the week} position ensures that the cron job will run every day without being restricted to a specific day of the week.
