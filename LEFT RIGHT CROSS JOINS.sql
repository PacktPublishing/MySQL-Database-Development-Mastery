use school_db;
-- Will select all values in the 'left table', whether or not they meet the 
-- condition. Be sure to structure the query correctly to bring back the records
-- that you are interested in.
select * from classes c
left join lecturers l on c.lecturer_id = l.id
;

-- Will select all values in the 'right table', whether or not they meet the 
-- condition. Be sure to structure the query correctly to bring back the records
-- that you are interested in.
select * from classes c
right join lecturers l on c.lecturer_id = l.id;

-- Will select all records on either side regardless of there being a match
select * from classes c
cross join lecturers l 
