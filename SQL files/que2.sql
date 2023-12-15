USE md_water_services;

/*I want to write a query to retrieve all the information where the subjective_quality_score is 10, type_of_water_source is "tap_in_home"  and where the visit_count = 2
The record_id, source_id and visit_count columns are present in the visits table.
The record_id, subjective_quality_score and visit_count are present in the water_quality table.
The source_id and type_of_water_source are present in the water_source table. 

Take note:
The water_quality table has NO column named source_id but it has a column named record_id. 
The record_id column is also present in the visits table.
The water_source table has NO column named record_id but it has a column named source_id. 
The source_id column is also present in the visits table.

How do I solve this in one sql query, without joining  the 3 tables?*/

SELECT visits.record_id, visits.source_id, visits.visit_count, water_source.type_of_water_source
FROM visits, water_source, water_quality
WHERE visits.source_id IN (
    SELECT source_id
    FROM water_source
    WHERE type_of_water_source LIKE "tap_in_home"
)
/*AND visits.record_id IN (
    SELECT record_id
    FROM water_quality
    /*WHERE subjective_quality_score = 10*/
    AND visit_count = 2
);
/*AND visits.source_id IN (
    SELECT source_id
    FROM water_source
    WHERE type_of_water_source like "tap_in_home%"
);*/


/*
SELECT *
FROM water_quality AS w
JOIN visits AS v
ON v.record_id = w.record_id
JOIN water_source AS ws
ON ws.source_id = v.source_id
WHERE ws.type_of_water_source like "tap%"
AND v.visit_count = 2 
AND subjective_quality_score = 10
;*/
