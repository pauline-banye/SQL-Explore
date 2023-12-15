-- SELECT RAND(6);
-- SELECT 
--     CURRENT_DATE();
    
    
-- Which syntax functions are correct?


-- SELECT NULLIF ‘hello’,0 ;
--     SELECT ROUND(5.735,2);
--     SELECT CURRENT_DATE();
USE md_water_services;

-- SELECT     
--     Region,
--     Country_name,
--     Time_period,
--     Pct_managed_drinking_water_services,
--     Pct_managed_sanitation_services,
--     Est_population_in_millions,
--     Est_gdp_in_billions
-- FROM
--     Access_to_Basic_Services
-- WHERE 
--     Time_period = 2020;
    
    
-- AND 
--     Pct_managed_sanitation_services <= ;


-- SELECT     
--     Region,
--     Country_name,
--     Est_population_in_millions,
--     0.5 * Est_population_in_millions AS Fifty_Percent_pop
-- FROM
--     Access_to_Basic_Services;

-- WHERE 
--     Pct_managed_sanitation_services <= (50/100 * Est_population_in_millions)
--     
--     ;

-- Qstn 1
-- SELECT CONCAT(day(time_of_record), " ", monthname(time_of_record), " ", year(time_of_record)) FROM visits;

-- SELECT name, wat_bas_r - LAG(wat_bas_r) OVER (PARTITION BY (a) ORDER BY (b)) 
-- FROM 
-- global_water_access
-- ORDER BY name;

-- SELECT assigned_employee_id, COUNT(visit_count)
-- FROM visits
-- GROUP BY assigned_employee_id
-- ORDER BY COUNT(visit_count)
-- LIMIT 2;

-- SELECT *
-- FROM 
--     employee
-- WHERE 
-- assigned_employee_id IN (20,22);


SELECT
type_of_water_source,
SUM(number_of_people_served) AS population_served
FROM
water_source
WHERE type_of_water_source IN ("tap")
GROUP BY
type_of_water_source
ORDER BY
population_served DESC;