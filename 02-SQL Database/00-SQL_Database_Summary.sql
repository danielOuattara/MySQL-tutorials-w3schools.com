

/*----------------------------------------------------------

*/----------------------------------------------------------


--  # 1 -------------------------------------------------------

CREATE DATABASE databasename;

CREATE DATABASE testDB;

--  # 2 -------------------------------------------------------

DROP DATABASE databaseName;

DROP DATABASE testDB; -- dropping a datbase called 'testDB'

--  # 3 -------------------------------------------------------

BACKUP DATABASE databasename
TO DISK = 'filepath';

BACKUP DATABASE databasename
TO DISK = 'filepath'
WITH DIFFERENTIAL;

BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';

BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'
WITH DIFFERENTIAL;

--  # 4 -------------------------------------------------------

CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   --....
);

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);


CREATE TABLE new_table_name AS
    SELECT column1, column2,--...
    FROM existing_table_name
    WHERE --...;

CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;

--  # 5 -------------------------------------------------------

DROP TABLE table_name;

DROP TABLE Shippers;

TRUNCATE TABLE table_name;
--  # 6 -------------------------------------------------------

ALTER TABLE table_name
ADD column_name datatype;

ALTER TABLE Customers
ADD Email varchar(255);

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE Customers
DROP COLUMN Email;

ALTER TABLE table_name
ALTER COLUMN column_name datatype;

ALTER TABLE table_name
MODIFY COLUMN column_name datatype;

ALTER TABLE table_name
MODIFY column_name datatype;

ALTER TABLE Persons
ADD DateOfBirth date;

ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;

ALTER TABLE Persons
DROP COLUMN DateOfBirth;
--  # 7 -------------------------------------------------------

CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);
--  # 8 -------------------------------------------------------
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

ALTER TABLE Persons
MODIFY Age int NOT NULL; 
--  # 9 -------------------------------------------------------

/*SQL Server / Oracle / MS Access:     */   

CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

/*MySQL:   */

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);


CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);



/* MySQL / SQL Server / Oracle / MS Access: */

ALTER TABLE Persons
ADD UNIQUE (ID);

/* MySQL / SQL Server / Oracle / MS Access:  */

ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);
DROP a UNIQUE Constraint

/*  MySQL:                                    */
ALTER TABLE Persons
DROP INDEX UC_Person;

 /* SQL Server / Oracle / MS Access:          */

ALTER TABLE Persons
DROP CONSTRAINT UC_Person; 

--  # 10 -------------------------------------------------------

--  # 11 -------------------------------------------------------

--  # 12 -------------------------------------------------------

--  # 13 -------------------------------------------------------

--  # 14 -------------------------------------------------------

--  # 15 -------------------------------------------------------

--  # 16 -------------------------------------------------------

--  # 17 -------------------------------------------------------

--  # 18 -------------------------------------------------------

--  # 19 -------------------------------------------------------
