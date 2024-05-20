```typescript
// src/lib/constants.ts

// create a frozen object of variables
const constants = Object.freeze({
  OG_TITLE: "My Website",
  OG_DESCRIPTION: "My Website Description.",
  OG_DOMAIN: "https://www.mywebsite.com",
  OG_IMAGE: "https://www.mywebsite.com/images/og-image.png",
  BASE_URL: "https://www.mywebsite.com",
});

export { constants };
```