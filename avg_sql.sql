/*
	Bring back the average grades per course
*/
 use school_db;
 
select 
co.title as `Course Title`,
avg(en.grade) as `Average grade`
 from enrollments en
inner join classes cl on cl.id = en.class_id
inner join courses co on co.courseid = cl.courses_id
group by co.title