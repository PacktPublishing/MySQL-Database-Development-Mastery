use school_db;

update students set 
enrollment_date = '2019-07-01', 
last_name = 'McDermott', 
first_name = 'Wilma'
where id = 1;

-- Update all enrollment dates that are empty (null)
-- Update specific records using a condition
update Students set enrollmentdate = '2019-05-01'
where enrollmentdate is null;

-- Update all enrollment dates
-- Update multiple records (be careful)
update Students set enrollmentdate = '2019-06-10';


-- Update students  with ids 7 & 11. Change first and last names
-- Update multiple columns
update Students set firstname = 'Eleanor', lastname = 'Smith'
where id = 7;

update Students set firstname = 'Rhoddy', lastname = 'Shawn'
where id = 11;


/*
	update Students set firstname = 'Rhoddy', lastname = 'Shawn' where id in (7, 11);
    -- THe IN keyword will search for records that meet the condition of the values specified in the given list
*/

