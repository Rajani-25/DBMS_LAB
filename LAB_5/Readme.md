# DBMS Lab 5 – JOIN Queries

## About this Lab

In this lab, we practiced retrieving data from **multiple related tables** using **INNER JOIN** in SQL. The database was already created in **Lab 3**, which includes tables such as Student, Faculty, Course, Department, and Enrollment.

The goal of this lab was to learn how to combine data from different tables and produce meaningful information without modifying the database structure.

## What I Learned

During this lab, I worked with the following SQL concepts:

* Using **INNER JOIN** to combine tables
* Writing **JOIN conditions using primary and foreign keys**
* Using **table aliases** to make queries easier to read
* Sorting results using **ORDER BY**
* Filtering data using **WHERE**
* Performing basic analysis using **COUNT()** and **MAX()**

## Tables Used

The queries in this lab use the following tables created in earlier labs:

* **Department**
* **Faculty**
* **Course**
* **Student**
* **Enrollment**

These tables are connected using relationships such as:

* Student → Enrollment → Course
* Course → Faculty
* Department → Student / Faculty / Course

## Tasks Performed

The lab included **20 JOIN queries** divided into different sections:

* **Part A:** Student and Enrollment relationship
* **Part B:** Course and Faculty relationship
* **Part C:** Student–Course–Enrollment queries
* **Part D:** Department-based queries
* **Part E:** JOIN queries with filtering and sorting
* **Part F:** Analytical queries using aggregate functions

## Tools Used

* Oracle SQL
* SQL*Plus / VS Code

## How to Run

1. Open SQL*Plus or connect to your Oracle database.
2. Run the SQL script for this lab.


