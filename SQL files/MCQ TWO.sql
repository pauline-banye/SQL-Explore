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












