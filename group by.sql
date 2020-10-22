use school_db;

SELECT 
co.title,
co.number_of_credits,
co.course_code
 FROM classes c
inner join courses co on co.courseid = c.courses_id
group by 
co.title,
co.number_of_credits,
co.course_code;