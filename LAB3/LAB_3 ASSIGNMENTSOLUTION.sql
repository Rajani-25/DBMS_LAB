-- ===============================
-- FORMAT SETTINGS (Optional)
-- ===============================
SET LINESIZE 200;
SET PAGESIZE 100;
SET WRAP OFF;

-- ===============================
-- 1. CREATE DEPARTMENT TABLE
-- ===============================
CREATE TABLE Department (
    department_id VARCHAR2(10) PRIMARY KEY,
    department_name VARCHAR2(60) NOT NULL,
    block VARCHAR2(20)
);

-- INSERT DEPARTMENTS
INSERT INTO Department VALUES ('DO1','CIVIL ENGINEERING','BLOCK A');
INSERT INTO Department VALUES ('DO2','CIVIL ENGINEERING WITH COMPUTER APPL','BLOCK A');
INSERT INTO Department VALUES ('DO3','MECHANICAL ENGINEERING','BLOCK B');
INSERT INTO Department VALUES ('DO4','ELECTRICAL ENGINEERING','BLOCK B');
INSERT INTO Department VALUES ('DO5','COMPUTER SCIENCE & ENGINEERING','BLOCK B');
INSERT INTO Department VALUES ('DO6','COMPUTER SCIENCE & ENGINEERING (AIML)','BLOCK B');
INSERT INTO Department VALUES ('DO7','3D ANIMATION AND GRAPHICS','BLOCK C');

-- ===============================
-- 2. CREATE FACULTY TABLE
-- ===============================
CREATE TABLE Faculty (
    faculty_id VARCHAR2(10) PRIMARY KEY,
    faculty_name VARCHAR2(60),
    designation VARCHAR2(60),
    email VARCHAR2(60),
    department_id VARCHAR2(10),
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- INSERT FACULTY
INSERT INTO Faculty VALUES ('F01','Prof. Kunal Kumar','Assistant Professor(HOD)','kunal1989kumar@gmail.com','D01');
INSERT INTO Faculty VALUES ('F02','Prof. Akhilesh Kumar','Assistant Professor','akhileshkumar3804@gmail.com','D01');
INSERT INTO Faculty VALUES ('F03','Prof. Akhilesh Kumar','Assistant Professor(HOD)','akhileshkumar3804@gmail.com','D02');
INSERT INTO Faculty VALUES ('F04','Prof. Nishikant Kumar','Assistant Professor','nishikantbpmce32@gmail.com','D02');
INSERT INTO Faculty VALUES ('F05','Prof. Arbind Kumar Amar','Associate Professor, Principal-in-charge','ak_amar73@yahoo.com','D03');
INSERT INTO Faculty VALUES ('F06','Dr. Ajay Giri','Assistant Professor(HOD)','ajay_giri05@rediffmail.com','D03');
INSERT INTO Faculty VALUES ('F07','Prof. Uttam Kumar','Assistant Professor','uttamiitpl@gmail.com','D03');
INSERT INTO Faculty VALUES ('F08','Prof. Manisha Kumari Singh','Assistant Professor','manisha.ks24@gmail.com','D06');
INSERT INTO Faculty VALUES ('F09','Prof. Md. Izhar','Assistant Professor','mdizhar1996@gmail.com','D06');
INSERT INTO Faculty VALUES ('F10','Prof. Amit Kumar','Assistant Professor','amitkumar.cse@gmail.com','D06');
INSERT INTO Faculty VALUES ('F11','Sujeet Kumar','Assistant Professor','ksujeet.cs@gmail.com','D05');
INSERT INTO Faculty VALUES ('F12','Prof. Praveen Kumar','Assistant Professor','praveenkumaryadav782@gmail.com','D05');

-- ===============================
-- 3. CREATE COURSE TABLE
-- ===============================
CREATE TABLE Course (
    course_id VARCHAR2(10) PRIMARY KEY,
    course_name VARCHAR2(60),
    credits NUMBER(2),
    department_id VARCHAR2(10),
    faculty_id VARCHAR2(10),
    FOREIGN KEY (department_id) REFERENCES Department(department_id),
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);

-- INSERT COURSES
INSERT INTO Course VALUES ('C01','Structural Analysis',4,'DO1','F01');
INSERT INTO Course VALUES ('C02','Advanced Civil Engineering',4,'DO2','F03');
INSERT INTO Course VALUES ('C03','Thermodynamics',3,'DO3','F07');
INSERT INTO Course VALUES ('C04','Electrical Machines',3,'DO4','F05');
INSERT INTO Course VALUES ('C05','Database Management Systems',4,'DO5','F11');
INSERT INTO Course VALUES ('C06','Artificial Intelligence',4,'DO6','F08');
INSERT INTO Course VALUES ('C07','Machine Learning',4,'DO6','F09');
INSERT INTO Course VALUES ('C08','Computer Graphics',3,'DO7','F12');
INSERT INTO Course VALUES ('C09','Operating Systems',4,'DO5','F10');
INSERT INTO Course VALUES ('C10','Fluid Mechanics',3,'DO3','F06');

-- ===============================
-- 4. CREATE STUDENT TABLE
-- ===============================
CREATE TABLE Student (
    student_id VARCHAR2(10) PRIMARY KEY,
    student_name VARCHAR2(60),
    dob DATE,
    gender VARCHAR2(10),
    contact_number VARCHAR2(15),
    department_id VARCHAR2(10),
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- INSERT STUDENTS (15)
INSERT INTO Student VALUES ('S01','Rahul Kumar',TO_DATE('2003-05-14','YYYY-MM-DD'),'Male','9123456789','DO1');
INSERT INTO Student VALUES ('S02','Anjali Singh',TO_DATE('2004-02-18','YYYY-MM-DD'),'Female','9234567890','DO2');
INSERT INTO Student VALUES ('S03','Vikash Yadav',TO_DATE('2003-11-21','YYYY-MM-DD'),'Male','9345678901','DO3');
INSERT INTO Student VALUES ('S04','Sneha Kumari',TO_DATE('2004-01-09','YYYY-MM-DD'),'Female','9456789012','DO4');
INSERT INTO Student VALUES ('S05','Rohit Raj',TO_DATE('2003-08-25','YYYY-MM-DD'),'Male','9567890123','DO5');
INSERT INTO Student VALUES ('S06','Pooja Sharma',TO_DATE('2004-06-17','YYYY-MM-DD'),'Female','9678901234','DO6');
INSERT INTO Student VALUES ('S07','Aditya Kumar',TO_DATE('2003-12-03','YYYY-MM-DD'),'Male','9789012345','DO7');
INSERT INTO Student VALUES ('S08','Kavita Devi',TO_DATE('2004-03-19','YYYY-MM-DD'),'Female','9890123456','DO1');
INSERT INTO Student VALUES ('S09','Manish Raj',TO_DATE('2003-09-27','YYYY-MM-DD'),'Male','9012345678','DO2');
INSERT INTO Student VALUES ('S10','Riya Sharma',TO_DATE('2004-07-30','YYYY-MM-DD'),'Female','9123098765','DO3');
INSERT INTO Student VALUES ('S11','Aman Verma',TO_DATE('2003-10-11','YYYY-MM-DD'),'Male','9234012345','DO4');
INSERT INTO Student VALUES ('S12','Neha Gupta',TO_DATE('2004-01-22','YYYY-MM-DD'),'Female','9345012345','DO5');
INSERT INTO Student VALUES ('S13','Saurabh Mishra',TO_DATE('2003-04-15','YYYY-MM-DD'),'Male','9456012345','DO6');
INSERT INTO Student VALUES ('S14','Priyanka Kumari',TO_DATE('2004-09-05','YYYY-MM-DD'),'Female','9567012345','DO7');
INSERT INTO Student VALUES ('S15','Deepak Kumar',TO_DATE('2003-12-19','YYYY-MM-DD'),'Male','9678012345','DO1');

-- ===============================
-- 5. CREATE ENROLLMENT TABLE
-- ===============================
CREATE TABLE Enrollment (
    student_id VARCHAR2(10),
    course_id VARCHAR2(10),
    semester NUMBER(2),
    grade VARCHAR2(5),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- INSERT ENROLLMENT
INSERT INTO Enrollment VALUES ('S01','C01',3,'A');
INSERT INTO Enrollment VALUES ('S02','C02',3,'B+');
INSERT INTO Enrollment VALUES ('S03','C03',3,'A');
INSERT INTO Enrollment VALUES ('S04','C04',3,'B');
INSERT INTO Enrollment VALUES ('S05','C05',3,'A+');
INSERT INTO Enrollment VALUES ('S06','C06',3,'A');
INSERT INTO Enrollment VALUES ('S07','C07',3,'B+');
INSERT INTO Enrollment VALUES ('S08','C08',3,'A');
INSERT INTO Enrollment VALUES ('S09','C09',3,'B');
INSERT INTO Enrollment VALUES ('S10','C10',3,'A');
INSERT INTO Enrollment VALUES ('S11','C01',3,'B+');
INSERT INTO Enrollment VALUES ('S12','C02',3,'A');
INSERT INTO Enrollment VALUES ('S13','C06',3,'A+');
INSERT INTO Enrollment VALUES ('S14','C07',3,'B');
INSERT INTO Enrollment VALUES ('S15','C03',3,'A');

COMMIT;

-- ===============================
-- VERIFICATION
-- ===============================
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;

SELECT * FROM Enrollment;
