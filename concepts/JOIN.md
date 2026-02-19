# Concept name

JOIN

# My understanding

A JOIN is a SQL operation used to combine data from two or more tables based on a related column. It connects rows that share a common key, allowing us to retrieve complete information that is stored separately.

# Why it matters

JOIN is important because databases are usually normalized, meaning data is divided into multiple tables. Without JOIN, we could not easily connect related information, such as customers and their orders or pages and their likes.

# Example
SELECT movies.title, boxoffice.domestic_sales
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id;


This query connects both tables to show each movie with its domestic sales.