-- Select all scheduled classes to which a lecturer has been assigned

SELECT 
concat(lect.last_name, ', ', lect.first_name) as `Lecturer Full Name`,
cour.title as `Course Title`,
cour.number_of_credits as `Number of Credits` 
 FROM school_db.classes class
inner join school_db.lecturers lect on class.lecturer_id = lect.id
inner join school_db.courses cour on class.courses_id = cour.courseid;

-- Select the details of each enrollment by stating the Student Name, the course, the lecturer and the time of the class session.
SELECT 
concat(lect.last_name, ', ', lect.first_name) as `Lecturer Full Name`,
concat(stu.last_name, ', ', stu.first_name) as `Student Full Name`,
cour.title as `Course Title`,
class.time as  `Session Time`
FROM school_db.enrollments enrols
inner join school_db.classes class on class.id = enrols.class_id
inner join school_db.students stu on stu.id = enrols.student_id
inner join school_db.lecturers lect on class.lecturer_id = lect.id
inner join school_db.courses cour on class.courses_id = cour.courseid;