/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* --------------------------------------------------------------------------- */
/* Experiment 5: mySQL TCL Commands
/* --------------------------------------------------------------------------- */

USE applab;

CREATE TABLE Class(
        id INT PRIMARY KEY,
        std_name VARCHAR(50) );
    
START TRANSACTION;

SET autocommit=0;

INSERT INTO  Class
        VALUES (01, "Altair"), (02, "Ezio"), (03, "Connor"), (04, "Edward");

COMMIT;

INSERT INTO Class
        VALUES (05, "Shay");
 
SELECT * FROM Class;

ROLLBACK;

SAVEPOINT A;

INSERT INTO Class
        VALUES (06, "Desmond");

SELECT * FROM Class;

ROLLBACK TO A;

SELECT * FROM Class;

/* --------------------------------------------------------------------------- */
