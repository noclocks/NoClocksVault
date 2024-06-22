---
creation_date: 2024-06-22
modification_date: 2024-06-22
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Video
  - Topic/Dev
  - Status/Complete
aliases:
  - Design Microservice Architecture the Right Way (InfoQ)
publish: true
permalink:
description:
image:
cssclasses:
---


# Design Microservice Architecture the Right Way (InfoQ)

> [!VIDEOSOURCE] **Sources:**
> - *[Design Microservice Architectures the Right Way - YouTube](https://www.youtube.com/watch?v=j6ow-UemzBc)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Video

<center>
<iframe height="113" width="200" style="aspect-ratio: 1.75 / 1; width: 100%; height: 100%;" title="Design Microservice Architectures the Right Way" src="https://www.youtube.com/embed/j6ow-UemzBc"></iframe>
</center>

## Notes

> Notes for the YouTube Video on Designing Microservice Architectures the Right Way

### Designing Microservice Architectures the Right Way

#### Introduction

Designing microservice architectures correctly is crucial for building scalable and maintainable systems. In this article, we will explore the key principles, common pitfalls, and best practices for creating effective microservice architectures, based on insights shared in a comprehensive talk on the subject.

#### Challenges in Microservice Architectures

A personal story highlights the difficulty of changing a URL in a complex system due to numerous dependencies and outdated services. This story sets the stage for understanding the challenges and frustrations often encountered in microservice architectures.

#### Principles of Good Architecture

Good architecture should:
- **Scale Development**: Enable scalable development teams.
- **Deliver Quality**: Ensure the delivery of high-quality software.
- **Performance Choices**: Allow for performance or cost optimization.
- **Future-Proofing**: Support future features and changes.

#### Common Pitfalls

One major pitfall is creating "spaghetti code," where initial development speed is traded for long-term maintenance difficulties. It's crucial to avoid over-complicated dependencies and architectures that are hard to update.

#### Microservices Misconceptions

1. **Language Diversity**:
    - **Misconception**: Teams can use any programming language.
    - **Reality**: It's costly and inefficient; it's better to limit the number of languages (e.g., Google uses 8 languages for 20,000 engineers).

2. **Code Generation**:
    - **Misconception**: Code generation is evil.
    - **Reality**: Properly used, code generation standardizes schemas and reduces errors.

3. **Event Logs**:
    - **Misconception**: The event log must be the source of truth.
    - **Reality**: Databases should be the source of truth, with event logs ensuring at least once delivery.

4. **Service Maintenance**:
    - **Misconception**: Developers can maintain only a few services.
    - **Reality**: With proper automation, developers can efficiently manage more services.

#### API and Event Design

An API-first development approach is crucial, where APIs are defined in a language-neutral format (e.g., JSON). Additionally, adopting an event-driven architecture, with well-defined and consistently handled events, is strongly recommended.

#### Automation and Tooling

Automation is essential in testing, deployment, and dependency management. Tools and practices for automated API definition checks, continuous integration, and deployment processes are critical for maintaining a robust microservice architecture.

#### Database Management

Each microservice should have its own database, with no direct access from other services. This ensures encapsulation and reduces technical debt.

#### Testing and Continuous Delivery

Comprehensive testing strategies, including integration tests using mock clients, are necessary. Continuous delivery is a prerequisite for managing microservices efficiently, allowing for rapid and reliable deployment of updates.

#### Real-World Application

At Flow, an enterprise SaaS company, over 100 microservices are used with REST APIs and event-driven communication. Their investment in tooling for API management, code generation, testing, and deployment is crucial for maintaining their architecture.

#### Best Practices

1. **Schema-First Approach**: For both APIs and events.
2. **Heavy Investment in Automation**: To maintain high-quality, scalable architectures.
3. **Simple, Reliable Tests**: Enable continuous delivery and maintenance.

#### Conclusion

Designing microservice architectures the right way involves a focus on scalable development, quality delivery, and future-proofing. Avoiding common pitfalls and investing in automation and testing are crucial steps. By following these best practices, you can build a robust and maintainable microservice architecture.

---

## Summary

> Summary of the YouTube Video on Designing Microservice Architectures the Right Way

The video is a comprehensive talk on designing [[microservice architectures]] effectively. 

Here are the key points discussed:

1. **Introduction and Personal Story**:
    - The speaker begins with a personal story about the difficulty in changing a URL in a complex system due to dependencies and outdated services, highlighting the challenges in microservice architectures.

2. **Principles of Good Architecture**:
    - Emphasizes scalable development, higher quality software, performance choices, and future-proofing the architecture.

3. **Common Pitfalls**:
    - Warns against "spaghetti code" where initial velocity trades off for future paralysis. Stresses the importance of avoiding over-complicated dependencies and architectures that are hard to update.

4. **Microservices Misconceptions**:
    - **Misconception 1**: Teams can use any programming language. Reality: It's costly and inefficient; recommends limiting languages (e.g., Google uses 8 languages for 20,000 engineers).
    - **Misconception 2**: Code generation is evil. Reality: It's a technique that, if properly used, can standardize schemas and reduce errors.
    - **Misconception 3**: The event log must be the source of truth. Reality: The database should be the source of truth, with event logs ensuring at least once delivery.
    - **Misconception 4**: Developers can maintain only a few services. Reality: With proper automation, developers can handle more services efficiently.

5. **API and Event Design**:
    - Emphasizes API-first development, with APIs defined in a language-neutral format (e.g., JSON).
    - Strongly advocates for the use of event-driven architecture, where events are well-defined and consistently handled.

6. **Automation and Tooling**:
    - Highlights the importance of automation in testing, deployment, and dependency management.
    - Describes tools and practices for automated API definition checks, continuous integration, and deployment processes.

7. **Database Management**:
    - Each microservice should have its own database, with no direct access from other services, ensuring encapsulation and reducing tech debt.

8. **Testing and Continuous Delivery**:
    - Stresses the need for comprehensive testing strategies, including integration tests using mock clients.
    - Continuous delivery is a prerequisite for managing microservices efficiently.

9. **Real-World Application**:
    - Describes the architecture and practices at Flow, an enterprise SaaS company, including their use of over 100 microservices, REST APIs, and event-driven communication.
    - Discusses their investment in tooling for API management, code generation, testing, and deployment.

10. **Best Practices**:
    - Schema-first approach for APIs and events.
    - Invest heavily in automation to maintain high-quality, scalable architectures.
    - Focus on simple, reliable tests to enable continuous delivery and maintenance.

***

## Appendix

*Note created on [[2024-06-22]] and last modified on [[2024-06-22]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Video - Design Microservice Architecture the Right Way (InfoQ)]] AND -"CHANGELOG" AND -"04-RESOURCES/Videos/Video - Design Microservice Architecture the Right Way (InfoQ)"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024


