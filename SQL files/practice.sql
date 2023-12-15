SET SQL_SAFE_UPDATES = 0;
#USE united_nations;

#SHOW TABLES;

-- SELECT *
-- FROM geographic_location
-- LIMIT 10;

#Create a table named Basic_services with the columns Country_name, 
#Time_period, Pct_managed_drinking_water_services, and Pct_managed_sanitation_services, 
#with Country_name and Time_period being the composite keys and Country_name being the foreign key.

-- CREATE TABLE Basic_services (
-- 	Country_name VARCHAR (37),
--     Time_period INTEGER, 
--     Pct_managed_drinking_water_services NUMERIC (5,2),
--     Pct_managed_sanitation_services  NUMERIC (5,2),
--     PRIMARY KEY (Country_name, Time_period),
--     FOREIGN KEY (Country_name) REFERENCES geographic_location(Country_name)
-- )

INSERT INTO Basic_Services (
    Country_name, 
    Time_period, 
    Pct_managed_drinking_water_services, 
    Pct_managed_sanitation_services
)
SELECT 
	Country_name,
    Time_period,
    Pct_managed_drinking_water_services,
    Pct_managed_sanitation_services
FROM united_nations.Access_to_Basic_Services;
    
SELECT *
FROM basic_services
LIMIT 10;

CREATE TABLE Economic_indicators (
    Country_name VARCHAR(37),
    Time_period INTEGER,
    Est_gdp_in_billions NUMERIC(8,2),
    Est_population_in_millions NUMERIC(11,6),
    Pct_unemployment NUMERIC(5,2),
    PRIMARY KEY (Country_name, Time_period),
    FOREIGN KEY (Country_name) REFERENCES Geographic_Location (Country_name)
);


INSERT INTO Economic_indicators (
    Country_name, 
    Time_period,
    Est_gdp_in_billions, 
    Est_population_in_millions, 
    Pct_unemployment
)
SELECT Country_name,
    Time_period,
    Est_gdp_in_billions, 
    Est_population_in_millions, 
    Pct_unemployment
FROM Access_to_Basic_Services;

SELECT *
FROM economic_indicators
LIMIT 10;

