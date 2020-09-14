/*---------------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
17 05 2020
https://www.w3schools.com/sql/
-------------------------------

                   SQL INNER JOIN Keyword
                  ========================

The 'INNER JOIN' keyword selects records that have matching values in both
tables.


INNER JOIN Syntax
====================
*/
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
/*

Demo Database
==============

In this tutorial we will use the well-known Northwind sample database.

Below is a selection from the "Orders" table:
-------------------------------------------------------------------------------------
OrderID 	CustomerID 	EmployeeID 	OrderDate 	ShipperID
-------------------------------------------------------------------------------------
10308 	  2 	        7 	        1996-09-18  	3
10309 	  37 	        3 	        1996-09-19  	1
10310 	  77 	        8 	        1996-09-20  	2
...           ...         ...         ...
-------------------------------------------------------------------------------------

And a selection from the "Customers" table: 
--------------------------------------------------------------------------------------
CustomerID 	CustomerName    ContactName 	Address      City     PostalCode   Country
--------------------------------------------------------------------------------------
1           Alfreds         Maria  	      Obere        Berlin   12209 	     Germany
            Futterkiste     Anders        Str. 57
--------------------------------------------------------------------------------------
2 	      Ana Trujillo    Ana  	      Avda. de  	 México   05021 	     Mexico
            Emparedados     Trujillo      la Constit-  D.F.
            y helados                     ución 2222
--------------------------------------------------------------------------------------
3 	      Antonio  	    Antonio  	Mataderos  	 México   05023 	     Mexico
            Moreno          Moreno        2312         D.F
            Taquería
--------------------------------------------------------------------------------------            
...         ...             ...            ...         ...      ...          ...
-------------------------------------------------------------------------------------

SQL INNER JOIN Example
======================

The following SQL statement selects all 'orders' with customer information:

*/
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
/*

Note: The INNER JOIN keyword selects all rows from both tables as long as
      there is a match between the columns. If there are records in the
      "Orders" table that do not have matches in "Customers", these orders
      will not be shown!



JOIN Three Tables
==================

The following SQL statement selects all orders with customer and shipper 
information:

*/
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
