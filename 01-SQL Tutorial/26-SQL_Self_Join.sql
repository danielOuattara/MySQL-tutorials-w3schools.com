/*---------------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
26 06 2020
https://www.w3schools.com/sql/
-----------------------------------------------------


               SQL Self JOIN
              ===============              

SQL Self JOIN
==============

A self JOIN is a regular join, but the table is joined with itself.


Self JOIN Syntax
=================

*/
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
/*

T1 and T2 are different table aliases for the same table.


Demo Database
==============

In this tutorial we will use the well-known Northwind sample database.

Below is a selection from the "Customers" table:

--------------------------------------------------------------------------------------
CustomerID 	CustomerName    ContactName 	Address     City     PostalCode  Country
--------------------------------------------------------------------------------------
1           Alfreds         Maria  	       Obere        Berlin   12209 	     Germany
            Futterkiste     Anders         Str. 57
--------------------------------------------------------------------------------------
2 	        Ana Trujillo    Ana  	       Avda. de     México   05021 	     Mexico
            Emparedados     Trujillo       la Constit-  D.F.
            y helados                      ución 2222
--------------------------------------------------------------------------------------
3 	        Antonio  	    Antonio  	   Mataderos    México   05023 	     Mexico
            Moreno          Moreno         2312         D.F
            Taquería
--------------------------------------------------------------------------------------            
...         ...             ...            ...         ...      ...          ...
-------------------------------------------------------------------------------------


SQL Self JOIN Example
======================

The following SQL statement matches customers that are from the same city:

*/
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;
