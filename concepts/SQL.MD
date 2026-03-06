# Concept name

BASIC SQL QUERIES

# My understanding

Basic SQL queries allow us to retrieve and filter data from database tables. Using SELECT, we can choose specific columns. With WHERE, we filter rows based on conditions. Other clauses like ORDER BY, LIMIT, and DISTINCT help organize and refine the results.

# Why it matters

These concepts are fundamental because almost every SQL query uses them. Understanding how to filter, sort, and limit data is essential for working with databases in real-world applications such as reporting, analytics, and backend development.

# Example

SELECT title, year
FROM movies
WHERE year >= 2000
ORDER BY year ASC
LIMIT 5;

This query retrieves the first five movies released after the year 2000, sorted by year.