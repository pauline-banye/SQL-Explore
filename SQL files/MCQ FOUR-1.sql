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

-- Creating a pivot table grouping by province name 
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

WITH province_totals AS (-- This CTE calculates the population of each province
SELECT province_name,
SUM(people_served) AS total_ppl_serv
FROM combined_analysis_table
GROUP BY province_name)
SELECT *
FROM province_totals;

-- Creating a pivot table grouping by town name
WITH town_totals AS (-- This CTE calculates the population of each town
-- Since there are two Harare towns, we have to group by province_name and town_name
SELECT province_name, town_name, SUM(people_served) AS total_ppl_serv
FROM combined_analysis_table
GROUP BY province_name,town_name
)
SELECT
ct.province_name,
ct.town_name,
ROUND((SUM(CASE WHEN source_type = 'river'
THEN people_served ELSE 0 END) * 100.0 / tt.total_ppl_serv), 0) AS river,
ROUND((SUM(CASE WHEN source_type = 'shared_tap'
THEN people_served ELSE 0 END) * 100.0 / tt.total_ppl_serv), 0) AS shared_tap,
ROUND((SUM(CASE WHEN source_type = 'tap_in_home'
THEN people_served ELSE 0 END) * 100.0 / tt.total_ppl_serv), 0) AS tap_in_home,
ROUND((SUM(CASE WHEN source_type = 'tap_in_home_broken'
THEN people_served ELSE 0 END) * 100.0 / tt.total_ppl_serv), 0) AS tap_in_home_broken,
ROUND((SUM(CASE WHEN source_type = 'well'
THEN people_served ELSE 0 END) * 100.0 / tt.total_ppl_serv), 0) AS well
FROM
combined_analysis_table ct
JOIN -- Since the town names are not unique, we have to join on a composite key
town_totals tt ON ct.province_name = tt.province_name AND ct.town_name = tt.town_name
GROUP BY -- We group by province first, then by town.
ct.province_name,
ct.town_name
ORDER BY
ct.town_name;

-- Creating a Temporary Table
CREATE TEMPORARY TABLE town_aggregated_water_access
WITH town_totals AS (-- This CTE calculates the population of each town
-- Since there are two Harare towns, we have to group by province_name and town_name
SELECT province_name, town_name, SUM(people_served) AS total_ppl_serv
FROM combined_analysis_table
GROUP BY province_name,town_name
)
SELECT
ct.province_name,
ct.town_name,
ROUND((SUM(CASE WHEN source_type = 'river'
THEN people_served ELSE 0 END) * 100.0 / tt.total_ppl_serv), 0) AS river,
ROUND((SUM(CASE WHEN source_type = 'shared_tap'
THEN people_served ELSE 0 END) * 100.0 / tt.total_ppl_serv), 0) AS shared_tap,
ROUND((SUM(CASE WHEN source_type = 'tap_in_home'
THEN people_served ELSE 0 END) * 100.0 / tt.total_ppl_serv), 0) AS tap_in_home,
ROUND((SUM(CASE WHEN source_type = 'tap_in_home_broken'
THEN people_served ELSE 0 END) * 100.0 / tt.total_ppl_serv), 0) AS tap_in_home_broken,
ROUND((SUM(CASE WHEN source_type = 'well'
THEN people_served ELSE 0 END) * 100.0 / tt.total_ppl_serv), 0) AS well
FROM
combined_analysis_table ct
JOIN -- Since the town names are not unique, we have to join on a composite key
town_totals tt ON ct.province_name = tt.province_name AND ct.town_name = tt.town_name
GROUP BY -- We group by province first, then by town.
ct.province_name,
ct.town_name
ORDER BY
ct.town_name;

SELECT *
FROM town_aggregated_water_access
ORDER BY river DESC;

SELECT *
FROM town_aggregated_water_access
ORDER BY shared_tap DESC;
-- You can order by the remaining types of water sources to see the patterns

-- Sorting by province names
SELECT *
FROM town_aggregated_water_access
ORDER BY province_name;

-- Checking percentahe of broken taps
SELECT province_name, town_name,
ROUND(tap_in_home_broken / (tap_in_home_broken + tap_in_home) *100,0) AS Pct_broken_taps
FROM town_aggregated_water_access;

-- Creating a Project Progress Table
CREATE TABLE Project_progress (
Project_id SERIAL PRIMARY KEY,
source_id VARCHAR(20) NOT NULL REFERENCES water_source(source_id) ON DELETE CASCADE ON UPDATE CASCADE,
Address VARCHAR(50),
Town VARCHAR(30),
Province VARCHAR(30),
Source_type VARCHAR(50),
Improvement VARCHAR(50),
Source_status VARCHAR(50) DEFAULT 'Backlog' CHECK (Source_status IN ('Backlog', 'In progress', 'Complete')),
Date_of_completion DATE,
Comments TEXT
);

-- Building the query for the project progress table for faulty water sources
SELECT location.address, location.town_name, location.province_name,
water_source.source_id, water_source.type_of_water_source, well_pollution.results
FROM water_source
LEFT JOIN well_pollution 
ON water_source.source_id = well_pollution.source_id
INNER JOIN visits 
ON water_source.source_id = visits.source_id
INNER JOIN location 
ON location.location_id = visits.location_id
WHERE visits.visit_count = 1 -- This must always be true
AND ( -- AND one of the following (OR) options must be true as well.
well_pollution.results != 'Clean'
OR water_source.type_of_water_source IN ('tap_in_home_broken','river')
OR (water_source.type_of_water_source = 'shared_tap' AND visits.time_in_queue >= 30));

-- The complete query to be inserted into the project progress table
SELECT location.address, location.town_name, location.province_name,
water_source.source_id, water_source.type_of_water_source, well_pollution.results, time_in_queue,
CASE WHEN well_pollution.results = "Contaminated: Biological" 
	THEN "Install UV Filter"
    WHEN well_pollution.results = "Contaminated: Chemical"
    THEN "Install RO Filter" 
    WHEN type_of_water_source = "river"
    THEN "Drill wells"
    WHEN type_of_water_source = "shared_tap" AND time_in_queue >= 30 
    THEN CONCAT("Install ", FLOOR(time_in_queue/30), " taps nearby")
    WHEN type_of_water_source = "tap_in_home_broken" 
    THEN "Diagnose Local Infrastructure"
    ELSE NULL 
    END AS Improvement
FROM water_source
LEFT JOIN well_pollution 
ON water_source.source_id = well_pollution.source_id
INNER JOIN visits 
ON water_source.source_id = visits.source_id
INNER JOIN location 
ON location.location_id = visits.location_id
WHERE visits.visit_count = 1 -- This must always be true
AND ( -- AND one of the following (OR) options must be true as well.
well_pollution.results != 'Clean'
OR water_source.type_of_water_source IN ('tap_in_home_broken','river')
OR (water_source.type_of_water_source = 'shared_tap' AND visits.time_in_queue >= 30));

SELECT *
FROM project_progress;

-- Query to insert the information above into the project progress table    
INSERT INTO project_progress (source_id, Address, Town, Province, Source_type, Improvement)

SELECT water_source.source_id, location.address, location.town_name, location.province_name,
 water_source.type_of_water_source, 
CASE WHEN well_pollution.results = "Contaminated: Biological" 
	THEN "Install UV Filter"
    WHEN well_pollution.results = "Contaminated: Chemical"
    THEN "Install RO Filter" 
    WHEN type_of_water_source = "river"
    THEN "Drill wells"
    WHEN type_of_water_source = "shared_tap" AND time_in_queue >= 30 
    THEN CONCAT("Install ", FLOOR(time_in_queue/30), " taps nearby")
    WHEN type_of_water_source = "tap_in_home_broken" 
    THEN "Diagnose Local Infrastructure"
    ELSE NULL 
    END AS Improvement
FROM water_source
LEFT JOIN well_pollution 
ON water_source.source_id = well_pollution.source_id
INNER JOIN visits 
ON water_source.source_id = visits.source_id
INNER JOIN location 
ON location.location_id = visits.location_id
WHERE visits.visit_count = 1 -- This must always be true
AND ( -- AND one of the following (OR) options must be true as well.
well_pollution.results != 'Clean'
OR water_source.type_of_water_source IN ('tap_in_home_broken','river')
OR (water_source.type_of_water_source = 'shared_tap' AND visits.time_in_queue >= 30));

SELECT *
FROM project_progress



