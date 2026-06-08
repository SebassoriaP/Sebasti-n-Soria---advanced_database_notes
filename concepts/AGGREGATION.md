# Aggregations

## My understanding

Aggregations are SQL functions that perform calculations on a group of rows and return a single result. They are commonly used to summarize data and extract useful information from a table.

Some common aggregation functions are:

* **SUM:** Adds all values in a numeric column.
* **COUNT:** Counts the number of rows or non-null values.
* **AVG:** Calculates the average value of a numeric column.
* **MAX:** Returns the highest value in a column.
* **MIN:** Returns the lowest value in a column.

## Why it matters

Aggregation functions make it easier to analyze large amounts of data without performing calculations manually. They help generate summaries, statistics, and business insights directly from the database.

## Example

```sql
SELECT MAX(years_employed)
FROM employees;
```
