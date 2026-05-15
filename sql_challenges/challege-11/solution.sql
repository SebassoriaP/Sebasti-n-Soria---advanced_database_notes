-- Exercise 1 — Model Design
-- 1. Comment should have relationships with Task and User.
-- 2. Yes, Task should have a comments relationship because one task can have many comments.
-- 3. When a task is deleted, its comments should also be deleted to avoid orphan comments.


-- Exercise 2 — Migration Creation
-- 1. upgrade() applies the new database changes, such as creating the comments table.
-- 2. downgrade() reverses the migration.
-- 3. If I downgrade this migration, the comments table is removed.


-- Exercise 3 — CRUD Challenge
-- Created a DevOps team.
-- Created a user called diana_ops.
-- Created 3 tasks with different priorities.
-- Printed the task count.
-- Closed one task.
-- Deleted the lowest priority task.


-- Exercise 4 — Migration Rollback
-- 1. The bad column or table added by the migration is removed.
-- 2. The data stored in that column or table is lost.



-- Exercise 5 — Concept Check
-- 1. ORM is useful because it lets developers work with database data using objects instead of raw SQL.
-- 2. Migrations are useful because they track database schema changes over time.
-- 3. I would rollback when a migration introduces an error or a bad schema change.
-- 4. add() prepares an object to be saved, while commit() permanently saves the changes to the database.
-- 5. Relationships are useful because they allow navigation between connected models, like users and tasks.