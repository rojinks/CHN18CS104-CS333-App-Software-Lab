/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ------------------------------------------------------------- */
/* Experiment 1: mySQL Commands */
/* ------------------------------------------------------------- */

USE applab;

CREATE TABLE Student(
    Sno INT NOT NULL PRIMARY KEY,
    Name VARCHAR(50) NOT  NULL,
    Marks INT NOT NULL,
    Dept VARCHAR(25) NOT NULL);
    
ALTER TABLE Student ADD age INT;

ALTER TABLE Student MODIFY COLUMN Dept VARCHAR(55);

ALTER TABLE Student DROP COLUMN Marks;

ALTER TABLE Student RENAME TO Students;

TRUNCATE TABLE Students;

DROP TABLE Students;

/* ------------------------------------------------------------- */
