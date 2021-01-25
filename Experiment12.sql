/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ------------------------------------------------------------------------------- */
/* Experiment 12: Implementation of join operator
/* ------------------------------------------------------------------------------- */

USE applab

CREATE TABLE Sailors(
        SID INT PRIMARY KEY,
        SName CHAR(25),
        Rating FLOAT,
        Age INT
);

INSERT INTO Sailors VALUES
        (11, 'Edward', 10.0, 45),
        (21, 'Shay', 8.0, 35),
        (31, 'Connor', 6.0, 25);

CREATE TABLE Boats(
        BID INT PRIMARY KEY,
        BName CHAR(20),
        Color CHAR(10)
);

INSERT INTO Boats VALUES
        (111, 'Jackdaw', 'Black'),
        (211, 'Morrigan', 'Red'),
        (311, 'Aquila', 'Yellow');

CREATE TABLE Reserves(
        SID INT,
        BID INT,
        Day DATE
);

INSERT INTO Reserves VALUES
        (11, 111, '2021/01/25'),
        (21, 211, '2021/01/25'),
        (31, 311, '2021/01/25');

SELECT A.SID, A.SName, A.Rating, A.Age FROM Sailors AS A
        INNER JOIN Reserves AS C ON A.SID = C.SID AND C.BID = 111;

SELECT B.BName FROM Reserves AS C
        INNER JOIN Sailors AS A ON A.SID = C.SID AND A.SName = 'Connor'
        INNER JOIN Boats AS B ON B.BID = C.BID;

SELECT A.SName FROM Sailors AS A
        INNER JOIN Reserves AS C ON A.SID = C.SID
        INNER JOIN Boats AS B ON B.BID = C.BID AND B.Color = 'Black'
        ORDER BY A.Age;

SELECT DISTINCT A.SNAME FROM Sailors AS A
        INNER JOIN Reserves AS C ON A.SID IN (C.SID);

SELECT A.SID , A.SName FROM Reserves AS C
        INNER JOIN Reserves AS D ON C.SID <> D.SID AND C.DAY=D.DAY
        INNER JOIN Sailors AS A ON D.SID=A.SID;

/* ------------------------------------------------------------------------------- */
