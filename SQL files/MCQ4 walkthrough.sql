USE md_water_services;

SELECT * FROM visits;
SELECT * FROM location;

-- QUE 1
SELECT location.province_name, location.town_name, visits.visit_count, visits.location_id
FROM location
JOIN visits
ON location.location_id = visits.location_id;

-- QUE 1 (ALT)
SELECT location.province_name, location.town_name, visits.visit_count, visits.location_id
FROM location
JOIN visits
USING (location_id);

-- QUE 2
SELECT location.province_name, 
		location.town_name, 
        visits.visit_count, 
        visits.location_id, 
        water_source.type_of_water_source, 
        water_source.number_of_people_served
FROM location
JOIN visits
ON location.location_id = visits.location_id
JOIN water_source
on water_source.source_id = visits.source_id;

-- QUE 2 ALT
SELECT location.province_name, 
		location.town_name, 
        visits.visit_count, 
        visits.location_id, 
        water_source.type_of_water_source, 
        water_source.number_of_people_served
FROM location
JOIN visits
USING (location_id)
JOIN water_source
USING (source_id);


-- QUE 3
SELECT location.province_name, 
		location.town_name, 
        visits.visit_count, 
        visits.location_id, 
        water_source.type_of_water_source, 
        water_source.number_of_people_served
FROM location
JOIN visits
ON location.location_id = visits.location_id
JOIN water_source
ON water_source.source_id = visits.source_id
WHERE visits.location_id = 'AkHa00103';

-- QUE 3 ALT
SELECT location.province_name, 
		location.town_name, 
        visits.visit_count, 
        visits.location_id, 
        water_source.type_of_water_source, 
        water_source.number_of_people_served
FROM location
JOIN visits
USING (location_id)
JOIN water_source
USING (source_id)
WHERE visits.location_id = 'AkHa00103';


-- QUE 4
SELECT location.province_name, 
		location.town_name, 
        visits.visit_count, 
        visits.location_id, 
        water_source.type_of_water_source, 
        water_source.number_of_people_served
FROM location
JOIN visits
ON location.location_id = visits.location_id
JOIN water_source
ON water_source.source_id = visits.source_id
WHERE visits.visit_count = 1;

-- QUE 4 ALT
SELECT location.province_name, 
		location.town_name, 
        visits.visit_count, 
        visits.location_id, 
        water_source.type_of_water_source, 
        water_source.number_of_people_served
FROM location
JOIN visits
USING (location_id)
JOIN water_source
USING (source_id)
WHERE visits.visit_count = 1;


-- QUE 5
SELECT location.province_name, 
		location.town_name, 
        visits.visit_count, 
        visits.location_id, 
        water_source.type_of_water_source, 
        water_source.number_of_people_served
FROM location
JOIN visits
USING (location_id)
JOIN water_source
USING (source_id)
WHERE visits.visit_count = 1;


-- QUE 6
SELECT
	water_source.type_of_water_source,
	location.town_name,
	location.province_name,
	location.location_type,
	water_source.number_of_people_served,
	visits.time_in_queue,
	well_pollution.results
FROM
	visits
LEFT JOIN
	well_pollution
USING (source_id)
-- ON well_pollution.source_id = visits.source_id
INNER JOIN
	location
USING (location_id)
-- ON location.location_id = visits.location_id
INNER JOIN
	water_source
-- ON water_source.source_id = visits.source_id
USING (source_id)
WHERE
	visits.visit_count = 1;