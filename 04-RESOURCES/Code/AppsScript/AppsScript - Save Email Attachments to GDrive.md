---
creation_date: 2024-04-23
modification_date: 2024-04-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Topic/Dev
  - Status/WIP
aliases:
  - AppsScript - Save Email Attachments to GDrive
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Save Email Attachments to Google Drive with AppsScript

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```


## Overview

## Code

> [!SOURCE] Sources:
> - *[Automatically Save Email Attachments to Google Drive Using Google Apps Script](https://gist.github.com/pallocchi/9c3facffcf8806670d3dcaa254118917#file-savenewattachmentstodrive-js)*

```javascript
function saveNewAttachmentsToDrive() {
  var folderId = "PUT_YOUR_FOLDER_ID_HERE"; // Replace with the ID of the destination folder in Google Drive
  var searchQuery = "to:your-email@example.com has:attachment"; // Replace with the search query to find emails with attachments
  var lastExecutionTime = getLastExecutionDate();
  var threads = GmailApp.search(searchQuery + " after:" + lastExecutionTime);
  var driveFolder = DriveApp.getFolderById(folderId);
  for (var i = 0; i < threads.length; i++) {
    var messages = threads[i].getMessages();
    for (var j = 0; j < messages.length; j++) {
      var message = messages[j];
      var attachments = message.getAttachments();
      for (var k = 0; k < attachments.length; k++) {
        var attachment = attachments[k];
        var attachmentBlob = attachment.copyBlob();
        var fileName = attachment.getName();
        driveFolder.createFile(attachmentBlob).setName(fileName);
      }
    }
  }
  updateLastExecutionDate();
}

function getLastExecutionDate() {
  var properties = PropertiesService.getUserProperties();
  return properties.getProperty("lastExecutionDate") || "2023-09-01";
}

function resetLastExecutionDate() {
  PropertiesService.getUserProperties().deleteProperty("lastExecutionDate");
}

function updateLastExecutionDate() {
  var now = new Date();
  var dateString = now.toISOString().split("T")[0];
  var properties = PropertiesService.getUserProperties();
  properties.setProperty("lastExecutionDate", dateString);
```

## Notes

1. Make sure to replace `"PUT_YOUR_FOLDER_ID_HERE"` with the actual ID of the destination folder in your Google Drive. To get the folder ID, open the folder in Google Drive, and the ID can be found in the URL after "folders/".
2. Modify the `searchQuery` variable to match the criteria for emails you want to process. The example query looks for emails from a specific email address (`your-email@example.com`) with attachments, but you can adjust it based on your requirements.