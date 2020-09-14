/*---------------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
26 06 2020
https://www.w3schools.com/sql/
-----------------------------------------------------


            SQL LEFT JOIN Keyword
           =========================

SQL LEFT JOIN Keyword
=======================

The 'LEFT JOIN' keyword returns all records from the left table (table1), 
and the matched records from the right table (table2). The result is NULL 
from the right side, if there is no match.


LEFT JOIN Syntax
================

*/
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
/*

Note: In some databases LEFT JOIN is called LEFT OUTER JOIN.


Demo Database
==============

In this tutorial we will use the well-known Northwind sample database.

Below is a selection from the "Customers" table:
--------------------------------------------------------------------------------------
CustomerID 	CustomerName    ContactName   Address      City     PostalCode   Country
--------------------------------------------------------------------------------------
1           Alfreds         Maria  	      Obere        Berlin   12209 	     Germany
            Futterkiste     Anders        Str. 57
--------------------------------------------------------------------------------------
2 	        Ana Trujillo    Ana  	      Avda. de     México   05021 	     Mexico
            Emparedados     Trujillo      la Constit-  D.F.
            y helados                     ución 2222
--------------------------------------------------------------------------------------
3 	        Antonio  	    Antonio  	 Mataderos     México   05023 	     Mexico
            Moreno          Moreno        2312         D.F
            Taquería
--------------------------------------------------------------------------------------            
...         ...             ...            ...         ...      ...          ...
-------------------------------------------------------------------------------------


And a selection from the "Orders" table:
-------------------------------------------------------------------------------------
OrderID   CustomerID 	EmployeeID 	OrderDate 	ShipperID
-------------------------------------------------------------------------------------
10308 	  2 	        7 	        1996-09-18  	3
10309 	  37 	        3 	        1996-09-19  	1
10310 	  77 	        8 	        1996-09-20  	2
...       ...           ...         ...             ...
-------------------------------------------------------------------------------------


SQL LEFT JOIN Example
======================

The following SQL statement will select all customers, and any orders they 
might have:

*/
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;
/*

Note: The LEFT JOIN keyword returns all records from the left table (Customers), 
----  even if there are no matches in the right table (Orders).

