SET SQL_SAFE_UPDATES = 0;

-- Address of Bello Azibo
select employee_name, address
from employee
where employee_name like "Bello_%";

/* No 2
What is the name and phone number of our Microbiologist?
*/
select employee_name, phone_number, position
from employee
where position like "Micro%";

-- No 3
-- What is the source_id of the water source shared by the most number of people? Hint: Use a comparison operator.
select * from water_source
group by number_of_people_served
order by desc
-- Ans: AkRu05603224


-- No 4
-- What is the population of Maji Ndogo? 
USE `md_water_services`;
SELECT name, (pop_n / 1000)
FROM global_water_access
WHERE name like "Maji_%"
-- 27628.1
-- 27.628


No 5
-- Which SQL query returns records of employees who are Civil Engineers residing in Dahabu or living on an avenue?
SELECT *
FROM employee
WHERE position = 'Civil Engineer' AND (province_name = 'Dahabu' OR address LIKE '%Avenue%'); 

/*No 6
Create a query to identify potentially suspicious field workers based on an anonymous tip. This is the description we are given:

    The employee’s phone number contained the digits 86 or 11. 
    The employee’s last name started with either an A or an M. 
    The employee was a Field Surveyor.

Which option is correct?*/



/*No. 7*/
SELECT *
FROM well_pollution
WHERE description LIKE 'Clean_%' 
OR results = 'Clean' AND biological < 0.01;
/*4916 records are returned. This query describes the pollution samples that had an insignificant amount of biological contamination. */


/*No 8*
quality score = 10
visited more than once*/
SELECT * 
FROM water_quality
WHERE visit_count >= 2
AND subjective_quality_score = 10;

/*No 9
correct phone num for Bello Azibo.
correct num is +99643864786*/
UPDATE employee_copy
SET phone_number = '+99643864786'
WHERE employee_name = 'Bello Azibo';

/*No 10*/
SELECT * 
FROM well_pollution
WHERE description
IN ('Parasite: Cryptosporidium', 'biologically contaminated')
OR (results = 'Clean' AND biological > 0.01);
/*570 rows*/


select * from data_dictionary