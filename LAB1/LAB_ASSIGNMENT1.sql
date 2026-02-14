PART-A(DDL)

CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR2(50),
    Dept VARCHAR2(20),
    Age INT,
    Phone VARCHAR2(15)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR2(50),
    Credits INT
);

ALTER TABLE Student ADD City VARCHAR2(50);

ALTER TABLE Student ADD Semester INT;

ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

DROP TABLE Course;

PART-B(DML)

INSERT INTO Student VALUES (101, 'rajani', 'CSE', 21, '9876543210', 'patna', 5);
INSERT INTO Student VALUES (102, 'Rahul', 'ME', 22, '9123456789', 'Mumbai', 5);
INSERT INTO Student VALUES (103, 'Sneha', 'CSE', 20, '9988776655', 'Pune', 3);
INSERT INTO Student VALUES (104, 'Priya', 'ECE', 21, '9999999999', 'Chennai', 5);
INSERT INTO Student VALUES (105, 'Vikram', 'CSE', 19, '8888888888', 'Patna', 1);


SELECT * FROM Student;

SELECT RollNo, Name FROM Student;

SELECT * FROM Student WHERE Dept = 'CSE';

SELECT * FROM Student WHERE Age > 20;

UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';

UPDATE Student SET Age = Age + 1;

DELETE FROM Student WHERE RollNo = 105;

DELETE FROM Student;


