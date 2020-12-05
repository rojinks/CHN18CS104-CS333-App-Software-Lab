/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ---------------------------------------------------------- */
/* Experiment 2: mySQL Commands
/* ---------------------------------------------------------- */

CREATE TABLE Employee(
        CODE VARCHAR(4) NOT NULL PRIMARY KEY,
        NAME VARCHAR(10) NOT NULL,
        DESIGNATION VARCHAR(30) NOT NULL,
        DOB DATE NOT NULL,
        SALARY DECIMAL(10,2) DEFAULT NULL);
    
INSERT INTO Employee VALUES(
        'e1', 'JOELLE', 'ACCOUNTANT', '1987-02-23',154000.00)
        ('e2','HENRY','HR MANAGER','1983-05-07',250000);

SELECT * FROM Employee;

UPDATE Employee SET SALARY=300000.00 WHERE CODE='e2';

DELETE FROM Employee WHERE CODE='e1';

/* ---------------------------------------------------------- */
