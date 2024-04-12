```typescript
// src/lib/utils.ts
import { type ClassValue, clsx } from 'clsx';
import { twMerge } from 'tailwind-merge';

/**
* Helper for conditionally adding and de-duplicating Tailwind CSS Classes
*/
export function cn(...inputs, ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function truncate(str, length)
```