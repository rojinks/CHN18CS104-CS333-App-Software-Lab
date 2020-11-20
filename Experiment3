CHN18CS104
Rojin K Sunny
CS C 51
-----------------------------------------------------------------------------------
Experiment 3: mySQL Commands
-----------------------------------------------------------------------------------

a)    CREATE TABLE Employee(
          eid CHAR(4),
          ename CHAR(30) NOT NULL,
          designation CHAR(30) NOT NULL,
          dob DATE NOT NULL,
          salary NUMERIC);
        
b)    CREATE TABLE employdetails(
          sex CHAR(1),
          nationality CHAR(10),
          gno INT,
          PRIMARY KEY (gno),
          empid CHAR(4) REFERENCES Employee(eid));
 
c)    INSERT INTO Employee
          VALUES ("e1", "Altair Ibn-La'Ahad", "Chair", "1165-01-11", "69"),
          ("e2", "Ezio Auditore da Firenze", "Vice-Chair", "1459-06-24", "420");
 
d)    INSERT INTO employdetails
          VALUES ("M", "Italian", "25", "e2"), ("M", "American", "19", "e3");
 
e)    SELECT * FROM Employee WHERE eid IN (SELECT empid FROM employdetails);
 
f)    SELECT * FROM Employee WHERE eid NOT IN (SELECT empid FROM employdetails);

------------------------------------------------------------------------------------
