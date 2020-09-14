/*---------------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
26 06 2020
https://www.w3schools.com/sql/
-----------------------------------------------------


              SQL DROP TABLE Statement
             ==========================


The SQL DROP TABLE Statement
=============================

The DROP TABLE statement is used to drop an existing table in a database.*/

DROP TABLE table_name;

/* Note: Be careful before dropping a table. Deleting a table will result in 
   ----  loss of complete information stored in the table!

SQL DROP TABLE Example
=======================

The following SQL statement drops the existing table "Shippers":*/

DROP TABLE Shippers;

/* SQL TRUNCATE TABLE
=====================

The TRUNCATE TABLE statement is used to delete the data inside a table, 
but not the table itself.*/

TRUNCATE TABLE table_name;
