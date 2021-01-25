/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ------------------------------------------------------------------------------- */
/* Experiment 10: PL/SQL Block to illustrate implicit cursor
/* ------------------------------------------------------------------------------- */

USE applab

Create Table CUR(
        Name CHAR(10),
        DOB DATE,
        Salary INT(11)
);

DELIMITER //

CREATE PROCEDURE IMP()
BEGIN
        DECLARE DONE INT DEFAULT FALSE;
        DECLARE EmpName CHAR(10);
        DECLARE EmpDOB DATE;
        DECLARE EmpSalary INT(11);
        DECLARE EmpRecord CURSOR FOR SELECT Name, DOB, Salary FROM Employee;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET DONE = TRUE;
        OPEN EmpRecord;
        ReadLoop: LOOP
            FETCH EmpRecord INTO EmpName, EmpDOB, EmpSalary;
            IF DONE THEN
                LEAVE ReadLoop;
		        END IF;
          INSERT INTO CUR VALUES (EmpName, EmpDOB, EmpSalary);
	        END LOOP;
        CLOSE EmpRecord;
END; //
DELIMITER ;

Call IMP();
SELECT * FROM CUR;

/* ------------------------------------------------------------------------------- */
