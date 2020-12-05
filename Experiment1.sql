/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ---------------------------------------------------------- */
/* Experiment 1: mySQL Commands */
/* ------------------------------------------------------------- */
/*a)*/    CREATE TABLE Student(
                Sno INT NOT NULL PRIMARY KEY,
                Name VARCHAR(50) NOT  NULL,
                Marks INT NOT NULL,
                Dept VARCHAR(25) NOT NULL);
    
/*b)*/    ALTER TABLE Student ADD age INT;

/*c)*/    ALTER TABLE Student MODIFY COLUMN Dept VARCHAR(55);

/*d)*/    ALTER TABLE Student DROP COLUMN Marks;

/*e)*/    ALTER TABLE Student RENAME TO Students;

/*f)*/    TRUNCATE TABLE Students;

/*g)*/    DROP TABLE Students;
/* ---------------------------------------------------------- */
