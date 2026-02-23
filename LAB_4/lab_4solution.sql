PART-A
Q1: Display all columns from Student table with aliases
SELECT 
    student_id AS Roll_No,
    student_name AS Student_Name,
    dob AS Date_of_Birth,
    gender AS Gender,
    contact_number AS Contact_No,
    department_id AS Dept_ID
FROM Student;

Q2:2. Display only StudentID, Name, and DepartmentID from the Student table, renaming 
them as Roll_No, Student_Name, and Dept_ID.
SELECT 
    student_id AS Roll_No,
    student_name AS Student_Name,
    department_id AS Dept_ID
FROM Student;

3. Display FacultyID, Name, Designation, and Email from the Faculty table using 
readable column names. 
SELECT 
    faculty_id AS Faculty_ID,
    faculty_name AS Faculty_Name,
    designation AS Designation,
    email AS Email_Address
FROM Faculty;

4. Display all columns from the Course table with renamed column headers.
SELECT 
    course_id AS Course_ID,
    course_name AS Course_Name,
    credits AS Credits,
    department_id AS Dept_ID,
    faculty_id AS Faculty_ID
FROM Course;

5. Display all columns from the Enrollment table with meaningful aliases.
SELECT 
    student_id AS Roll_No,
    course_id AS Course_ID,
    semester AS Semester_No,
    grade AS Final_Grade
FROM Enrollment;

PART-B Conditional Data Display (WHERE Clause)

6. Display all students whose DepartmentID is 'DO1'.
SELECT * FROM Student WHERE department_id = 'DO1';

7. Display all students whose Gender is 'Female'. 
SELECT *FROM Student
WHERE gender = 'Female';

8. Display faculty members whose Designation is 'Assistant Professor'.
SELECT *FROM Faculty
WHERE designation LIKE 'Assistant Professor';

9. Display faculty members whose DepartmentID is 'DO2'.
SELECT *FROM Faculty
WHERE department_id = 'DO2';

10. Display courses whose Credits are greater than or equal to 4.
SELECT *FROM Course
WHERE credits >= 4;

11. Display students born after 2003-01-01 using the DOB column.
SELECT *
FROM Student
WHERE dob > TO_DATE('2003-01-01','YYYY-MM-DD');

12. Display enrollment records for students enrolled in Semester 4.
SELECT *FROM Enrollment
WHERE semester = 4;

PART-C Sorting and Limiting Results

13. Display student records sorted by Name in ascending order. 
SELECT *
FROM Student
ORDER BY student_name ASC;

14. Display student records sorted by DOB in descending order.
SELECT *FROM Student
ORDER BY dob DESC; 

15. Display faculty records sorted by Designation in ascending order.
SELECT *FROM Faculty
ORDER BY designation ASC;

16. Display courses sorted by Credits in descending order. 
SELECT *FROM Course
ORDER BY credits DESC;

17. Display only the first 3 student records. 
SELECT *FROM Student
WHERE ROWNUM <= 3;

18. Display only the first 5 course records.
SELECT *
FROM Course
WHERE ROWNUM <= 5;

PART-DDerived / Computed Output (No Table Modification) 

19. Display student Name along with their calculated Age using DOB.
SELECT 
    student_name,
    FLOOR(MONTHS_BETWEEN(SYSDATE, dob) / 12) AS Age
FROM Student;

20. Display course CourseName along with Credits + 1 as Updated_Credits.
SELECT 
    course_name,
    credits + 1 AS Updated_Credits
FROM Course;

21. Display enrollment details with column Grade shown as Final_Grade. 
SELECT 
    student_id,
    course_id,
    semester,
    grade AS Final_Grade
FROM Enrollment;

22. Display student Name along with year of birth extracted from DOB. 
SELECT 
    student_name,
    EXTRACT(YEAR FROM dob) AS Birth_Year
FROM Student;

23. Display faculty Name along with email domain extracted from Email.
SELECT 
    faculty_name,
    SUBSTR(email, INSTR(email, '@') + 1) AS Email_Domain
FROM Faculty;