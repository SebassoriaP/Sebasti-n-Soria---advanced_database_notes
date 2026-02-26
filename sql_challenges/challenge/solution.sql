
--SQL Lesson 10: Queries with aggregates PART 1

-- Ejercicio 1: Find the longest time that an employee has been at the studio

SELECT MAX(years_employed) FROM employees;

-- Ejercicio 2: For each role, find the average number of years employed by employees in that role

SELECT Role, AVG(Years_employed) 
FROM employees
Group by Role;

-- Ejercicio 3: Find the total number of employee years worked in each building

SELECT Building,SUM(Years_employed) 
FROM employees
Group by Building;

--SQL Lesson 10: Queries with aggregates PART 2

-- Ejercicio 1: Find the number of Artists in the studio (without a HAVING clause)

SELECT COUNT(ROLE)

FROM employees

Where role = 'Artist';

-- Ejercicio 2: Find the number of Employees of each role in the studio

SELECT role, count(role) 
FROM employees
Group by role;

-- Ejercicio 3:Find the total number of years employed by all Engineers

SELECT Role, SUM(Years_Employed)
FROM employees
Where Role = ("Engineer");


--Try-it 4
SELECT COUNT(DISTINCT SHAPE), stddev(distinct WEIGHT) 
FROM Bricks;

--Try-it 6

select shape, SUM(weight)
from   bricks
group by shape
;

--Try-it 8

select shape, sum ( weight )
from   bricks
group  by SHAPE
HAVING sum ( weight ) < 4
;