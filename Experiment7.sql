/* CHN18CS104 */
/* Rojin K Sunny */
/* CS C 51 */
/* ------------------------------------------------------------------------------- */
/* Experiment 7: Implementation of built-in functions in RDBMS
/* ------------------------------------------------------------------------------- */

USE applab;

CREATE TABLE Store (
        OrderNo INT PRIMARY KEY,
        Code VARCHAR(5),
        Item VARCHAR(50),
        Quantity INT,
        Price FLOAT(10,2),
        Discount FLOAT,
        MRP FLOAT(10,2)
);

INSERT INTO Store VALUES
        (001,'A01', 'Ryzen 5 3550H', 15, 45.00, 10.0, 55.00),
        (002,'B01', 'GTX 1650', 10, 160.00, 20.0, 180.00),
        (003,'A02', 'Intel i5 9300H', 10, 270.00, 10.0, 280.00),
        (004,'C01', 'ROG Strix B450-F', 20, 250.00, 5.0, 255.00);

SELECT * FROM Store;

SELECT MOD(Price, 9) FROM Store;

SELECT price, POWER(Price, 2) FROM Store;

SELECT ROUND(Price / 7, 0) FROM Store;

/* -------------------------------------------------------------------------------- */
