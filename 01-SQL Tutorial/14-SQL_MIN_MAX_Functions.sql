/*---------------------------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
17 05 2020
https://www.w3schools.com/sql/
----------------------------------------------------------------


                            SQL MIN() and MAX() Functions
                            ==============================

The SQL MIN() and MAX() Functions
==================================

 > The MIN() function returns the smallest value of the selected column.

 > The MAX() function returns the largest value of the selected column.


MIN() Syntax:
-------------
*/
SELECT MIN(column_name)
FROM table_name
WHERE condition;
/*

MAX() Syntax:
--------------

*/
SELECT MAX(column_name)
FROM table_name
WHERE condition;
/*

Demo Database
==============

Below is a selection from the "Products" table in the Northwind sample database:

MIN() Example
==============

The following SQL statement finds the price of the cheapest product:

*/
SELECT MIN(Price) AS SmallestPrice
FROM Products;
/*

MAX() Example
==============

The following SQL statement finds the price of the most expensive product:
*/
SELECT MAX(Price) AS LargestPrice
FROM Products;
