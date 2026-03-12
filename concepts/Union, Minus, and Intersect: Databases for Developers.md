# Concept name
Set Operators in SQL
## My understanding
UNION combines results removing duplicates, UNION ALL combines keeping duplicates, MINUS returns rows in the first query not in the second, and INTERSECT returns rows common to both queries.

## Why it matters
They allow comparing datasets, merging results, and finding differences or common values between tables with simple queries.

## Example
select colour from my_brick_collection
union
select colour from your_brick_collection;