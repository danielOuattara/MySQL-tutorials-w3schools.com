/*---------------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
08 07 2020
https://www.w3schools.com/sql/
-----------------------------------------------------


             The SQL UNION Operator
             =======================


The SQL UNION Operator
======================

The UNION operator is used to combine the result-set of two or more 
SELECT statements.

   > Each SELECT statement within UNION must have the same number of columns
   > The columns must also have similar data types
   > The columns in each SELECT statement must also be in the same order 
   
UNION Syntax
============                                                               */

SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2; 


/*UNION ALL Syntax
==================

The UNION operator selects only distinct values by default. 
To allow duplicate values, use UNION ALL:                                   */

SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2; 


/*Note: The column names in the result-set are usually equal to the 
------  column names in the first SELECT statement in the UNION.


Demo Database
==============

In this tutorial we will use the well-known Northwind sample database.

Below is a selection from the "Customers" table:
--------------------------------------------------------------------------------------
CustomerID 	CustomerName    ContactName 	Address      City     PostalCode   Country
--------------------------------------------------------------------------------------
1           Alfreds         Maria  	        Obere        Berlin   12209 	     Germany
            Futterkiste     Anders          Str. 57
--------------------------------------------------------------------------------------
2 	        Ana Trujillo    Ana  	        Avda. de  	 México   05021 	     Mexico
            Emparedados     Trujillo        la Constit-  D.F.
            y helados                       ución 2222
--------------------------------------------------------------------------------------
3 	        Antonio  	    Antonio  	    Mataderos  	 México   05023 	     Mexico
            Moreno          Moreno          2312         D.F
            Taquería
-------------------------------------------------------------------------------------- 



And a selection from the "Suppliers" table:

SupplierID 	SupplierName 	 ContactName 	Address 	City 	    PostalCode  Country
---------------------------------------------------------------------------------------
1 	        Exotic Liquid 	 Charlotte  	49 Gilbert  London      EC1 4SD     UK
                             Cooper         St.
---------------------------------------------------------------------------------------
2 	        New Orleans  	 Shelley  	    P.O. Box  	 New        70117 	    USA
            Cajun Delights   Burke          78934        Orleans
---------------------------------------------------------------------------------------
3 	        Grandma Kelly's  Regina  	    707 Oxford   Ann        48104 	    USA
            Homestead        Murphy         Rd.          Arbor
---------------------------------------------------------------------------------------


SQL UNION Example
==================

The following SQL statement returns the cities (only distinct values) from both 
the "Customers" and the "Suppliers" table:                                             */

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;



/* SQL UNION ALL Example
=========================

The following SQL statement returns the cities (duplicate values also) from both 
the "Customers" and the "Suppliers" table:*/

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;


/* SQL UNION With WHERE
=======================

The following SQL statement returns the German cities (only distinct values) from both 
the "Customers" and the "Suppliers" table:*/

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;


/*SQL UNION ALL With WHERE
===========================

The following SQL statement returns the German cities (duplicate values also) from both 
the "Customers" and the "Suppliers" table:*/

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;


/*Another UNION Example
=======================

The following SQL statement lists all customers and suppliers:*/

SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;


/*Notice the "AS Type" above - it is an alias. SQL Aliases are used to give a table 
-------  or a column a temporary name. An alias only exists for the duration of the query. 
         So, here we have created a temporary column named "Type", that list whether 
         the contact person is a "Customer" or a "Supplier".                             */