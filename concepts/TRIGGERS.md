# Triggers

## My understanding
A trigger is a database object that automatically executes when a specific event occurs, such as an INSERT, UPDATE, or DELETE operation.

## Why it matters
Triggers help automate actions inside the database without requiring manual intervention from the application. They can be used for auditing, validation, logging, and maintaining data consistency.

## Example

```sql
CREATE OR REPLACE TRIGGER trg_pet_care_log
BEFORE INSERT ON PET_CARE_LOG
FOR EACH ROW
BEGIN
    :NEW.UPDATE_DATE := SYSDATE;
    :NEW.UPDATED_BY_USER := USER;

EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'General error'
        );
END;
/