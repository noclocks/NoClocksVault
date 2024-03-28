---
creation_date: 2024-03-05
modification_date: 2024-03-05
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev
  - Status/NA
aliases:
  - CRM Data Model
publish: true
permalink:
description:
image:
cssclasses:
---

# Customer Relationship Management Data Model

Here's a basic CRM data model schema in SQL:

## Tables

1. **Accounts:**    
    - **`id` (INT, PRIMARY KEY):** Unique identifier for the account
    - **`name` (VARCHAR(255)):** Name of the account (company, organization)
    - **`website` (VARCHAR(255)):** Website URL of the account
    - **`industry` (VARCHAR(50)):** Industry the account belongs to (optional)
    - **`phone` (VARCHAR(20)):** Phone number of the account (optional)
2. **Contacts:**    
    - **id (INT, PRIMARY KEY):** Unique identifier for the contact
    - **account_id (INT, FOREIGN KEY REFERENCES Accounts(id)):** Foreign key referencing account table
    - **first_name (VARCHAR(50)):** First name of the contact
    - **last_name (VARCHAR(50)):** Last name of the contact
    - **email (VARCHAR(255)):** Email address of the contact
    - **title (VARCHAR(100)):** Job title of the contact (optional)
    - **phone (VARCHAR(20)):** Phone number of the contact (optional)
3. **Opportunities:**    
    - **id (INT, PRIMARY KEY):** Unique identifier for the opportunity
    - **account_id (INT, FOREIGN KEY REFERENCES Accounts(id)):** Foreign key referencing account table
    - **name (VARCHAR(255)):** Name of the opportunity (sales deal)
    - **value (DECIMAL(10,2)):** Estimated value of the opportunity (optional)
    - **stage (VARCHAR(50)):** Stage of the opportunity (e.g., qualification, proposal, negotiation)
    - **close_date (DATE):** Expected close date of the opportunity (optional)
4. **Activities:**    
    - **id (INT, PRIMARY KEY):** Unique identifier for the activity
    - **contact_id (INT, FOREIGN KEY REFERENCES Contacts(id)):** Foreign key referencing contact table (optional)
    - **account_id (INT, FOREIGN KEY REFERENCES Accounts(id)):** Foreign key referencing account table (optional)
    - **subject (VARCHAR(255)):** Subject of the activity (e.g., meeting, call, email)
    - **description (TEXT):** Description of the activity (optional)
    - **due_date (DATE):** Due date of the activity (optional)
    - **completed (BOOLEAN):** Flag indicating completion status of the activity

## Relationships

- A one-to-many relationship exists between Accounts and Contacts. One account can have many contacts, but a contact belongs to only one account.
- A one-to-many relationship exists between Accounts and Opportunities. One account can have many opportunities, but an opportunity belongs to only one account.
- Activities can be linked to either a Contact or an Account (or neither). This allows for flexibility in tracking interactions.

## Additional Considerations

- You can add more tables to capture specific needs, such as Products, Campaigns, or Cases (support tickets).
- Include relevant data types (e.g., DATE, DECIMAL) for accurate data storage.
- Consider adding appropriate indexes on frequently used columns for performance optimization.

This is a basic schema, and you can customize it further depending on your specific CRM requirements.

```sql
-- Create the Accounts table to store information about companies or organizations
CREATE TABLE Accounts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  website VARCHAR(255),
  industry VARCHAR(50),
  phone VARCHAR(20)
);

-- Comments for the Accounts table and its columns
COMMENT ON TABLE Accounts IS 'Stores information about companies or organizations';
COMMENT ON COLUMN Accounts.id IS 'Unique identifier for the account';
COMMENT ON COLUMN Accounts.name IS 'Name of the account (company, organization)';
COMMENT ON COLUMN Accounts.website IS 'Website URL of the account (optional)';
COMMENT ON COLUMN Accounts.industry IS 'Industry the account belongs to (optional)';
COMMENT ON COLUMN Accounts.phone IS 'Phone number of the account (optional)';

-- Create the Contacts table to store information about individual people at accounts
CREATE TABLE Contacts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  account_id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(255),
  title VARCHAR(100),
  phone VARCHAR(20),
  FOREIGN KEY (account_id) REFERENCES Accounts(id)
);

-- Comments for the Contacts table and its columns (add similar comments for Opportunities and Activities)
COMMENT ON TABLE Contacts IS 'Stores information about individual people at accounts';
COMMENT ON COLUMN Contacts.id IS 'Unique identifier for the contact';
COMMENT ON COLUMN Contacts.account_id IS 'Foreign key referencing account table (mandatory)';
COMMENT ON COLUMN Contacts.first_name IS 'First name of the contact';
COMMENT ON COLUMN Contacts.last_name IS 'Last name of the contact';
COMMENT ON COLUMN Contacts.email IS 'Email address of the contact (optional)';
COMMENT ON COLUMN Contacts.title IS 'Job title of the contact (optional)';
COMMENT ON COLUMN Contacts.phone IS 'Phone number of the contact (optional)';

-- Create the Opportunities table to store information about potential sales deals
CREATE TABLE Opportunities (
  id INT PRIMARY KEY AUTO_INCREMENT, 
  account_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  value DECIMAL(10,2),
  stage VARCHAR(50),
  close_date DATE,
  FOREIGN KEY (account_id) REFERENCES Accounts(id)  -- Enforces relationship between Opportunities and Accounts tables
);

COMMENT ON TABLE Opportunities IS 'Stores information about potential sales deals';
COMMENT ON COLUMN Opportunities.id IS 'Unique identifier for the opportunity';
COMMENT ON COLUMN Opportunities.account_id IS 'Foreign key referencing account table (mandatory)';
COMMENT ON COLUMN Opportunities.name IS 'Name of the opportunity (sales deal)';
COMMENT ON COLUMN Opportunities.value IS 'Estimated value of the opportunity (optional)';
COMMENT ON COLUMN Opportunities.stage IS 'Stage of the opportunity (e.g., qualification, proposal, negotiation)';
COMMENT ON COLUMN Opportunities.close_date IS 'Expected close date of the opportunity (optional)';

-- Create the Activities table to track interactions with contacts or accounts
CREATE TABLE Activities (
  id INT PRIMARY KEY AUTO_INCREMENT,
  contact_id INT ,
  account_id INT ,
  subject VARCHAR(255) NOT NULL ,
  description TEXT ,
  due_date DATE ,
  completed BOOLEAN ,
  FOREIGN KEY (contact_id) REFERENCES Contacts(id),  -- Optional foreign key relationship with Contacts table
  FOREIGN KEY (account_id) REFERENCES Accounts(id)   -- Optional foreign key relationship with Accounts table
);

COMMENT ON TABLE Activities IS 'Tracks interactions with contacts or accounts';
COMMENT ON COLUMN Activities.id IS 'Unique identifier for the activity';
COMMENT ON COLUMN Activities.contact_id IS 'Foreign key referencing contact table (optional)';
COMMENT ON COLUMN Activities.account_id IS 'Foreign key referencing account table (optional)';
COMMENT ON COLUMN Activities.subject IS 'Subject of the activity (e.g., meeting, call, email)';
COMMENT ON COLUMN Activities.description IS 'Description of the activity (optional)';
COMMENT ON COLUMN Activities.due_date IS 'Due date of the activity (optional)';
COMMENT ON COLUMN Activities.completed IS 'Flag indicating completion status of the activity';
```