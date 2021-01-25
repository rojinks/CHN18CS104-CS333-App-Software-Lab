/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ------------------------------------------------------------------------------- */
/* Experiment 11: Database trigger to prevent changes (statement level)
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

DELIMITER $$
        CREATE TRIGGER INSERT_PREVENT
        BEFORE INSERT
        ON Employee FOR EACH ROW
        BEGIN
        IF (CURRENT_TIME() BETWEEN '17:00' AND '00:00' ) THEN
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No changes to Employee Table';
        END IF;
END $$
DELIMITER ;

DELIMITER $$
        CREATE TRIGGER UPDATE_PREVENT
        BEFORE UPDATE
        ON Employee FOR EACH ROW
        BEGIN
        IF (CURRENT_TIME() BETWEEN '17:00' AND '00:00' ) THEN
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No changes to Employee Table';
        END IF;
END $$
DELIMITER ;

DELIMITER $$
        CREATE TRIGGER DELETE_PREVENT
        BEFORE DELETE
        ON Employee FOR EACH ROW
        BEGIN
        IF (CURRENT_TIME() BETWEEN '17:00' AND '00:00' ) THEN
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No changes to Employee Table';
        END IF;
END $$
DELIMITER ;

/* ------------------------------------------------------------------------------- */
