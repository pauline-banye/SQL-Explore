-- Joining location and visits table
SELECT location.province_name, location.town_name, visits.visit_count, location.location_id
FROM location 
JOIN visits
ON visits.location_id = location.location_id;

-- ALTERNATIVELY,
SELECT location.province_name, location.town_name, visits.visit_count, location.location_id
FROM location 
JOIN visits
USING (location_id);

-- Combining water source
SELECT location.province_name, location.town_name, visits.visit_count, 
location.location_id, water_source.type_of_water_source, water_source.number_of_people_served
FROM location 
JOIN visits
ON visits.location_id = location.location_id
JOIN water_source
ON water_source.source_id = visits.source_id
WHERE visits.visit_count = 1;

-- Adding location type and time in queue
SELECT location.province_name, location.town_name, location.location_type, visits.time_in_queue, 
water_source.type_of_water_source, water_source.number_of_people_served
FROM location 
JOIN visits
ON visits.location_id = location.location_id
JOIN water_source
ON water_source.source_id = visits.source_id
WHERE visits.visit_count = 1;

-- Left Join well pollution and visits table
SELECT visits.time_in_queue, well_pollution.results
FROM visits
LEFT JOIN well_pollution
ON well_pollution.source_id = visits.source_id;

-- Joining well pollution, visits and location table
SELECT location.town_name, location.province_name, location.location_type, 
visits.time_in_queue, well_pollution.results
FROM visits
LEFT JOIN well_pollution
ON well_pollution.source_id = visits.source_id
INNER JOIN location
ON location.location_id = visits.location_id;

-- Adding well population table using left join, visits, location and water source table
SELECT water_source.type_of_water_source, location.town_name, 
location.province_name, location.location_type, water_source.number_of_people_served, 
visits.time_in_queue, well_pollution.results
FROM visits
RIGHT JOIN well_pollution
ON well_pollution.source_id = visits.source_id
INNER JOIN location
ON location.location_id = visits.location_id
INNER JOIN water_source
ON water_source.source_id = visits.source_id
WHERE visits.visit_count = 1;

-- Creating a View with the previous query
CREATE VIEW combined_analysis_table AS
--  This view assembles data from different tables into one to simplify analysis
SELECT water_source.type_of_water_source AS source_type,
location.town_name, location.province_name, location.location_type,
water_source.number_of_people_served AS people_served,
visits.time_in_queue, well_pollution.results
FROM visits
LEFT JOIN well_pollution
ON well_pollution.source_id = visits.source_id
INNER JOIN location
ON location.location_id = visits.location_id
INNER JOIN water_source
ON water_source.source_id = visits.source_id
WHERE visits.visit_count = 1;

SELECT *
FROM Combined_analysis_table;

-- Creating a pivot table
WITH province_totals AS (-- This CTE calculates the population of each province
SELECT province_name,
SUM(people_served) AS total_ppl_serv
FROM combined_analysis_table
GROUP BY province_name)
SELECT
ct.province_name,
-- These case statements create columns for each type of source.
-- The results are aggregated and percentages are calculated
ROUND((SUM(CASE WHEN source_type = 'river'
THEN people_served ELSE 0 END) * 100.0 / pt.total_ppl_serv), 0) AS river,
ROUND((SUM(CASE WHEN source_type = 'shared_tap'
THEN people_served ELSE 0 END) * 100.0 / pt.total_ppl_serv), 0) AS shared_tap,
ROUND((SUM(CASE WHEN source_type = 'tap_in_home'
THEN people_served ELSE 0 END) * 100.0 / pt.total_ppl_serv), 0) AS tap_in_home,
ROUND((SUM(CASE WHEN source_type = 'tap_in_home_broken'
THEN people_served ELSE 0 END) * 100.0 / pt.total_ppl_serv), 0) AS tap_in_home_broken,
ROUND((SUM(CASE WHEN source_type = 'well'
THEN people_served ELSE 0 END) * 100.0 / pt.total_ppl_serv), 0) AS well
FROM combined_analysis_table ct
JOIN province_totals pt 
ON ct.province_name = pt.province_name
GROUP BY ct.province_name
ORDER BY ct.province_name;