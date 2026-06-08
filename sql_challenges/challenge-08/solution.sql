-- Sebastián Soria

-- Exercise 1

-- a) What scan type do you see? Why?
It is a full table scan because Oracle needs to read all rows in the table since no index is available.

-- b) site_id has values 1–5. Is this high or low cardinality?
It is low cardinality because there are only a few distinct values.

-- c) Would adding an index on site_id help? Why or why not?
Not significantly, since many rows share the same values and Oracle may still prefer a full table scan.

-- Exercise 2

-- Index created
CREATE INDEX idx_pv_visit_date ON patient_visits(visit_date);

-- Questions:

-- a) Does Oracle use the index for this range?
It depends on how many rows match the condition. For smaller ranges Oracle is more likely to use the index.

-- b) Change the range to the last 7 days. Does the plan change?
Yes. Oracle typically switches to an Index Range Scan because only a small portion of the table is accessed.

-- c) Change to the last 700 days. What happens?
Oracle may choose a Full Table Scan because most rows are included in the result.

-- d) Why does the range size affect whether Oracle uses the index?
The optimizer compares costs and chooses the access path that is expected to be more efficient.

-- Exercise 3
-- Questions:

-- a) Does the plan use the composite index?
Yes, Oracle uses the composite index when the query matches its column order.

-- b) Now try querying ONLY on visit_date (no patient_id).
-- Does the composite index get used? Why not?
No. The first column of the composite index is not being used, so Oracle cannot efficiently use the index.

-- c) What's the rule about column order in composite indexes?
Queries should use the leading column(s) of the index to take advantage of it.

-- Exercise 4
-- Questions:

-- a) What scan type did the second query use?
A Full Table Scan.

-- b) Why does wrapping a column in a function break index use?
Because the indexed value is transformed, making the original index less useful for the search.

-- c) How would you rewrite the second query to allow index use?
Avoid applying functions directly to the indexed column whenever possible.

-- Exercise 5

-- Scenario A

-- a) Would you add an index?
Yes.

-- b) On which column(s)?
On the date column.

-- c) Any concerns?
Only the additional storage and maintenance cost, but the performance gain would justify it.

-- Scenario B

-- a) Would you add an index?
Yes.

-- b) On which column(s)?
On customer_id. Depending on query patterns, a composite index could also be considered.

-- c) Any concerns?
Indexes improve reads but can slightly slow down inserts and updates.

-- Scenario C

-- a) Would you add an index?
Yes.

-- b) On which column(s)?
On the email column, preferably as a unique index.

-- c) Any concerns?
No major concerns. Email searches are highly selective, making the index very effective.
