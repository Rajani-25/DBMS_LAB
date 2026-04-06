PART-A

SELECT student_name 
FROM Student 
WHERE department_id=(SELECT department_id FROM Student WHERE student_id='S01');

SELECT student_name 
FROM Student 
WHERE gender=(SELECT gender FROM Student WHERE student_id='S02');

SELECT student_name 
FROM Student 
WHERE department_id=(SELECT department_id FROM Student WHERE student_id='S03');

PART-B

SELECT student_name 
FROM Student 
WHERE department_id 
IN (SELECT department_id FROM Student WHERE gender='Female');

SELECT student_name 
FROM Student 
WHERE student_id IN (SELECT student_id FROM Enrollment);

SELECT student_name 
FROM Student 
WHERE student_id 
IN (SELECT student_id FROM Enrollment);

PART-C

SELECT course_name 
FROM Course 
WHERE credits>(SELECT AVG(credits) FROM Course);

SELECT student_id,student_name 
FROM Student 
WHERE TO_NUMBER(SUBSTR(student_id,2))>(SELECT AVG(TO_NUMBER(SUBSTR(student_id,2))) 
FROM Student);

SELECT department_id 
FROM Student 
GROUP BY department_id 
HAVING COUNT(*)>(SELECT AVG(cnt) FROM (SELECT COUNT(*) cnt 
FROM Student GROUP BY department_id));

PART-D

SELECT student_name 
FROM Student 
WHERE student_id IN (SELECT student_id FROM Enrollment);

SELECT student_name 
FROM Student 
WHERE department_id IN (SELECT department_id FROM Department);

SELECT course_name 
FROM Course 
WHERE course_id IN (SELECT course_id FROM Enrollment);

PART-E

SELECT course_name 
FROM Course
WHERE credits=(SELECT MAX(credits) FROM Course);

SELECT student_name 
FROM Student 
WHERE student_id 
IN (SELECT student_id FROM Enrollment 
GROUP BY student_id HAVING COUNT(course_id)>1);

SELECT department_id 
FROM Student 
GROUP BY department_id 
HAVING COUNT(*)=(SELECT MAX(cnt) 
FROM (SELECT COUNT(*) cnt 
FROM Student 
GROUP BY department_id));

PART-F

SELECT student_name FROM Student 
WHERE student_id 
IN (SELECT student_id FROM Enrollment 
WHERE course_id IN
(SELECT course_id FROM Enrollment 
WHERE student_id='S01'));

SELECT student_name 
FROM Student 
WHERE student_id 
NOT IN (SELECT student_id FROM Enrollment);

SELECT course_name 
FROM Course 
WHERE course_id 
NOT IN (SELECT course_id FROM Enrollment);