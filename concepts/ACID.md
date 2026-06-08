# ACID

## My understanding

ACID is a set of principles that ensure database transactions are executed safely and reliably.

* **Atomicity:** A transaction is completed entirely or not at all.
* **Consistency:** The database remains in a valid state before and after a transaction.
* **Isolation:** Transactions do not interfere with one another, even when running at the same time.
* **Durability:** Once a transaction is committed, the changes are permanently stored.

## Why it matters

ACID helps maintain data integrity and prevents issues such as incomplete updates, lost data, or inconsistent information in the database.

## Example

A bank transfer is a good example. If money is removed from one account but cannot be added to the other account, the entire transaction is rolled back so no money is lost.
