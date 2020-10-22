/*
	Bring back the total number of credits that each student is doing
*/

use school_db;

select concat(s.last_name, ', ', s.first_name) `Student Name`,
sum(co.number_of_credits)
from enrollments e
inner join students s on e.student_id = s.id
inner join classes c on e.class_id = c.id
inner join courses co on c.courses_id = co.courseid
group by s.last_name, s.first_name