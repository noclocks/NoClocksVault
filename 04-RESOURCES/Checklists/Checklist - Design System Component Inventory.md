The first task is creating an inventory of your components to identify the most used. It often involves manually cataloging screens in various websites or apps to discern common UI patterns. Designers like [Brad Frost](http://bradfrost.com/blog/post/interface-inventory/) and [Nathan Curtis](https://medium.com/eightshapes-llc/the-component-cut-up-workshop-1378ae110517) have published handy methodologies for inventorying components so we won’t go into further detail in this tutorial.

Useful heuristics for developers:
- If a UI pattern is used more than three times, turn it into a reusable UI component.
- If a UI component is used in 3 or more projects/teams, put it in your design system.

![](https://i.imgur.com/GgsCtqA.png)

Following this method, we end up with UI primitives: Avatar, Badge, Button, Checkbox, Input, Radio, Select, Textarea, Highlight (for code), Icon, Link, Tooltip, and more. These building blocks are configured in different ways to assemble countless unique features and layouts in our client apps.

![](https://i.imgur.com/ScdkzLD.png)

We’ve selected a subset of these components for this tutorial to make reasoning about the repository simpler. Some teams also include customized third-party components in their design systems for other components like Tables and Forms.

> [!NOTE]
> **CSS-in-JS:** We use [Emotion](https://emotion.sh/docs/introduction), a library designed for writing [[Cascading Style Sheets (CSS)|CSS]] styles with [[MOC - JavaScript|JavaScript]]. It provides a powerful and predictable style composition model. There are other valid methods to style components, including targeting classes manually, CSS modules, etc.


In addition to UI components, it makes sense to include styling constants for typography, colors, spacing, etc., that are reused across projects. In design system nomenclature global style variables are called “design tokens”. We won’t dive into the theory behind design tokens in this guide, but you can learn more online (here’s a [good article](https://medium.com/eightshapes-llc/tokens-in-design-systems-25dd82d58421)).

## Taking Inventory

- [ ] Buttons:
	- [ ] Button Component
	- [ ] Button Variants:
		- [ ] Primary
		- [ ] Secondary
		- [ ] Information
		- [ ] Danger
		- [ ] Warning
		- [ ] Success
- [ ] Content:
	- [ ] Image Component
	- [ ] Video Component
- [ ] Layouts:
	- [ ] App Layout Component
	- [ ] Layout:
		- [ ] Grid Layout Component
		- [ ] Panel Layout Component
		- [ ] Row Layout Component
- [ ] Navigation:
	- [ ] NavLink Component
	- [ ] Link Component
- [ ] Pages:
	- [ ] Page Component
- [ ] Themes:
	- [ ] Theme Provider
	- [ ] Theme Switcher
- [ ] Forms:
	- [ ] Form Component
- [ ] Utilities:
	- [ ] Truncate