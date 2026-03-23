#DBMS Lab 6 – Aggregate Functions & GROUP BY

## About this Lab

In this lab, I worked with **aggregate functions and GROUP BY queries** to analyze data from multiple tables.
The database used here is the same one created in **Lab 3**, which includes Student, Faculty, Course, Department, and Enrollment tables.

The main goal was to understand how to **summarize data** and apply conditions on grouped results.

---

## What I Practiced

* Using aggregate functions:

  * `COUNT()`
  * `MAX()`
  * `MIN()`

* Grouping data using:

  * `GROUP BY`

* Filtering grouped data using:

  * `HAVING`

* Combining tables using:

  * 'INNER JOIN' with aggregation


## Tables Used

* **Student**
* **Faculty**
* **Course**
* **Department**
* **Enrollment**

These tables are connected through primary and foreign keys.


## Tasks Covered

This lab includes **22 SQL queries**, divided into:

* **Part A:** Basic aggregate queries
* **Part B:** GROUP BY on single tables
* **Part C:** GROUP BY with HAVING
* **Part D:** Aggregation with JOIN
* **Part E:** Analytical queries


## Key Observations

* Total students in the database: **15**
* Total faculty members: **12**
* Total courses: **10**
* Most courses have credits between **3 and 4**
* Department **D01** has the highest number of students
* All enrollments are in **Semester 3**
* Grade **A** is the most common



## How to Run

1. Open SQL*Plus or VS Code with Oracle connection
2. Run the SQL file:
@lab6_solution.sql
3. The results will be displayed in the output console

