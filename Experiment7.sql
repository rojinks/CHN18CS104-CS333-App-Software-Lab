/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ------------------------------------------------------------------------------- */
/* Experiment 7: Implementation of built-in functions in RDBMS
/* ------------------------------------------------------------------------------- */

USE applab;

CREATE TABLE Store (
    order_no INT PRIMARY KEY,
    code VARCHAR(5),
    item VARCHAR(50),
    quantity INT,
    price FLOAT(10,2),
    discount FLOAT,
    mrp FLOAT(10,2)
);

INSERT INTO Store VALUES(001,'A001', 'Soap dish', 10, 45.00, 10.0, 50.00);
INSERT INTO Store VALUES(002,'B001', 'Stainless Pan', 22, 160.00, 20.0, 200.00);
INSERT INTO Store VALUES(003,'A002', 'Shampoo', 15, 270.00, 10.0, 300.00);
INSERT INTO Store VALUES(004,'C001', 'Spoon', 10, 71.25, 5.0, 75.00);

SELECT * FROM Store;

SELECT MOD(price, 9) FROM Store;

SELECT price, POWER(price, 2) FROM Store;

SELECT ROUND(price / 7, 0) FROM Store;

/* -------------------------------------------------------------------------------- */
