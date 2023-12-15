USE md_water_services;

-- Start by joining location to visits.
SELECT 
	loc.province_name, 
	loc.town_name, 
	v.visit_count, 
	v.location_id
FROM location loc
JOIN visits v
USING (location_id);

-- join the water_source table on the key shared between water_source and visits.
SELECT 
	loc.province_name, 
	loc.town_name, 
	v.visit_count, 
	v.location_id,
    ws.type_of_water_source,
    ws.number_of_people_served
FROM location loc
JOIN visits v
USING (location_id)
JOIN water_source ws
USING (source_id);

-- limit to those where visit location = 'AkHa00103'.
SELECT 
	loc.province_name, 
	loc.town_name, 
	v.visit_count, 
	v.location_id,
    ws.type_of_water_source,
    ws.number_of_people_served
FROM location loc
JOIN visits v
USING (location_id)
JOIN water_source ws
USING (source_id)
WHERE v.location_id = 'AkHa00103';

-- limit to those with visit count = 1.
SELECT 
	loc.province_name, 
	loc.town_name, 
	v.visit_count, 
	v.location_id,
    ws.type_of_water_source,
    ws.number_of_people_served
FROM location loc
JOIN visits v
USING (location_id)
JOIN water_source ws
USING (source_id)
WHERE v.visit_count = 1;

-- Add the location_type column from location and time_in_queue from visits to our results set.
SELECT 
	loc.province_name, 
	loc.town_name, 
    ws.type_of_water_source,
    loc.location_type,
    ws.number_of_people_served,
    v.time_in_queue
FROM location loc
JOIN visits v
USING (location_id)
JOIN water_source ws
USING (source_id)
WHERE v.visit_count = 1;

-- add results from the well_pollution table.
SELECT 
	ws.type_of_water_source, 
	loc.town_name, 
    loc.province_name,
    loc.location_type,
    ws.number_of_people_served,
    v.time_in_queue,
    wp.results
FROM visits v
LEFT JOIN well_pollution wp 
USING (source_id)
JOIN location loc
USING (location_id)
JOIN water_source ws
USING (source_id)
WHERE v.visit_count = 1;

-- delete a view
DROP VIEW `combined_analysis_table`;

-- create a view with the previous query results called combined_analysis_table.
CREATE VIEW combined_analysis_table AS 
SELECT 
	ws.type_of_water_source AS source_type, 
	loc.town_name, 
    loc.province_name,
    loc.location_type,
    ws.number_of_people_served AS people_served,
    v.time_in_queue,
    wp.results
FROM visits v
LEFT JOIN well_pollution wp 
USING (source_id)
JOIN location loc
USING (location_id)
JOIN water_source ws
USING (source_id)
WHERE v.visit_count = 1;

-- We're building a pivot table to reak down our data into provinces or towns and source types.
WITH province_totals AS (
-- This CTE calculates the population of each province
	SELECT
	province_name,
	SUM(people_served) AS total_ppl_serv
	FROM
	combined_analysis_table
	GROUP BY
	province_name
	)
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
	FROM
	combined_analysis_table ct
	JOIN
	province_totals pt ON ct.province_name = pt.province_name
	GROUP BY
	ct.province_name
	ORDER BY
	ct.province_name;

-- Let's aggregate the data per town now.
WITH town_totals AS (
	-- This CTE calculates the population of each town
	-- Since there are two Harare towns, we have to group by province_name and town_name
	SELECT 
		province_name, 
		town_name, 
		SUM(people_served) AS total_ppl_serv
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
	JOIN 
    -- Since the town names are not unique, we have to join on a composite key
		town_totals tt 
	ON ct.province_name = tt.province_name AND ct.town_name = tt.town_name
	GROUP BY 
    -- We group by province first, then by town.
		ct.province_name,
		ct.town_name
	ORDER BY
		ct.town_name;

-- create a temporary table
CREATE TEMPORARY TABLE town_aggregated_water_access
WITH town_totals AS (
	-- This CTE calculates the population of each town
	-- Since there are two Harare towns, we have to group by province_name and town_name
	SELECT 
		province_name, 
		town_name, 
		SUM(people_served) AS total_ppl_serv
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
	JOIN 
    -- Since the town names are not unique, we have to join on a composite key
		town_totals tt 
	ON ct.province_name = tt.province_name AND ct.town_name = tt.town_name
	GROUP BY 
    -- We group by province first, then by town.
		ct.province_name,
		ct.town_name
	ORDER BY
		ct.town_name;

-- Do some calculations with the results
-- which town has the highest ratio of people who have taps, but have no running water?
SELECT
	province_name,
	town_name,
	ROUND(tap_in_home_broken / (tap_in_home_broken + tap_in_home) * 100,0) AS Pct_broken_taps
FROM
	town_aggregated_water_access
ORDER BY Pct_broken_taps DESC;

-- which town has the highest number of people who get their water from the river?
SELECT
	province_name,
	town_name,
	river AS Pct_broken_taps
FROM
	town_aggregated_water_access
ORDER BY river DESC;

-- calculate location with the largest population dependent on wells
SELECT
	province_name,
	town_name,
	well
FROM
	town_aggregated_water_access
ORDER BY well DESC;

-- delete the table if it already exists
DROP TABLE IF EXISTS `project_progress`;

-- create a table to track the progress of the project. 
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

-- add data to the Project_progress_query table
SELECT
	loc.address,
	loc.town_name,
	loc.province_name,
	ws.source_id,
	ws.type_of_water_source,
	wp.results
FROM
	water_source ws
LEFT JOIN
	well_pollution wp
USING (source_id)
INNER JOIN
	visits v
USING (source_id)
INNER JOIN
	location loc
USING (location_id);


/*
Filter data in the Project_progress_query table
1. Only records with visit_count = 1 are allowed.
2. Any of the following rows can be included:
	a. Where shared taps have queue times over 30 min.
	b. Only wells that are contaminated are allowed -- So we exclude wells that are Clean
	c. Include any river and tap_in_home_broken sources.
*/
SELECT
    loc.address,
    loc.town_name,
    loc.province_name,
    ws.source_id,
    ws.type_of_water_source,
    wp.results
FROM water_source ws
LEFT JOIN well_pollution wp USING (source_id)
INNER JOIN visits v USING (source_id)
INNER JOIN location loc USING (location_id)
WHERE v.visit_count = 1
AND (wp.results != 'Clean'
OR ws.type_of_water_source IN ('tap_in_home_broken','river')
OR (ws.type_of_water_source = 'shared_tap' AND v.time_in_queue >= 30));

-- The complete query to be inserted into the project progress table
SELECT 
	ws.source_id, 
	loc.address, 
	loc.town_name, 
	loc.province_name, 
	ws.type_of_water_source, 
    wp.results,
	CASE 
		WHEN wp.results = "Contaminated: Biological" 
			THEN "Install UV Filter"
		WHEN wp.results = "Contaminated: Chemical"
			THEN "Install RO Filter" 
		WHEN ws.type_of_water_source = "river"
			THEN "Drill wells"
		WHEN ws.type_of_water_source = "shared_tap" AND v.time_in_queue >= 30 
			THEN CONCAT("Install ", FLOOR(time_in_queue/30), " taps nearby")
		WHEN ws.type_of_water_source = "tap_in_home_broken" 
			THEN "Diagnose Local Infrastructure"
		ELSE NULL 
		END AS Improvement
FROM water_source ws
LEFT JOIN well_pollution wp 
USING (source_id)
INNER JOIN visits v
USING (source_id)
INNER JOIN location loc 
USING (location_id)
WHERE v.visit_count = 1 -- This must always be true
AND ( -- AND one of the following (OR) options must be true as well.
wp.results != 'Clean'
OR ws.type_of_water_source IN ('tap_in_home_broken','river')
OR (ws.type_of_water_source = 'shared_tap' AND v.time_in_queue >= 30));


SELECT *
FROM project_progress;

-- Query to insert the information above into the project progress table    
INSERT INTO project_progress (source_id, Address, Town, Province, Source_type, Improvement)
SELECT 
	ws.source_id, 
	loc.address, 
	loc.town_name, 
	loc.province_name, 
	ws.type_of_water_source, 
CASE 
	WHEN wp.results = "Contaminated: Biological" 
		THEN "Install UV Filter"
	WHEN wp.results = "Contaminated: Chemical"
		THEN "Install RO Filter" 
	WHEN ws.type_of_water_source = "river"
		THEN "Drill wells"
	WHEN ws.type_of_water_source = "shared_tap" AND v.time_in_queue >= 30 
		THEN CONCAT("Install ", FLOOR(time_in_queue/30), " taps nearby")
	WHEN ws.type_of_water_source = "tap_in_home_broken" 
		THEN "Diagnose Local Infrastructure"
	ELSE NULL 
	END AS Improvement
FROM water_source ws
LEFT JOIN well_pollution wp 
ON ws.source_id = wp.source_id
INNER JOIN visits v
ON ws.source_id = v.source_id
INNER JOIN location loc 
ON loc.location_id = v.location_id
WHERE v.visit_count = 1
AND (wp.results != 'Clean'
OR ws.type_of_water_source IN ('tap_in_home_broken','river')
OR (ws.type_of_water_source = 'shared_tap' AND v.time_in_queue >= 30));

SELECT *
FROM project_progress

