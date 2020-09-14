/* ---------------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
17 05 2020
https://www.w3schools.com/sql/
-------------------------------------------------------

                    SQL COUNT(), AVG() and SUM() Functions
                    =========================================


The SQL COUNT(), AVG() and SUM() Functions
===========================================
 > The COUNT() function returns the number of rows that matches a specified
   criterion.

 > The AVG() function returns the average value of a numeric column.

 > The SUM() function returns the total sum of a numeric column.


COUNT() Syntax:
---------------
*/
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
/*

AVG() Syntax:
-------------
*/
SELECT AVG(column_name)
FROM table_name
WHERE condition;
/*

SUM() Syntax:
--------------
*/
SELECT SUM(column_name)
FROM table_name
WHERE condition;
/*

Demo Database
==============

Below is a selection from the "Products" table in the Northwind sample database:


COUNT() Example
================

The following SQL statement finds the number of products:
*/
SELECT COUNT(ProductID)
FROM Products;
/*

Note: NULL values are not counted.
----


AVG() Example
==============

The following SQL statement finds the average price of all products:

*/
SELECT AVG(Price)
FROM Products;
/*

Note: NULL values are ignored.
-----

Demo Database
==============


SUM() Example
==============

The following SQL statement finds the sum of the "Quantity" fields in the "OrderDetails" table:

*/
SELECT SUM(Quantity)
FROM OrderDetails;
/*

Note: NULL values are ignored
*/
