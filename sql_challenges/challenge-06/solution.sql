/*1.- */

CREATE OR REPLACE TRIGGER trg_pet_care_log_bi
BEFORE INSERT ON pet_care_log
FOR EACH ROW
BEGIN
    :NEW.last_update_datetime := SYSDATE;
    :NEW.created_by_user := USER;

EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Error in insert trigger for PET_CARE_LOG: ' || SQLERRM
        );
END;
/

/*2.- */
CREATE OR REPLACE TRIGGER trg_pet_care_log_bu
BEFORE UPDATE ON pet_care_log
FOR EACH ROW
BEGIN
    IF USER <> :OLD.updated_by_user THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'You can only update records that you created.'
        );
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE BETWEEN -20999 AND -20000 THEN
            RAISE;
        ELSE
            RAISE_APPLICATION_ERROR(
                -20003,
                'Error in update trigger for PET_CARE_LOG: ' || SQLERRM
            );
        END IF;
END;

/*3.- */

CREATE OR REPLACE TRIGGER trg_pet_care_log_bd
BEFORE DELETE ON pet_care_log
FOR EACH ROW
BEGIN
    IF USER <> 'JOEMANAGER' THEN
        RAISE_APPLICATION_ERROR(
            -20004,
            'Only JOEMANAGER can delete records from PET_CARE_LOG.'
        );
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE BETWEEN -20999 AND -20000 THEN
            RAISE;
        ELSE
            RAISE_APPLICATION_ERROR(
                -20005,
                'Error in delete trigger for PET_CARE_LOG: ' || SQLERRM
            );
        END IF;
END;
