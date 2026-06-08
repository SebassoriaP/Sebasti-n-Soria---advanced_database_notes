-- Sebastián Soria

-- Exercise 1
-- Initial balance
SELECT * FROM accounts ORDER BY account_id;

BEGIN
UPDATE accounts
SET balance = balance - 50
WHERE account_id = 3;

```
UPDATE accounts
SET balance = balance + 50
WHERE account_id = 1;

COMMIT;
```

END;
/

-- Final verification
SELECT * FROM accounts ORDER BY account_id;

-- Exercise 2
-- Initial verification
SELECT * FROM accounts ORDER BY account_id;

BEGIN
UPDATE accounts
SET balance = balance - 10000
WHERE account_id = 2;

```
UPDATE accounts
SET balance = balance + 10000
WHERE account_id = 3;

COMMIT;
```

EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
END;
/

-- Final verification
SELECT * FROM accounts ORDER BY account_id;

-- Exercise 3
UPDATE accounts
SET balance = balance + 25
WHERE account_id = 1;

SAVEPOINT sp_A;

UPDATE accounts
SET balance = balance - 25
WHERE account_id = 3;

ROLLBACK TO sp_A;

UPDATE accounts
SET balance = balance - 25
WHERE account_id = 2;

COMMIT;

-- Final verification
SELECT * FROM accounts ORDER BY account_id;

-- Exercise 4
CREATE OR REPLACE PROCEDURE deposit_funds (
p_account_id NUMBER,
p_amount NUMBER
)
IS
BEGIN
IF p_amount <= 0 THEN
RAISE_APPLICATION_ERROR(-20001, 'Amount must be greater than 0');
END IF;

```
UPDATE accounts
SET balance = balance + p_amount
WHERE account_id = p_account_id;

COMMIT;
```

EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE;
END;
/

-- Exercise 5

-- Q1: You're building a patient appointment booking system.
-- A booking requires:
--   a) Reserve the time slot
--   b) Create the appointment record
--   c) Send a confirmation notification
-- Which of these should be inside the transaction? Which should be outside? Why?

The time slot reservation and the appointment record creation should be inside the transaction.

The confirmation notification should be outside the transaction.

This is because reserving the slot and creating the appointment must succeed together. If one fails, the other one should also be rolled back to keep the database consistent. The notification does not directly affect database consistency, so it can be handled after the transaction is completed.

-- Q2: Your stored procedure calls COMMIT at the end.
-- A developer calls your procedure from inside their own larger transaction.
-- What problem does this create?

The COMMIT inside the procedure can break the larger transaction.

If the procedure commits too early, the outer transaction loses control over those changes. This means the developer cannot fully roll back the entire process if something fails later.

-- Q3: You have a function called calculate_copay() and a procedure called post_payment().
-- A colleague wants to use calculate_copay() inside a SELECT statement.
-- Can they? Can they do the same with post_payment()? Why or why not?

Yes, calculate_copay() can be used inside a SELECT statement because it is a function that returns a value.

No, post_payment() should not be used inside a SELECT statement because it is a procedure. Procedures are normally used to perform actions, such as updating data or managing transactions.
