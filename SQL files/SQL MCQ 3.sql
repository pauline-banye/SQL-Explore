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

-- Removing 
SELECT v.record_id, ar.location_id AS auditor_location, subjective_quality_score, true_water_source_score, v.location_id AS visit_location
FROM visits AS v 
JOIN water_quality AS wq
ON v.record_id = wq.record_id
JOIN auditor_report AS ar
ON ar.location_id = v.location_id;



