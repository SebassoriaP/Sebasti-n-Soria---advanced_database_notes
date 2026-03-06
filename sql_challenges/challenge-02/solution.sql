--Lesson 6:

--1. Find the domestic and international sales for each movie

SELECT movies.id, movies.title, domestic_sales, international_sales
FROM Movies
INNER JOIN Boxoffice
    ON Movies.id = Boxoffice.Movie_id;

--2. Show the sales numbers for each movie that did better internationally rather than domestically

SELECT movies.id, movies.title, domestic_sales, international_sales
FROM Movies
INNER JOIN Boxoffice
    ON Movies.id = Boxoffice.Movie_id
WHERE international_sales > domestic_sales;

--3. List all the movies by their ratings in descending order

SELECT movies.Id, movies.title, boxoffice.rating FROM Movies
INNER JOIN Boxoffice
    ON Movies.id = Boxoffice.Movie_id
    ORDER BY Rating DESC;


--Lesson 7:

--1. Find the list of all buildings that have employees 

SELECT  DISTINCT building_name FROM buildings
INNER JOIN employees
    ON 	buildings.building_name = employees.building;

--2. Find the list of all buildings and their capacity

SELECT  building_name, capacity FROM buildings;

--3. List all buildings and the distinct employee roles in each building (including empty buildings)

SELECT DISTINCT building_name, role FROM buildings
LEFT JOIN employees 
    ON Buildings.building_name = building;


--INTERVIEW QUESTION

SELECT pages.page_id FROM pages
  LEFT JOIN page_likes
    ON pages.page_id = page_likes.page_id
    WHERE page_likes.page_id is NULL
    ORDER BY pages.page_id ASC
;