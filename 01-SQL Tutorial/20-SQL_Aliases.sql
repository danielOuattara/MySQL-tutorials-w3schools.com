/*------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
17 05 2020
https://www.w3schools.com/sql/
-------------------------------------------

                    SQL Aliases
                   =============

SQL 'aliases' are used to give an entire table, or a column in a table,
a temporary name.

Aliases are often used to make column names more readable.

Note: An alias only exists for the duration of the query.
-----


Alias Column Syntax
====================

*/
SELECT column_name AS alias_name
FROM table_name;
/*


Alias Table Syntax
====================

*/
SELECT column_name(s)
FROM table_name AS alias_name;
/*


Demo Database
===============

In this tutorial we will use the well-known Northwind sample database.
Below is a selection from the "Customers" table: ...


And a selection from the "Orders" table: ...


Alias for Columns Examples
===========================
The following SQL statement creates two aliases, one for the CustomerID
column and another for the CustomerName column:

*/
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;
/*

The following SQL statement creates two aliases, one for the CustomerName
column and one for the ContactName column.

Note: It requires double quotation marks or square brackets if the alias name
----  contains spaces:


*/
SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers;
/*


Combined aliaises
------------------

The following SQL statement creates an alias named "Address" that combine four
olumns (Address, PostalCode, City and Country):

*/
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' +
       Country AS Address
FROM Customers;
/*

Note: To get the SQL statement above to work in MySQL use the following:

*/
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country)
       AS Address
FROM Customers;
/*


Alias for Tables Example
=========================

The following SQL statement selects all the orders from the customer with
CustomerID=4 (Around the Horn). We use the "Customers" and "Orders" tables,
and give them the table aliases of "c" and "o" respectively (Here we use
aliases to make the SQL shorter):

*/
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;
/*

The following SQL statement is the same as above, but without aliases:

*/
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Around the Horn'
      AND Customers.CustomerID=Orders.CustomerID;
/*

Aliases can be useful when:

  > There are more than one table involved in a query
  > Functions are used in the query
  > Column names are big or not very readable
  > Two or more columns are combined together
*/
