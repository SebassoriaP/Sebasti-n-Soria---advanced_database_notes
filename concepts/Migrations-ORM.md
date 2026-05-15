# Concept name

DB Migrations and ORM

## My understanding
ORM allows developers to work with database tables using objects and classes instead of raw SQL.  
DB migrations are versioned changes that safely update the database schema over time.

## Why it matters
ORM makes database code easier to write and maintain.  
Migrations help teams keep databases synchronized and allow rolling back mistakes safely.

## Example
Using SQLAlchemy models like `User` and `Task`, then generating an Alembic migration to add a new `comments` table.