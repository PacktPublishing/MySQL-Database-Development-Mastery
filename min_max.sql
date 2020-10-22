/*
	Bring back the highest and lowest grades for each class
*/
use school_db;
select class_id , min(grade), max(grade) from enrollments
group by class_id