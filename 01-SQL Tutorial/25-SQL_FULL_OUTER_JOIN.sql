/*---------------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
26 06 2020
https://www.w3schools.com/sql/
-----------------------------------------------------


               SQL FULL OUTER JOIN Keyword
              ==============================


SQL FULL OUTER JOIN Keyword
============================

The 'FULL OUTER JOIN' keyword returns all records when there is a match 
in left (table1) or right (table2) table records.

Note: FULL OUTER JOIN can potentially return very large result-sets!
----

Tip: FULL OUTER JOIN and FULL JOIN are the same.
----


FULL OUTER JOIN Syntax
=======================

*/
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
/*


Demo Database
==============

In this tutorial we will use the well-known Northwind sample database.

Below is a selection from the "Customers" table:
 
--------------------------------------------------------------------------------------
CustomerID 	CustomerName    ContactName 	Address      City     PostalCode   Country
--------------------------------------------------------------------------------------
1           Alfreds         Maria  	      Obere        Berlin   12209 	     Germany
            Futterkiste     Anders        Str. 57
--------------------------------------------------------------------------------------
2 	        Ana Trujillo    Ana  	      Avda. de     México   05021 	     Mexico
            Emparedados     Trujillo      la Constit-  D.F.
            y helados                     ución 2222
--------------------------------------------------------------------------------------
3 	        Antonio  	    Antonio  	  Mataderos    México   05023 	     Mexico
            Moreno          Moreno        2312         D.F
            Taquería
--------------------------------------------------------------------------------------            
...         ...             ...            ...         ...      ...          ...
-------------------------------------------------------------------------------------

And a selection from the "Orders" table:


OrderID   CustomerID 	EmployeeID 	OrderDate 	ShipperID
-------------------------------------------------------------------------------------
10308 	  2 	        7 	        1996-09-18  	3
10309 	  37 	        3 	        1996-09-19  	1
10310 	  77 	        8 	        1996-09-20  	2
...       ...           ...         ...             ...
-------------------------------------------------------------------------------------


SQL FULL OUTER JOIN Example
=============================

The following SQL statement selects all customers, and all orders:

*/
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
/*

A selection from the result set may look like this:

CustomerName 	                    OrderID
----------------------------------------------------------------------------------
Alfreds Futterkiste 	            Null
----------------------------------------------------------------------------------
Ana Trujillo Emparedados y helados 	10308
----------------------------------------------------------------------------------
Antonio Moreno Taquería 	        10365
----------------------------------------------------------------------------------


Note: The FULL OUTER JOIN keyword returns all matching records from both 
----  tables whether the other table matches or not. So, if there are rows 
      in "Customers" that do not have matches in "Orders", or if there are 
      rows in "Orders" that do not have matches in "Customers", those rows
      will be listed as well.