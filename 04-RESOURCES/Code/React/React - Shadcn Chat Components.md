---
creation_date: 2024-04-29
modification_date: 2024-04-29
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/TypeScript
  - Type/Code/React
  - Topic/Dev
  - Topic/Dev/JavaScript
  - Topic/Dev/React
  - Topic/Dev/Web
  - Topic/Dev/AI
  - Topic/AI
  - Topic/Dev/Frontend
  - Status/WIP
aliases:
  - Shadcn Chat Components
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Shadcn Chat Components

> [!SOURCE] Sources:
> - *[jakobhoeg/shadcn-chat: Customizable and re-usable chat component for you to use in your projects. Built on top of shadcn.](https://github.com/jakobhoeg/shadcn-chat/tree/master)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview


## Code

### Components

- **Chat Compoents**:
	- `components/chat/chat.tsx`
	- `components/chat/chat-layout.tsx`
	- `components/chat/chat-list.tsx`
	- `components/chat/chat-topbar.tsx`
	- `components/chat/chat-bottombar.tsx`

- **Shadcn Components**
	- `components/ui/avatar.tsx`
	- `components/ui/button.tsx`
	- `components/ui/popover.tsx`
	- `components/ui/resizable.tsx`
	- `components/ui/scroll-area.tsx`
	- `components/ui/separator.tsx`
	- `components/ui/textarea.tsx`
	- `components/ui/tooltip.tsx`

#### Chat.tsx

```typescript
import { Message, UserData } from "@/app/data";
import ChatTopbar from "./chat-topbar";
import { ChatList } from "./chat-list";
import React from "react";

interface ChatProps {
  messages?: Message[];
  selectedUser: UserData;
  isMobile: boolean;
}

export function Chat({ messages, selectedUser, isMobile }: ChatProps) {
  const [messagesState, setMessages] = React.useState<Message[]>(
    messages ?? []
  );

  const sendMessage = (newMessage: Message) => {
    setMessages([...messagesState, newMessage]);
  };

  return (
    <div className="flex flex-col justify-between w-full h-full">
      <ChatTopbar selectedUser={selectedUser} />

      <ChatList
        messages={messagesState}
        selectedUser={selectedUser}
        sendMessage={sendMessage}
        isMobile={isMobile}
      />
    </div>
  );
}
```

where `app/data.tsx`:

```typescript
export const userData = [
    {
        id: 1,
        avatar: '/User1.png',
        messages: [
            {
                id: 1,
                avatar: '/User1.png',
                name: 'Jane Doe',
                message: 'Hey, Jakob',
            },
            {
                id: 2,
                avatar: '/LoggedInUser.jpg',
                name: 'Jakob Hoeg',
                message: 'Hey!',
            },
            {
                id : 3,
                avatar: '/User1.png',
                name: 'Jane Doe',
                message: 'How are you?',
            },
            {
                id: 4,
                avatar: '/LoggedInUser.jpg',
                name: 'Jakob Hoeg',
                message: 'I am good, you?',
            },
            {
                id: 5,
                avatar: '/User1.png',
                name: 'Jane Doe',
                message: 'I am good too!',
            },
            {
                id: 6,
                avatar: '/LoggedInUser.jpg',
                name: 'Jakob Hoeg',
                message: 'That is good to hear!'
            },
            {
                id: 7,
                avatar: '/User1.png',
                name: 'Jane Doe',
                message: 'How has your day been so far?',
            },
            {
                id: 8,
                avatar: '/LoggedInUser.jpg',
                name: 'Jakob Hoeg',
                message: 'It has been good. I went for a run this morning and then had a nice breakfast. How about you?',
            },
            {
                id: 9,
                avatar: '/User1.png',
                name: 'Jane Doe',
                message: 'I had a relaxing day. Just catching up on some reading.',
            }
        ],
        name: 'Jane Doe',
    },
    {
        id: 2,
        avatar: '/User2.png',
        name: 'John Doe',
    },
    {
        id: 3,
        avatar: '/User3.png',
        name: 'Elizabeth Smith',
    },
    {
        id: 4,
        avatar: '/User4.png',
        name: 'John Smith',
    }
];

export type UserData = (typeof userData)[number];

export const loggedInUserData = {
    id: 5,
    avatar: '/LoggedInUser.jpg',
    name: 'Jakob Hoeg',
};

export type LoggedInUserData = (typeof loggedInUserData);

export interface Message {
    id: number;
    avatar: string;
    name: string;
    message: string;
}

export interface User {
    id: number;
    avatar: string;
    messages: Message[];
    name: string;
}
```

- `lib/utils.ts`

```typescript


```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[MOC - JavaScript|JavaScript Map of Content]]
- [[04-RESOURCES/Code/JavaScript/_README|JavaScript Code]]
- [[Hyper Text Markup Language (HTML)]]
- [[Cascading Style Sheets (CSS)]]
- [[Tool - React.js|React.js]]
- [[Tool - JS - Next.js|Next.js]]

***

## Appendix

*Note created on [[2024-04-29]] and last modified on [[2024-04-29]].*

### Backlinks

```dataview
LIST FROM [[React - Shadcn Chat Components]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/React/React - Shadcn Chat Components"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

