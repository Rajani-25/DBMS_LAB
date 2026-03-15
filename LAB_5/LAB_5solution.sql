LAB 5 : JOIN QUERIES
PART A : Student– Enrollment Relationship

Q1
SELECT S.student_id, 
S.student_name,
E.course_id FROM Student S 
INNER JOIN Enrollment E 
ON S.student_id = E.student_id;

Q2
SELECT S.student_name, 
E.semester FROM Student S 
INNER JOIN Enrollment E 
ON S.student_id = E.student_id;

Q3
SELECT S.student_name,
E.grade FROM Student S 
INNER JOIN Enrollment E 
ON S.student_id = E.student_id;


PART B : Course–Faculty Relationship


Q4
SELECT C.course_name,
C.credits,
F.faculty_name FROM Course C 
INNER JOIN Faculty F 
ON C.faculty_id = F.faculty_id;

Q5
SELECT C.course_name 
FROM Course C 
INNER JOIN Faculty F 
ON C.faculty_id = F.faculty_id 
WHERE F.faculty_id = 'F01';

Q6
SELECT F.faculty_name, 
F.designation,
C.course_name FROM Faculty F 
INNER JOIN Course C 
ON F.faculty_id = C.faculty_id;

PART C : Student–Course–Enrollment

Q7
SELECT S.student_name,
C.course_name FROM Student S 
INNER JOIN Enrollment E 
ON S.student_id = E.student_id 
INNER JOIN Course C 
ON E.course_id = C.course_id;

Q8
SELECT S.student_name,
C.course_name,
E.semester FROM Student S 
INNER JOIN Enrollment E 
ON S.student_id = E.student_id 
INNER JOIN Course C 
ON E.course_id = C.course_id;

Q9
SELECT S.student_name,
C.course_name, 
E.grade FROM Student S 
INNER JOIN Enrollment E 
ON S.student_id = E.student_id 
INNER JOIN Course C 
ON E.course_id = C.course_id 
WHERE E.semester = 4;

Q10
SELECT C.course_name FROM Course C 
INNER JOIN Enrollment E 
ON C.course_id = E.course_id 
INNER JOIN Student S 
ON S.student_id = E.student_id 
WHERE S.student_id = 'S01';


PART D : Department Based Queries

Q11
SELECT S.student_name, 
S.department_id, 
C.course_name FROM Student S 
INNER JOIN Course C 
ON S.department_id = C.department_id;

Q12
SELECT D.department_id, 
C.course_name FROM Department D 
INNER JOIN Course C 
ON D.department_id = C.department_id;

Q13
SELECT F.faculty_name, 
D.department_name FROM Faculty F 
INNER JOIN Department D 
ON F.department_id = D.department_id;


PART E : Filtering & Sorting

Q14
SELECT S.student_name, 
C.course_name FROM Student S 
INNER JOIN Enrollment E 
ON S.student_id = E.student_id 
INNER JOIN Course C 
ON E.course_id = C.course_id WHERE S.department_id = 'DO1';

Q15
SELECT S.student_name, 
C.course_name FROM Student S 
INNER JOIN Enrollment E 
ON S.student_id = E.student_id 
INNER JOIN Course C 
ON E.course_id = C.course_id 
ORDER BY S.student_name ASC;

Q16
SELECT F.faculty_name, 
C.course_name FROM Faculty F 
INNER JOIN Course C 
ON F.faculty_id = C.faculty_id 
ORDER BY C.credits DESC;


PART F : Analytical Queries


Q17
SELECT C.course_name, 
COUNT(E.student_id) AS Student_Count 
FROM Course C 
INNER JOIN Enrollment E 
ON C.course_id = E.course_id 
GROUP BY C.course_name;

Q18
SELECT F.faculty_name, 
COUNT(C.course_id) AS Course_Count 
FROM Faculty F 
INNER JOIN Course C 
ON F.faculty_id = C.faculty_id 
GROUP BY F.faculty_name;

Q19
SELECT D.department_name, 
COUNT(S.student_id) AS Student_Count 
FROM Department D 
INNER JOIN Student S 
ON D.department_id = S.department_id 
GROUP BY D.department_name;

Q20
SELECT C.course_name, 
MAX(E.grade) AS Max_Grade 
FROM Course C 
INNER JOIN Enrollment E 
ON C.course_id = E.course_id 
GROUP BY C.course_name;

COMMIT;