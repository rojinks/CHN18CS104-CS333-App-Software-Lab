/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* --------------------------------------------------------------- */
/* Experiment 4: mySQL Commands
/* --------------------------------------------------------------- */

CREATE TABLE Department(
          Code INT PRIMARY KEY NOT NULL,
          Title VARCHAR(30),
          Dept_name VARCHAR(30) UNIQUE NOT NULL,
          Dept_id INT UNIQUE NOT NULL,
          Salary INT, CHECK (Salary > 2000) );

CREATE TABLE Instructor(
          Name VARCHAR(30) NOT NULL,
          Code INT NOT NULL,
          Id INT PRIMARY KEY DEFAULT 0 );

INSERT INTO Department
          VALUES (69, "Grandmaster", "Hashashin", 666, 3000);

INSERT INTO Instructor
          VALUES ("Altair Ibn-La'Ahad", 14, 14);

/* --------------------------------------------------------------- */
