-- Sebastián Soria A01645849

-- Exercise 1

-- List all the objects in your schema using USER_OBJECTS
-- Group by OBJECT_TYPE and count them
-- Which object types do you have?

My schema contains different types of database objects such as tables, indexes, procedures, sequences, and triggers.

I found:

* 6 Indexes
* 1 LOB
* 1 Procedure
* 2 Sequences
* 8 Tables
* 1 Trigger

These objects represent the main components used throughout the database.

-- Exercise 2

I selected the BRICKS table for this exercise.

The generated DDL script recreates the complete table definition. It includes the columns BRICK_ID, COLOUR, SHAPE, and WEIGHT along with their corresponding data types.

The script also contains Oracle-specific configuration details such as storage settings and tablespace information.

-- Exercise 3

I tried to use the EMIT_SCHEMA transformation parameter to remove schema names from the generated DDL.

However, some DBMS_METADATA transformation options are restricted in the FreeSQL environment, so the parameter could not be executed successfully.

Removing schema names would make the script more portable because it could be executed in a different schema without modifications.

-- Exercise 4

If I needed to migrate my schema to a new Oracle schema, I would first review the exported DDL and remove any schema-specific references.

For example, a table exported as USER_SCHEMA.BRICKS would need to be changed to simply BRICKS.

If the table contained foreign key relationships, I would verify that all referenced tables exist in the destination schema and update references if necessary.

Since BRICKS does not contain foreign keys, no additional modifications are required.

Recommended recreation order:

1. Tables
2. Primary Keys and Constraints
3. Foreign Keys
4. Indexes
5. Triggers, Procedures, and Other Objects

Migration checklist:

* Export the BRICKS DDL
* Remove schema-specific names if present
* Verify all column definitions
* Review constraints and keys
* Recreate the table in the target schema
* Validate the migration results

-- Exercise 5

I used USER_DEPENDENCIES to inspect relationships between objects in my schema.

The results show dependencies associated with objects such as procedures and triggers. These objects rely on other schema objects to function correctly.

From my analysis:

* 1 Procedure contains dependencies
* 1 Trigger contains dependencies

The BRICKS table itself does not have dependency relationships, but other database objects in the schema do.

-- Exercise 6

Since I do not have access to Data Pump utilities such as EXPDP or directory privileges, I would create a backup strategy using SQL scripts and DBMS_METADATA.

First, I would identify all schema objects and extract their definitions using DBMS_METADATA.GET_DDL.

Next, I would clean the generated scripts by removing schema-specific references and unnecessary storage settings to improve portability.

Finally, I would execute the scripts in the target environment following the correct creation order:

1. Tables
2. Sequences
3. Constraints and Keys
4. Indexes
5. Triggers
6. Procedures and Functions

After the migration, I would verify that all objects were recreated successfully and validate that the database behaves as expected.
