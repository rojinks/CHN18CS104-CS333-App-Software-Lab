/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ------------------------------------------------------------------------------- */
/* Experiment 6: Creation of views and assertions
/* ------------------------------------------------------------------------------- */

USE lab;

CREATE TABLE Store (
    order_no INT PRIMARY KEY,
    code VARCHAR(5),
    item_name VARCHAR(50),
    quantity INT,
    price FLOAT(10,2),
    discount FLOAT,
    mrp FLOAT(10,2)
);

INSERT INTO Store VALUES(001,'A01', 'Ryzen 5 3550H', 5, 45.00, 10.0, 35.00);
INSERT INTO Store VALUES(002,'B01', 'GTX 1650', 5, 160.00, 20.0, 140.00);
INSERT INTO Store VALUES(003,'A02', 'Intel i5 9300H', 5, 70.00, 10.0, 60.00);

SELECT * FROM Store;

CREATE VIEW ITEM AS
SELECT item_name, quantity
FROM Store;

SELECT * FROM ITEM;

INSERT INTO Store VALUES(004,'C01', 'ROG Motherboard B450-F', 10, 71.25, 5.0, 75.00);

SELECT * FROM Store;

SELECT * FROM ITEM;

DROP VIEW ITEM;

/* -------------------------------------------------------------------------------- */
