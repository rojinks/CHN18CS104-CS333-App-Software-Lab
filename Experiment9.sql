/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ------------------------------------------------------------------------------- */
/* Experiment 9: Order by and group by clause
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

SELECT Code, Name, Designation FROM Employee ORDER BY Name DESC;

CREATE TABLE Deposit (
    BaccNo INT,
    Branch_Name VARCHAR(50),
    Amount FLOAT
);

INSERT INTO Deposit VALUES
        (420, 'Nainital', 69000.00),
        (520, 'Kottayam', 420000.00),
        (620, 'Manipal', 50000.00),
        (720, 'Kottayam', 80000.00),
        (820, 'Manipal', 20000.00),
        (920, 'Nainital', 42000.00);

SELECT Branch_Name, COUNT(Baccno), SUM(Amount) FROM Deposit GROUP BY Branch_Name;

/* ------------------------------------------------------------------------------- */
