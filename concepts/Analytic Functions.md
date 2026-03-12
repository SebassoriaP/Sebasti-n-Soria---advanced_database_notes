# Analytic Functions

## My understanding
Analytic functions perform calculations across a set of rows while keeping all original rows in the result. They use OVER, PARTITION BY, and ORDER BY to compute rankings, running totals, and averages.

## Why it matters
They allow complex analysis like rankings or cumulative metrics without losing row-level data, which is very useful for reports and business analysis.

## Example
Finding the top 3 salaries per department using DENSE_RANK() with PARTITION BY department_id and ORDER BY salary DESC.