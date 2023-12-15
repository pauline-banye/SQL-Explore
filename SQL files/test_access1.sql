CREATE DATABASE united_nations;
USE united_nations;

CREATE TABLE united_nations.Access_to_basic_services(
	Region VARCHAR(32),
    Sub_region VARCHAR(25),
    Country_name VARCHAR(37) NOT NULL,
    Time_period INTEGER NOT NULL,
    Pct_managed_drinking_water_services NUMERIC(5,2),
    Pct_managed_sanitation_services NUMERIC(5,2),
    Est_population_in_millions NUMERIC(11,6),
    Est_gdp_in_billions NUMERIC(8,2),
    Land_area NUMERIC(10,2),
    Pct_unemployment NUMERIC(5,2)
);

/*INSERT INTO access_to_basic_services(
	Region,
    Sub_region,
    Country_name,
    Time_period,
    Pct_managed_drinking_water_services,
    Pct_managed_sanitation_services,
    Est_population_in_millions,
    Est_gdp_in_billions,
    Land_area,
    Pct_unemployment
)
VALUES 
    ('Sub-Saharan Africa','Southern Africa','South Africa',2020,92.0,78.67,58.801927,337.62,1213090.0,24.34),
    ('Central and Southern Asia','Central Asia','Kazakhstan',2020,95.0,98.0,18.755666,171.08,2699700,4.89),
    ('Sub-Saharan Africa','Southern Africa','Namibia',2020,83.67,35.0,2.489098,10.58,823290.0,NULL),
    ('Sub-Saharan Africa','Southern Africa','Lesotho',2020,76.33,49.69,2.2541,2.23,30360.0,NULL),
    ('Sub-Saharan Africa','Southern Africa','Botswana',2020,89.67,74.33,2.546402,14.93,566730.0,21.02)
;*/
    
/*SET SQL_SAFE_UPDATES = 0;*/
/*DELETE FROM united_nations.access_to_basic_services*/
/*WHERE Sub_region = 'Central Asia';*/

/*SET SQL_SAFE_UPDATES = 0;*/
/*USE united_nations;*/
/*TRUNCATE TABLE united_nations.access_to_basic_services;*/
/*UPDATE united_nations.access_to_basic_services
SET Pct_unemployment=4.53
WHERE Country_name='China'
AND Time_period=2016;
SELECT * FROM united_nations.access_to_basic_services;*/