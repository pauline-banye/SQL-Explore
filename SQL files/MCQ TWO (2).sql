set sql_safe_updates = 0;

-- Replace the space with a full stop
SELECT
REPLACE(employee_name, ' ','.') 
FROM
employee;

-- Change employee name to lower case
SELECT
LOWER(REPLACE(employee_name, ' ','.'))
FROM
employee;

-- Concatenate employee name and email 
SELECT
CONCAT(LOWER(REPLACE(employee_name, ' ','.')), '@ndogowater.gov')
FROM
employee;

-- Create a copy of employee table
CREATE TABLE employee_copy 
SELECT *
FROM employee;

-- Update the employee table with the email address
UPDATE employee
SET email = CONCAT(LOWER(REPLACE(employee_name, ' ','.')), '@ndogowater.gov');

SELECT *
FROM employee;

-- Drop the copy of the table 
DROP TABLE employee_copy;

-- QUESTION 2
SELECT *
FROM employee;

-- Use of length function
SELECT
LENGTH(phone_number)
FROM
employee;
-- Use of trim and length function
SELECT 
TRIM(phone_number)
FROM employee;

SELECT LENGTH(TRIM(phone_number))
FROM employee;
-- Updating the phone number column in the employee table
UPDATE employee
SET phone_number = TRIM(phone_number);

-- QUESTION 3
-- Counting the number of employees in each town
SELECT town_name, COUNT(town_name)
FROM employee
GROUP BY town_name;

SELECT DISTINCT town_name, COUNT(town_name)
FROM employee
GROUP BY town_name;

-- Number of visits per employee
SELECT *
FROM visits;

SELECT assigned_employee_id, COUNT(assigned_employee_id) AS num_of_visits
FROM visits
GROUP BY assigned_employee_id
ORDER BY num_of_visits DESC
LIMIT 3;

SELECT assigned_employee_id, COUNT(visit_count) 
FROM visits
GROUP BY assigned_employee_id
ORDER BY COUNT(visit_count) DESC
LIMIT 3;

-- Query the name, email address and phone number of the top 3 employees
SELECT employee_name, email, phone_number, assigned_employee_id
FROM employee
WHERE assigned_employee_id IN (1, 30, 34);

-- Identifying location of water sources in Maji Ndogo
SELECT *
FROM location;

-- Query the number of records by town
SELECT town_name, COUNT(town_name) AS num_of_records
FROM location
GROUP BY town_name;

-- Query to count records by province 
SELECT province_name, COUNT(province_name) AS num_of_records
FROM location
GROUP BY province_name;

-- Query the town name and province name and records by town 
SELECT province_name, town_name, COUNT(town_name) AS records_per_town
FROM location
GROUP BY province_name, town_name
ORDER BY province_name, records_per_town DESC;

-- Query number of records in each location type
SELECT location_type, COUNT(town_name) AS records_per_location_type
FROM location
GROUP BY location_type;

-- Percentage of Rural Location type
SELECT 23740 / (15910 + 23740) * 100;

-- QUESTION 4
SELECT *
FROM water_source;

-- How many people did we survey in total?
SELECT SUM(number_of_people_served) AS total_num_of_people_served
FROM water_source;

-- Number of different water source types
SELECT type_of_water_source, COUNT(type_of_water_source) AS count_of_water_source
FROM water_source
GROUP BY type_of_water_source
ORDER BY count_of_water_source DESC;

-- Average number of people served by each water source 
SELECT type_of_water_source, ROUND(AVG(number_of_people_served)) AS avg_num_of_people_served
FROM water_source
GROUP BY type_of_water_source
ORDER BY avg_num_of_people_served DESC;

-- Total number of people served by each water source
SELECT type_of_water_source, SUM(number_of_people_served) AS num_of_people_served
FROM water_source
GROUP BY type_of_water_source
ORDER BY num_of_people_served DESC;

-- Percentage of people served by each water source
SELECT type_of_water_source, ROUND(SUM(number_of_people_served)/
	(SELECT SUM(number_of_people_served) FROM water_source)
		* 100) AS percentage_of_people_served 
FROM water_source
GROUP BY type_of_water_source
ORDER BY percentage_of_people_served DESC;

-- QUESTION 5
-- Query to rank each water source based on number of people served
SELECT type_of_water_source, SUM(number_of_people_served) AS num_of_people_served, 
RANK() OVER 
		(ORDER BY SUM(number_of_people_served) DESC) AS Ranking 
FROM water_source
WHERE type_of_water_source != "tap_in_home"
GROUP BY type_of_water_source;

-- ALTERNATIVELY,
SELECT type_of_water_source, num_of_people_served,
RANK() OVER 
		(ORDER BY num_of_people_served DESC) AS Ranking 
FROM (SELECT type_of_water_source, SUM(number_of_people_served) AS num_of_people_served 
		FROM water_source 
        WHERE type_of_water_source != "tap_in_home"
        GROUP BY type_of_water_source) AS Ranking;
     
-- Query to each water source and source id      
-- RANK
SELECT source_id, type_of_water_source, number_of_people_served AS num_of_people_served, 
RANK() OVER 
		(PARTITION BY type_of_water_source 
         ORDER BY number_of_people_served DESC) AS Priority_of_ranking
FROM water_source
WHERE type_of_water_source != "tap_in_home";

-- DENSE RANK
SELECT source_id, type_of_water_source, number_of_people_served AS num_of_people_served, 
DENSE_RANK() OVER 
		(PARTITION BY type_of_water_source 
         ORDER BY number_of_people_served DESC) AS Priority_of_ranking
FROM water_source
WHERE type_of_water_source != "tap_in_home";

-- ROW NUMBER RANKING
SELECT source_id, type_of_water_source, number_of_people_served AS num_of_people_served, 
ROW_NUMBER() OVER 
		(PARTITION BY type_of_water_source 
         ORDER BY number_of_people_served DESC) AS Priority_of_ranking
FROM water_source
WHERE type_of_water_source != "tap_in_home";

-- COMBINATION OF RANK, DENSE RANK AND ROW NUMBER
SELECT source_id, type_of_water_source, number_of_people_served AS num_of_people_served, 
RANK() OVER 
		(PARTITION BY type_of_water_source 
         ORDER BY number_of_people_served DESC) AS Priority_of_ranking, 
DENSE_RANK() OVER 
		(PARTITION BY type_of_water_source 
         ORDER BY number_of_people_served DESC) AS Dense_Priority_of_ranking,
ROW_NUMBER() OVER 
		(PARTITION BY type_of_water_source 
         ORDER BY number_of_people_served DESC) AS Row_num
FROM water_source
WHERE type_of_water_source != "tap_in_home";

-- QUESTION 6
-- How long did the survey last?
SELECT DATEDIFF(MAX(time_of_record), MIN(time_of_record)) AS Date_diff
FROM visits;

SELECT *
FROM visits;

-- Average queue time
SELECT ROUND(AVG(NULLIF(time_in_queue, 0))) as Avg_queue_time
FROM visits
WHERE time_in_queue != 0;

-- Average queue time by days of the week
SELECT DAYNAME(time_of_record) AS Day_of_the_week, AVG(time_in_queue) AS Avg_queue_time
FROM visits
GROUP BY DAYNAME(time_of_record);



