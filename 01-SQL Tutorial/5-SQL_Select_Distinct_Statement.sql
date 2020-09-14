/*--------------------------------------------------------


----------------------------------------------------------
                SQL SELECT DISTINCT Statement
                ===============================

s
The SQL SELECT DISTINCT Statement
==================================

The 'SELECT DISTINCT' statement is used to return only distinct
(different) values.

Inside a table, a column often contains many duplicate values; and sometimes
you only want to list the different (distinct) values.

*/
SELECT DISTINCT column1, column2, column3 FROM table_name;
/*


SELECT Example Without DISTINCT
==================================

The following SQL statement selects ALL (including the duplicates) values
from the "Country" column in the "Customers" table:

*/
SELECT Country FROM Customers;
/*

We obtain a repetitive list of all 'Country' from 'Customers'.

Now, let us use the 'DISTINCT' keyword with the above SELECT statement and see
the result.


SELECT DISTINCT Examples
=========================

 > The following SQL statement selects only the DISTINCT values from the
   "Country" column in the "Customers" table:

*/
SELECT DISTINCT Country FROM Customers;
/*

> The following SQL statement lists the number of different (distinct)
  customer countries:

*/
SELECT COUNT(DISTINCT Country) FROM Customers;
/*

Note: The example above will not work in Firefox and Microsoft Edge!
Because 'COUNT(DISTINCT column_name)' is not supported in Microsoft Access
databases. Firefox and Microsoft Edge are using Microsoft Access.

Here is the workaround for MS Access:

*/
SELECT Count(*) AS DistinctCountries FROM (SELECT DISTINCT Country FROM Customers);
