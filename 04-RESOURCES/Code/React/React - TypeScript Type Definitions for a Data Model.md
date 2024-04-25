```typescript
// src/global.d.ts

export type User = {
  id: string,
  created_at?: string,
  name: string,
  location?: string,
  website?: string,
  github?: string,
  twitter?: string,
  youtube?: string,
  discord?: string,
  tiktok?: string,
  linkedin?: string,
  avatar?: string,
  username?: string,
  projects?: Project[]
}

export type Project = {
  id: string,
  name: string,
  updates?: Update[],
  user_id?: string,
  cohort_id?: string,
  created_at?: string,
  description: string
  cohorts?: Cohort
}

export type Cohort = {
  id: string,
  name: string,
  created_at: string;
  year: number;
  month: number;
  number: number;
  start_date: string;
  end_date: string;
  projects?: Project[]
}

export type Update = {
  id: string,
  date: string,
  content: "string",
  created_at: string,
  project_id: string,
  comments: Comment[],
  projects?: Project
}

export type Comment = {
  id: string,
  created_at: string,
  update_id: string,
  comment: string,
  user_id: string,
  users?: User
}
```