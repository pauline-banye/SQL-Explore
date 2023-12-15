-- Task 2 - INTEGRATING THE REPORT
-- Creating table before importing the csv file
DROP TABLE IF EXISTS auditor_report;
CREATE TABLE auditor_report (
location_id VARCHAR(32),
type_of_water_source VARCHAR(64),
true_water_source_score int DEFAULT NULL,
statements VARCHAR(255)
);
USE md_water_services;

-- To check the records on auditor report
SELECT *
FROM md_water_services.auditor_report;

-- Grab location_id and water_source_score
SELECT location_id, true_water_source_score
FROM auditor_report;

SELECT location_id, true_water_source_score, subjective_quality_score
FROM auditor_report;

SELECT * FROM auditor_report;
SELECT * FROM visits;
SELECT * FROM water_quality;
SELECT * FROM location;

-- joining tables
SELECT visits.record_id, auditor_report.location_id, water_quality.subjective_quality_score, auditor_report.true_water_source_score
FROM auditor_report
JOIN visits
ON auditor_report.location_id = visits.location_id
JOIN water_quality
on water_quality.record_id = visits.record_id;

-- Alternatively
USE md_water_services;
SELECT v.record_id, ar.location_id AS auditor_location, subjective_quality_score, true_water_source_score, v.location_id AS visit_location
FROM visits AS v 
JOIN water_quality AS wq
ON v.record_id = wq.record_id
JOIN auditor_report AS ar
ON ar.location_id = v.location_id;

-- Comparing surveyor/employee score and the auditor score
SELECT v.record_id, ar.location_id AS auditor_location, subjective_quality_score AS employee_surveyor_score, true_water_source_score AS auditor_score
FROM visits AS v 
JOIN water_quality AS wq
ON v.record_id = wq.record_id
JOIN auditor_report AS ar
ON ar.location_id = v.location_id
WHERE subjective_quality_score = true_water_source_score
AND v.visit_count = 1;

-- Comparing records where employee score and auditor score are not equal
SELECT v.record_id, ar.location_id AS auditor_location, subjective_quality_score AS employee_surveyor_score, true_water_source_score AS auditor_score
FROM visits AS v 
JOIN water_quality AS wq
ON v.record_id = wq.record_id
JOIN auditor_report AS ar
ON ar.location_id = v.location_id
WHERE subjective_quality_score != true_water_source_score
AND v.visit_count = 1;

-- Linking the employee records
SELECT v.record_id, ar.location_id AS auditor_location, subjective_quality_score AS employee_surveyor_score, 
true_water_source_score AS auditor_score, employee.employee_name
FROM visits AS v 
JOIN water_quality AS wq
ON v.record_id = wq.record_id
JOIN auditor_report AS ar
ON ar.location_id = v.location_id
JOIN employee 
ON employee.assigned_employee_id = v.assigned_employee_id
WHERE subjective_quality_score != true_water_source_score
AND v.visit_count = 1;

-- Gathering Evidence
WITH Incorrect_Records AS
(SELECT v.record_id, ar.location_id AS auditor_location, subjective_quality_score AS employee_surveyor_score, 
true_water_source_score AS auditor_score, employee.employee_name
FROM visits AS v 
JOIN water_quality AS wq
ON v.record_id = wq.record_id
JOIN auditor_report AS ar
ON ar.location_id = v.location_id
JOIN employee 
ON employee.assigned_employee_id = v.assigned_employee_id
WHERE subjective_quality_score != true_water_source_score
AND v.visit_count = 1),
Error_Count AS 
(SELECT employee_name, COUNT(employee_name) AS number_of_mistakes
FROM Incorrect_Records
GROUP BY employee_name
ORDER BY number_of_mistakes DESC),
Suspect_List AS 
(SELECT employee_name, number_of_mistakes
FROM error_count
WHERE number_of_mistakes > (SELECT AVG(number_of_mistakes)
							FROM error_count))
SELECT *
FROM Suspect_List;     

-- Creating a View
CREATE VIEW Incorrect_records AS (
SELECT auditor_report.location_id, visits.record_id, employee.employee_name, auditor_report.true_water_source_score AS auditor_score, 
wq.subjective_quality_score AS employee_score, auditor_report.statements AS statements
FROM auditor_report
JOIN visits
ON auditor_report.location_id = visits.location_id
JOIN water_quality AS wq
ON visits.record_id = wq.record_id
JOIN employee
ON employee.assigned_employee_id = visits.assigned_employee_id
WHERE visits.visit_count =1
AND auditor_report.true_water_source_score != wq.subjective_quality_score);

SELECT *
FROM Incorrect_Records;

-- Converting Error Count and Suspect List to CTEs
WITH error_count AS ( -- This CTE calculates the number of mistakes each employee made
SELECT employee_name, COUNT(employee_name) AS number_of_mistakes
FROM Incorrect_records
/* Incorrect_records is a view that joins the audit report to the database for records where the auditor and
employees scores are different */
GROUP BY employee_name),
-- Query: Employees not in the suspect list  
Suspect_List AS 
(SELECT employee_name, number_of_mistakes
FROM Error_Count
WHERE number_of_mistakes > (SELECT AVG(number_of_mistakes) AS avg_num_of_mistakes
FROM error_count))
SELECT employee_name, location_id, statements
FROM Incorrect_Records
WHERE employee_name NOT IN (SELECT employee_name
						FROM Suspect_List)
AND statements LIKE "%cash%";

