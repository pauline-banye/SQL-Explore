-- USE md_water_services;

DROP TABLE IF EXISTS testing;
CREATE TABLE testing (
	test_id SERIAL PRIMARY KEY,
	Address VARCHAR(50),
	Town VARCHAR(30),
	Province VARCHAR(30),
	Family VARCHAR(10)
);

/*
we want to populate the testing tables with data from the location table and other values
To avoid increasing the total number of rows and inserting NULL values in the "Address," "Town," and "Province" columns, 
you can use a temporary table to store the values for the "Family" column
 and then combine it with the results from the SELECT statement.
 */

-- Create a temporary table to hold "Family" values
CREATE TEMPORARY TABLE TempNames (Family VARCHAR(10));

-- DROP TEMPORARY TABLE TempNames

-- Insert values into the temporary table
INSERT INTO TempNames (Family)
VALUES
    ('John Smit'),
    ('Mary John'),
    ('Jame Davi'),
    ('Lind Wilo'),
    ('Robe Brow'),
    ('Pati Leek'),
    ('Mich Mile'),
    ('Eliz Tayl'),
    ('Will Clar'),
    ('Susa Harr');

-- Insert data into the "testing" table, combining values from the SELECT statement and the temporary table
INSERT INTO testing (Address, Town, Province, Family)
SELECT
    l.address,
    l.town_name,
    l.province_name,
    TempNames.Family
FROM location l
JOIN TempNames
ON TempNames.Family IS NOT NULL
LIMIT 10;

SELECT * FROM testing;

-- UPDATE testing
-- SET Family = RIGHT(Family, 4);

-- A
-- UPDATE testing SET Family = RIGHT(Family, -4);
-- SELECT * FROM testing;
-- deleted everything in the family row


-- C
UPDATE testing SET Family = substr(Family, -4);
SELECT * FROM testing;






-- SELECT o.film, m.title
-- FROM Oscars o
-- JOIN movies m
-- ON O.film = m.title
-- ORDER BY year DESC
-- LIMIT 5;

-- SELECT award, COUNT(*) AS nomination_count
-- FROM Oscars
-- GROUP BY award
-- ORDER BY nomination_count DESC
-- LIMIT 1;


-- SELECT award, name, film
-- FROM Oscars o
-- WHERE film = 'The Noose'
-- LIMIT 5;

-- SELECT award, COUNT(*) AS nomination_count
-- FROM oscars
-- WHERE 
-- award LIKE '%Acto%'
-- OR 
-- award LIKE '%Actr%'
-- GROUP BY award
-- ORDER BY nomination_count DESC
-- LIMIT 1;