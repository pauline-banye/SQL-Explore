--1. Query the Name of any student in STUDENTS who scored higher than Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME,3), ID ASC;

--2. Query all columns for all American cities in CITY with populations larger than 100,000. The CountryCode for America is USA.
SELECT * FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000;

--3. Query all columns for a city in CITY with the ID 1661.
SELECT * FROM CITY WHERE ID = 1661; 

--4. Query the details for all the Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';        

--5. Query the the names of all the Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';        

--6. Query a list of CITY and STATE from the STATION table. 
SELECT CITY,STATE FROM STATION;

--7. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN ('A', 'E', 'I', 'O', 'U');

--8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer. 
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)=0;

--9. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN ('A', 'E', 'I', 'O', 'U');

--10. Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA. 
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

--11. Query all columns (attributes) for every row in the CITY table.
SELECT * FROM CITY;

--12. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN. 
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

--13. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN. 
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';

--14. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. 
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

--15. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE UPPER(RIGHT(CITY, 1)) NOT IN ('A','E','I','O','U') AND LOWER(RIGHT(CITY, 1)) NOT IN ('a','e','i','o','u');    

--16. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE UPPER(RIGHT(CITY, 1)) IN ('A','E','I','O','U') AND LOWER(RIGHT(CITY, 1)) IN ('a','e','i','o','u');

--17. Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT NAME FROM EMPLOYEE ORDER BY NAME ASC;

--18. Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than per month who have been employees for less than months. Sort your result by ascending employee_id.
SELECT NAME FROM EMPLOYEE WHERE SALARY > 2000 AND MONTHS < 10 ORDER BY EMPLOYEE_ID ASC;

--19. Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE = 'JPN' GROUP BY COUNTRYCODE;

--20. Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT FLOOR(AVG(POPULATION)) FROM CITY;

--21. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE LOWER(RIGHT(CITY, 1)) NOT IN ('a','e','i','o','u') AND LOWER(LEFT(CITY, 1)) NOT IN ('a','e','i','o','u');

--22. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE LOWER(RIGHT(CITY, 1)) NOT IN ('a','e','i','o','u') OR LOWER(LEFT(CITY, 1)) NOT IN ('a','e','i','o','u');

--23. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE LOWER(RIGHT(CITY, 1)) IN ('a','e','i','o','u') AND LOWER(LEFT(CITY, 1)) IN ('a','e','i','o','u');

--24. Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. 
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC, CITY ASC LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 1;

