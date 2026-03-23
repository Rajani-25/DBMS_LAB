LAB 6 : GROUP BY & HAVING

PART A : Basic Aggregate Queries

Q1
SELECT COUNT(*) AS Total_Students
FROM Student;

Q2
SELECT COUNT(*) AS Total_Faculty
FROM Faculty;

Q3
SELECT COUNT(*) AS Total_Courses
FROM Course;

Q4
SELECT MAX(credits) AS Max_Credits
FROM Course;

Q5
SELECT MIN(credits) AS Min_Credits
FROM Course;


PART B : GROUP BY (Single Tables)

Q6
SELECT department_id,
COUNT(*) AS Student_Count
FROM Student
GROUP BY department_id;

Q7
SELECT department_id,
COUNT(*) AS Faculty_Count
FROM Faculty
GROUP BY department_id;

Q8
SELECT department_id,
COUNT(*) AS Course_Count
FROM Course
GROUP BY department_id;

Q9
SELECT semester,
COUNT(*) AS Enrollment_Count
FROM Enrollment
GROUP BY semester;

Q10
SELECT grade,
COUNT(*) AS Student_Count
FROM Enrollment
GROUP BY grade;


PART C : GROUP BY with HAVING

Q11
SELECT department_id,
COUNT(*)
FROM Student
GROUP BY department_id
HAVING COUNT(*) > 3;

Q12
SELECT semester,
COUNT(*)
FROM Enrollment
GROUP BY semester
HAVING COUNT(*) > 2;

Q13
SELECT grade,
COUNT(*)
FROM Enrollment
GROUP BY grade
HAVING COUNT(*) > 1;

Q14
SELECT department_id,
COUNT(*)
FROM Course
GROUP BY department_id
HAVING COUNT(*) > 1;


PART D : Aggregation with JOIN

Q15
SELECT course_id,
COUNT(student_id)
FROM Enrollment
GROUP BY course_id;

Q16
SELECT C.course_name,
COUNT(E.student_id)
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;

Q17
SELECT D.department_id,
COUNT(S.student_id)
FROM Department D
INNER JOIN Student S
ON D.department_id = S.department_id
GROUP BY D.department_id;

Q18
SELECT F.faculty_name,
COUNT(C.course_id)
FROM Faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id
GROUP BY F.faculty_name;


PART E : Analytical Queries

Q19
SELECT C.course_name,
MAX(E.grade)
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;

Q20
SELECT department_id,
COUNT(*)
FROM Course
GROUP BY department_id;

Q21
SELECT semester,
COUNT(student_id)
FROM Enrollment
GROUP BY semester;

Q22
SELECT course_id,
COUNT(student_id)
FROM Enrollment
GROUP BY course_id
HAVING COUNT(student_id) > 2;