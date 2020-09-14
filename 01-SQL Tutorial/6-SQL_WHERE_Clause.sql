/*------------------------------------------------------


--------------------------------------------------------


                  SQL WHERE Clause
                  ==================

The SQL WHERE Clause
======================
The 'WHERE' clause is used to filter records.

The 'WHERE' clause is used to extract only those records that fulfill
a specified condition.

Syntax:

*/
SELECT column1, column2, column3
FROM table_name
WHERE condition;
/*

Note: The 'WHERE' clause is not only used in SELECT statement, it is also used
in UPDATE, DELETE statement, etc.!


WHERE Clause Example
=====================

The following SQL statement selects all the customers from the country
"Mexico", in the "Customers" table:

*/
SELECT * FROM Customers
WHERE Country='Mexico';
/*


Text Fields vs. Numeric Fields
===============================

SQL requires single quotes around text values.
(most database systems will also allow double quotes).

However, numeric fields should not be enclosed in quotes:

*/
SELECT * FROM Customers
WHERE CustomerID=1;
/*


Operators in The WHERE Clause
=============================

The following operators can be used in the 'WHERE' clause:

Operator 	 Description                         Example
--------   -------------                       ---------
-------------------------------------------------------------------------------
= 	       Equal                               SELECT * FROM Products
                                               WHERE Price = 18;
-------------------------------------------------------------------------------
> 	       Greater than                        SELECT * FROM Products
                                               WHERE Price > 30;
-------------------------------------------------------------------------------
< 	       Less than                           SELECT * FROM Products
                                               WHERE Price < 30;
-------------------------------------------------------------------------------
>= 	       Greater than or equal               SELECT * FROM Products
                                               WHERE Price >= 30;
-------------------------------------------------------------------------------
<= 	       Less than or equal                  SELECT * FROM Products
                                               WHERE Price <= 30;
-------------------------------------------------------------------------------
<> 	       Not equal.                          SELECT * FROM Products
           Note: In some versions of SQL       WHERE Price <> 18;
           this operator may be written as '!='
-------------------------------------------------------------------------------
BETWEEN    Between a certain range             SELECT * FROM Products
                                               WHERE Price BETWEEN 50 AND 60;
-------------------------------------------------------------------------------
LIKE 	   Search for a pattern                SELECT * FROM Customers
                                               WHERE City LIKE 's%';
-------------------------------------------------------------------------------
IN 	       To specify multiple possible        SELECT * FROM Customers
           values for a column                 WHERE City IN ('Paris','London');


-------------------------------------------------------------------------------
*/
