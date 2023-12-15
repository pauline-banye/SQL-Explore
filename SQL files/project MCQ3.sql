USE md_water_services;

-- Create auditor report the table (then Import the CSV file)
DROP TABLE IF EXISTS `auditor_report`;
CREATE TABLE `auditor_report` (
`location_id` VARCHAR(32),
`type_of_water_source` VARCHAR(64),
`true_water_source_score` int DEFAULT NULL,
`statements` VARCHAR(255)
);

SELECT * FROM auditor_report;
SELECT * FROM water_quality;
SELECT * FROM visits;
SELECT * FROM location;

-- join the visits table to the auditor_report table. Make sure to grab subjective_quality_score, record_id and location_id.
SELECT 
	auditor_report.location_id AS audit_location, 
    auditor_report.true_water_source_score, 
    visits.location_id AS visits_location,
    visits.record_id
FROM auditor_report
JOIN visits
USING (location_id);


-- JOIN the visits table and the water_quality table, using the record_id as the connecting key.
SELECT 
	auditor_report.location_id AS audit_location, 
    auditor_report.true_water_source_score, 
    visits.location_id AS visits_location,
    visits.record_id,
    water_quality.subjective_quality_score
FROM auditor_report
JOIN visits
USING (location_id)
JOIN water_quality
USING (record_id);
	
-- Drop one of the location_id columns. Let's leave record_id and rename the scores to surveyor_score and auditor_score 
SELECT 
	auditor_report.location_id, 
    water_quality.record_id,
    auditor_report.true_water_source_score AS auditor_score, 
    water_quality.subjective_quality_score AS employee_score
FROM auditor_report
JOIN visits
USING (location_id)
JOIN water_quality
USING (record_id)
LIMIT 1000;

-- Check if the auditor's and exployees' scores agree. Use WHERE clause and check if surveyor_score = auditor_score
SELECT 
	ar.location_id, 
    wq.record_id,
    ar.true_water_source_score AS auditor_score, 
    wq.subjective_quality_score AS surveyor_score
FROM auditor_report ar
JOIN visits v
USING (location_id)
JOIN water_quality wq
USING (record_id)
WHERE wq.subjective_quality_score = ar.true_water_source_score;

-- count how many rows were returned
SELECT COUNT(*)
FROM (
		SELECT 
			ar.location_id, 
			wq.record_id,
			ar.true_water_source_score AS auditor_score, 
			wq.subjective_quality_score AS surveyor_score
		FROM auditor_report ar
		JOIN visits v
		USING (location_id)
		JOIN water_quality wq
		USING (record_id)
		WHERE wq.subjective_quality_score = ar.true_water_source_score
) AS total_rows;

-- ALT using CTE
WITH count_query AS (
	SELECT 
		ar.location_id, 
		wq.record_id,
		ar.true_water_source_score AS auditor_score, 
		wq.subjective_quality_score AS surveyor_score
	FROM auditor_report ar
	JOIN visits v
	USING (location_id)
	JOIN water_quality wq
	USING (record_id)
	WHERE wq.subjective_quality_score = ar.true_water_source_score)
SELECT COUNT(*) AS total_rows
FROM count_query;

-- limit to results to those where visit count = 1
SELECT 
	ar.location_id, 
    wq.record_id,
    ar.true_water_source_score AS auditor_score, 
    wq.subjective_quality_score AS employee_score
FROM auditor_report ar
JOIN visits v
USING (location_id)
JOIN water_quality wq
USING (record_id)
WHERE v.visit_count = 1 AND wq.subjective_quality_score = ar.true_water_source_score;

-- Count new total using CTE
WITH count_query AS (
	SELECT 
		ar.location_id, 
		wq.record_id,
		ar.true_water_source_score AS auditor_score, 
		wq.subjective_quality_score AS employee_score
	FROM auditor_report ar
	JOIN visits v
	USING (location_id)
	JOIN water_quality wq
	USING (record_id)
	WHERE v.visit_count = 1 
    AND wq.subjective_quality_score = ar.true_water_source_score)
SELECT COUNT(*) AS total_rows
FROM count_query;

-- find the 102 incorrect results. Limit to results to those where surveyor and auditor scores dont match
SELECT 
	ar.location_id, 
    wq.record_id,
    ar.true_water_source_score AS auditor_score, 
    wq.subjective_quality_score AS employee_score
FROM auditor_report ar
JOIN visits v
USING (location_id)
JOIN water_quality wq
USING (record_id)
WHERE v.visit_count = 1 AND wq.subjective_quality_score != ar.true_water_source_score;

-- Count new total using CTE
WITH count_query AS (
	SELECT 
		ar.location_id, 
		wq.record_id,
		ar.true_water_source_score AS auditor_score, 
		wq.subjective_quality_score AS employee_score
	FROM auditor_report ar
	JOIN visits v
	USING (location_id)
	JOIN water_quality wq
	USING (record_id)
	WHERE v.visit_count = 1 
    AND wq.subjective_quality_score != ar.true_water_source_score)
SELECT COUNT(*) AS total_rows
FROM count_query;

-- Check if there are any errors on the type_of_water_source
SELECT 
	ar.location_id, 
    ar.type_of_water_source AS auditor_source,
    ws.type_of_water_source AS survey_source,
    wq.record_id,
    ar.true_water_source_score AS auditor_score, 
    wq.subjective_quality_score AS employee_score
FROM auditor_report ar
JOIN visits v
USING (location_id)
JOIN water_quality wq
USING (record_id)
JOIN water_source ws
ON v.source_id = ws.source_id
WHERE v.visit_count = 1 AND wq.subjective_quality_score != ar.true_water_source_score;

-- Identify the employees who made the mistakes using their id 
SELECT 
	ar.location_id, 
    wq.record_id,
    v.assigned_employee_id,
    ar.true_water_source_score AS auditor_score, 
    wq.subjective_quality_score AS employee_score
FROM auditor_report ar
JOIN visits v
USING (location_id)
JOIN water_quality wq
USING (record_id)
WHERE v.visit_count = 1 AND wq.subjective_quality_score != ar.true_water_source_score;

-- Identify the employees who made the mistakes using their names 
SELECT 
	ar.location_id, 
    wq.record_id,
    e.employee_name,
    ar.true_water_source_score AS auditor_score, 
    wq.subjective_quality_score AS employee_score
FROM auditor_report ar
JOIN visits v
USING (location_id)
JOIN water_quality wq
USING (record_id)
JOIN employee e
USING (assigned_employee_id)
WHERE v.visit_count = 1 AND wq.subjective_quality_score != ar.true_water_source_score;
