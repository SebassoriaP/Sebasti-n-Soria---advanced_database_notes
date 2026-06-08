# Concept name

## My understanding
Indexes are structures that help the database find information faster without having to scan every row in a table. They work similarly to an index in a book, allowing quick access to specific data.

A composite index is created using two or more columns from the same table.

A partial index is created only for a subset of rows that meet a certain condition.

## Why it matters
Indexes improve query performance, especially when working with large amounts of data. They help reduce search time and make applications more efficient.

## Example

```sql
CREATE INDEX idx_pv_visit_date
ON patient_visits(visit_date);