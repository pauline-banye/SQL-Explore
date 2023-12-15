-- /*SELECT visits.record_id, visits.source_id, visits.visit_count, water_source.type_of_water_source, water_quality.subjective_quality_score
-- FROM visits, water_source, water_quality
-- WHERE visits.record_id IN (
--     SELECT record_id
--     FROM water_quality
--     WHERE subjective_quality_score = 10
--     AND visit_count = 2
-- )
-- /*AND visits.source_id IN (
--     SELECT source_id
--     FROM water_source
--     WHERE type_of_water_source LIKE "tap%"
-- );*/


-- USE `md_water_services`;
-- SET SQL_SAFE_UPDATES = 0;



-- /*Show all tables in the db*/
-- SHOW TABLES;


-- /*Select first 5 recs from the tables*/
-- SELECT *
-- FROM employee
-- LIMIT 5;

-- SELECT *
-- FROM global_water_access
-- LIMIT 5;

-- SELECT *
-- FROM location
-- LIMIT 5;

-- SELECT *
-- FROM visits
-- LIMIT 5;

-- SELECT *
-- FROM water_quality
-- LIMIT 5;

-- SELECT *
-- FROM water_source
-- LIMIT 5;

-- SELECT *
-- FROM well_pollution
-- LIMIT 5;

-- SELECT *
-- FROM data_dictionary;


-- /*Find unique types of water sources*/
-- SELECT DISTINCT type_of_water_source
-- FROM water_source;


-- /*Find all records from the visits table where the time_in_queue is more than 500 min.*/
-- SELECT *
-- FROM visits
-- WHERE time_in_queue > 500;


-- /*Find more information about the following water_source_id
-- AkKi00881224
-- SoRu37635224
-- SoRu36096224
-- AkRu05234224
-- HaZa21742224*/

-- SELECT *
-- FROM water_source
-- WHERE source_id 
-- IN (
-- 	"AkKi00881224",
--     "SoRu37635224",
--     "SoRu36096224",
--     "AkRu05234224",
--     "HaZa21742224"
-- );

-- /*Find records where the subject_quality_score is 10 
-- and where the source was visited a second time.*/
-- SELECT * 
-- FROM water_quality
-- WHERE subjective_quality_score = 10
-- AND visit_count = 2;

-- /*Did you notice that we recorded contamination/pollution data for all of the well sources? 
-- Find the right table and print the first few rows.*/
-- SELECT *
-- FROM well_pollution
-- WHERE results = "Clean"
-- LIMIT 7;


-- /*Write a query that checks if the results is Clean but the biological column is > 0.01.*/
-- SELECT *
-- FROM well_pollution
-- WHERE results = "Clean"
-- AND biological > 0.01;


-- /*First, let's look at the descriptions. We need to identify the records that mistakenly have the word Clean in the description.*/
-- SELECT *
-- FROM well_pollution
-- WHERE description LIKE "Clean_%"; 

-- /*Duplicate the well_pollution table
-- CREATE TABLE well_pollution_copy AS(
-- 	SELECT * FROM well_pollution
-- );*/


-- /*Looking at the results we can see two different descriptions that we need to fix:
-- 1. All records that mistakenly have Clean Bacteria: E. coli should updated to Bacteria: E. coli
-- 2. All records that mistakenly have Clean Bacteria: Giardia Lamblia should updated to Bacteria: Giardia Lamblia
-- 3. Update the results column from Clean to Contaminated: Biological where the biological column has a value greater than 0.01.*/

-- UPDATE well_pollution
-- SET description = 'Bacteria: E. coli'
-- WHERE description = 'Clean Bacteria: E. coli';

-- UPDATE well_pollution
-- SET description = 'Bacteria: Giardia Lamblia'
-- WHERE description = 'Clean Bacteria: Giardia Lamblia';

-- UPDATE well_pollution
-- SET results = 'Contaminated: Biological'
-- WHERE biological > 0.01
-- AND results = "Clean"
-- ;

-- DROP TABLE well_pollution_copy;


-- USE `md_water_services`;

-- SELECT
-- auditorRep.location_id,
-- visitsTbl.record_id,
-- auditorRep.true_water_source_score AS auditor_score,
-- wq.subjective_quality_score AS employee_score,
-- wq.subjective_quality_score - auditorRep.true_water_source_score  AS score_diff
-- FROM auditor_report AS auditorRep
-- JOIN visits AS visitsTbl
-- ON auditorRep.location_id = visitsTbl.location_id
-- JOIN water_quality AS wq
-- ON visitsTbl.record_id = wq.record_id
-- WHERE (wq.subjective_quality_score - auditorRep.true_water_source_score) > 9;

USE united_nations;

-- SELECT 
-- 	*
-- FROM 
-- 	geographic_location AS geo
-- LEFT JOIN
-- 	economic_indicators as econ
-- ON
-- 	geo.Country_name = econ.Country_name
-- LEFT JOIN
-- 	basic_services as svc
-- ON
-- 	geo.Country_name = svc.Country_name
-- AND
-- 	econ.Time_period = svc.Time_period;

-- select DISTINCT(Region)
-- from geographic_location;

SELECT 
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment, 19.59) AS Pct_unemployment_imputed
FROM 
	geographic_location AS loc
LEFT JOIN
	economic_indicators as eco
ON
	loc.Country_name = eco.Country_name
WHERE
    Region LIKE '%Central and Southern Asia%'
UNION
SELECT 
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment, 17.84) AS Pct_unemployment_imputed
FROM 
	geographic_location AS loc
LEFT JOIN
	economic_indicators as eco
ON
	loc.Country_name = eco.Country_name
WHERE
    Region LIKE '%Northern Africa%'
UNION
SELECT 
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment, 4.98) AS Pct_unemployment_imputed
FROM 
	geographic_location AS loc
LEFT JOIN
	economic_indicators as eco
ON
	loc.Country_name = eco.Country_name
WHERE
    Region LIKE '%Ocean%'
UNION
SELECT 
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment, 33.65) AS Pct_unemployment_imputed
FROM 
	geographic_location AS loc
LEFT JOIN
	economic_indicators as eco
ON
	loc.Country_name = eco.Country_name
WHERE
    Region LIKE '%Sub-Saharan%'
UNION
SELECT 
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment, 24.23) AS Pct_unemployment_imputed
FROM 
	geographic_location AS loc
LEFT JOIN
	economic_indicators as eco
ON
	loc.Country_name = eco.Country_name
WHERE
    Region LIKE '%Latin America and%'
UNION
SELECT 
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment, 24.43) AS Pct_unemployment_imputed
FROM 
	geographic_location AS loc
LEFT JOIN
	economic_indicators as eco
ON
	loc.Country_name = eco.Country_name
WHERE
    Region LIKE '%Europe and Northern%'
UNION
SELECT 
	loc.Country_name,
    eco.Time_period,
    IFNULL(eco.Pct_unemployment, 22.64) AS Pct_unemployment_imputed
FROM 
	geographic_location AS loc
LEFT JOIN
	economic_indicators as eco
ON
	loc.Country_name = eco.Country_name
WHERE
    Region LIKE '%Eastern and South-Eastern%';





