  
/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ------------------------------------------------------------------------------- */
/* Experiment 8: Implementation of various aggregate functions in SQL
/* ------------------------------------------------------------------------------- */

USE applab;

CREATE TABLE Employee (
        Code INT PRIMARY KEY,
        Name VARCHAR(30),
        DOB DATE,
        Designation VARCHAR(30),
        Salary INT
);

INSERT INTO Employee VALUES
        (11, 'Altair', '1165-01-11', 'Project Manager', 100000),
        (12, 'Ezio', '1459-06-24', 'Developer', 50000),
        (13, 'Connor', '1756-04-04', 'Clerk', 30000),
        (24, 'Edward', '1693-03-10', 'Clerk', 35000),
        (25, 'Shay', '1731-09-12', 'Designer', 20000);

SELECT SUM(Salary) FROM Employee WHERE Designation='Clerk';

SELECT MAX(Salary) FROM Employee;

SELECT AVG(Salary) FROM Employee;

SELECT MIN(Salary) FROM Employee;

SELECT COUNT(Code) FROM Employee;

/* -------------------------------------------------------------------------------- */
