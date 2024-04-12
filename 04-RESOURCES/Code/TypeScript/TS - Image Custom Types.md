- `images.d.ts`:

```typescript
// src/types/images.d.ts
declare module '*.png' {
  const value: any;
  export = value;
}

declare module '*.jpg' {
  const value: any;
  export = value;
}

declare module '*.svg' {
  const value: any;
  export = value;
}

declare module '*.gif' {
  const value: any;
  export = value;
}
```