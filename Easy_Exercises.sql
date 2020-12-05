/*Weather Observation Station 9*/
/*Query the list of CITY names from STATION that do not start with vowels.
Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY)
FROM STATION
WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u');

/*Weather Observation Station 1O*/
/*Query the list of CITY names from STATION that do not end with vowels.
Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY)
FROM STATION
WHERE RIGHT(CITY,1) NOT IN ('a','e','i','o','u');

/*Weather Observation Station 11*/
/*Query the list of CITY names from STATION that either do not start with vowels or do not
end with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY)
FROM STATION
WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u') OR RIGHT(CITY,1) NOT IN ('a','e','i','o','u');

/*Weather Observation Station 12*/
/*Query the list of CITY names from STATION that do not start with vowels and do not
end with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY)
FROM STATION
WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u') AND RIGHT(CITY,1) NOT IN ('a','e','i','o','u');

/*Query the Name of any student in STUDENTS who scored higher than Marks. Order your output
by the last three characters of each name. If two or more students both have names ending
in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.*/

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME,3), ID ASC

/*Write a query that prints a list of employee names (i.e.: the name attribute)
from the Employee table in alphabetical order.
Input Format
The Employee table containing employee data for a company is described as follows: */

/*where employee_id is an employee's ID number, name is their name,
months is the total number of months they've been working for the company, and salary is their monthly salary.*/

SELECT NAME
FROM EMPLOYEE
ORDER BY NAME

/*Write a query that prints a list of employee names (i.e.: the name attribute)
for employees in Employee having a salary greater than per month who have been
employees for less than months. Sort your result by ascending employee_id.*/

SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10
ORDER BY employee_id;

/*Given the CITY and COUNTRY tables, query the sum of the populations of
all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT SUM(c.POPULATION)
FROM CITY AS c
JOIN COUNTRY AS co
ON c.CountryCode = co.Code
WHERE co.CONTINENT = 'Asia'

/*Given the CITY and COUNTRY tables, query the names of all cities
where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT c.NAME
FROM CITY AS c
JOIN COUNTRY AS co
ON c.CountryCode = co.Code
WHERE co.CONTINENT = 'Africa'

/*Type of Triangle*/
/*Write a query identifying the type of each record in the TRIANGLES table using
its three side lengths. Output one of the following statements for each record in the table:

    Equilateral: It's a triangle with
sides of equal length.
Isosceles: It's a triangle with
sides of equal length.
Scalene: It's a triangle with
sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.*/

SELECT CASE
WHEN C >= (A + B) OR B >= (A + C) OR A >= (B + C) THEN 'Not A Triangle'
WHEN A = B AND B = C AND A = C THEN 'Equilateral'
WHEN A = B OR A = C OR B = C THEN 'Isosceles'
ELSE 'Scalene' END AS triangle_form
FROM TRIANGLES;
