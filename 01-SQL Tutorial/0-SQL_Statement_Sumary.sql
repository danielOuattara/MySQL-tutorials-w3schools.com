
/*------------------------------------------------------------------------------


-- # 1--------------------------------------------------------------------------
 We suppose that our database is composed of many tables, containing
multiple columns each. Thoses columns are related, hence the so called
" Relationnal Database "

Table lists (datdbase):
------------
> Customers
> Categories
> Employees
> OrdersDetails Orders
> Products
> Sheepers
> Suppliers

# In each table, any horizontal line is an entry to the database.

--------------------------------------------------------------------------------
Some of The Most Important SQL Commands
*/
---------------------------------------
  > SELECT          -- extracts data from a database
  > UPDATE          -- updates data in a database
  > DELETE          -- deletes data from a database
  > INSERT INTO     -- inserts new data into a database
  > CREATE DATABASE -- creates a new database
  > ALTER DATABASE  -- modifies a database
  > CREATE TABLE    -- creates a new table
  > ALTER TABLE     -- modifies a table
  > DROP TABLE      -- deletes a table
  > CREATE INDEX    -- creates an index (search key)
  > DROP INDEX      -- deletes an index


--# 2 --------------------------------------------------------------------------
SELECT * FROM Customers;


--# 3 --------------------------------------------------------------------------
SELECT * FROM Customers;


--# 4 --------------------------------------------------------------------------
SELECT column1, column2, ...
FROM table_name;

SELECT * FROM table_name;

SELECT CustomerName, City FROM Customers;
SELECT * FROM Customers;


--# 5 --------------------------------------------------------------------------
SELECT DISTINCT column1, column2, ...
FROM table_name;

SELECT Country
FROM Customers;

SELECT DISTINCT Country
FROM Customers;

SELECT COUNT(DISTINCT Country)
FROM Customers;

SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);


--# 6 --------------------------------------------------------------------------
SELECT column1, column2, ...
FROM table_name
WHERE condition;

SELECT *
FROM Customers
WHERE Country='Mexico';

SELECT *
FROM Customers
WHERE CustomerID=1;

SELECT *
FROM Products
WHERE Price = 18;

SELECT *
FROM Products
WHERE Price > 30;

SELECT *
FROM Products
WHERE Price < 30;

SELECT *
FROM Products
WHERE Price >= 30;

SELECT *
FROM Products
WHERE Price <= 30;

SELECT *
FROM Products
WHERE Price <> 18;

SELECT *
FROM Products
WHERE Price BETWEEN 50 AND 60;

SELECT *
FROM Customers
WHERE City LIKE 's%'; -- City name starts with 's'

SELECT *
FROM Customers
WHERE City IN ('Paris','London');


--# 7 --------------------------------------------------------------------------
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

SELECT *
FROM Customers
WHERE Country='Germany' AND City='Berlin';

SELECT *
FROM Customers
WHERE City='Berlin' OR City='München';

SELECT *
FROM Customers
WHERE Country='Germany' OR Country='Spain';

SELECT *
FROM Customers
WHERE NOT Country='Germany';

SELECT *
FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT *
FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';


--# 8 --------------------------------------------------------------------------
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

SELECT *
FROM Customers
ORDER BY Country;

SELECT *
FROM Customers
ORDER BY Country DESC; -- DESC := descending order

SELECT *
FROM Customers
ORDER BY Country, CustomerName;

SELECT *
FROM Customers
ORDER BY Country ASC, CustomerName DESC;


-- # 9 -------------------------------------------------------------------------
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

INSERT INTO table_name
VALUES (value1, value2, value3, ...);

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');


-- # 10 ------------------------------------------------------------------------
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;


-- # 11 =-----------------------------------------------------------------------
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

UPDATE Customers
SET ContactName='Juan';


-- # 12 ------------------------------------------------------------------------
DELETE FROM table_name
WHERE condition;

DELETE FROM Customers WHERE
CustomerName='Alfreds Futterkiste';

DELETE FROM table_name;

DELETE FROM Customers;


-- # 13 ------------------------------------------------------------------------
--[SQL Server / MS Access Syntax:]
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

SELECT TOP 3 * FROM Customers;

SELECT TOP 50 PERCENT * FROM Customers;


--[MySQL Syntax:]
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

SELECT * FROM Customers
LIMIT 3;

SELECT TOP 3 * FROM Customers
WHERE Country='Germany';

--[Oracle Syntax:]
SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number;

SELECT * FROM Customers
WHERE ROWNUM <= 3;

SELECT * FROM Customers
WHERE Country='Germany' AND ROWNUM <= 3;


-- # 14 ------------------------------------------------------------------------
SELECT MIN(column_name)
FROM table_name
WHERE condition;

SELECT MAX(column_name)
FROM table_name
WHERE condition;

SELECT MIN(Price) AS SmallestPrice
FROM Products;

SELECT MAX(Price) AS LargestPrice
FROM Products;

-- # 15 ------------------------------------------------------------------------
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

SELECT AVG(column_name)
FROM table_name
WHERE condition;

SELECT SUM(column_name)
FROM table_name
WHERE condition;

SELECT COUNT(ProductID)
FROM Products;

SELECT AVG(Price)
FROM Products;

SELECT SUM(Quantity)
FROM OrderDetails;

-- # 16 ----------------------------------------------------------------------------
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a%';

SELECT *
FROM Customers
WHERE CustomerName LIKE '%a';

SELECT *
FROM Customers
WHERE CustomerName LIKE '%or%';

SELECT *
FROM Customers
WHERE CustomerName LIKE '_r%';

SELECT *
FROM Customers
WHERE CustomerName LIKE 'a__%';

SELECT *
FROM Customers
WHERE ContactName LIKE 'a%o';

SELECT *
FROM Customers
WHERE CustomerName NOT LIKE 'a%';


-- # 17 ----------------------------------------------------------------------------
SELECT *
FROM Customers
WHERE City LIKE 'ber%';

SELECT *
FROM Customers
WHERE City LIKE '%es%';

SELECT *
FROM Customers
WHERE City LIKE '_ondon';

SELECT *
FROM Customers
WHERE City LIKE 'L_n_on';

SELECT *
FROM Customers
WHERE City LIKE '[bsp]%';

SELECT *
FROM Customers
WHERE City LIKE '[a-c]%';

SELECT *
FROM Customers
WHERE City LIKE '[!bsp]%';

SELECT *
FROM Customers
WHERE City NOT LIKE '[bsp]%';

-- # 18 ----------------------------------------------------------------------------
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);

SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);

SELECT *
FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

SELECT *
FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

SELECT *
FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);


-- # 19 ----------------------------------------------------------------------------
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT *
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20 AND CategoryID NOT IN (1,2,3);

SELECT *
FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

SELECT *
FROM Products
WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning"
ORDER BY ProductName;

SELECT *
FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

SELECT *
FROM Orders
WHERE OrderDate BETWEEN #01/07/1996# AND #31/07/1996#;

SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';


-- # 20 ----------------------------------------------------------------------------
SELECT column_name AS alias_name
FROM table_name;

SELECT column_name(s)
FROM table_name AS alias_name;

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers;

SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' +
       Country AS Address
FROM Customers;

SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country)
       AS Address
FROM Customers;

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Around the Horn'
      AND Customers.CustomerID=Orders.CustomerID;


-- # 21 ----------------------------------------------------------------------------

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;


-- # 22 ----------------------------------------------------------------------------

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);


-- # 23 ----------------------------------------------------------------------------

SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;


-- # 24 ----------------------------------------------------------------------------

SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

-- # 25 ----------------------------------------------------------------------------

SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

-- # 26 ----------------------------------------------------------------------------

SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

-- # 27 ----------------------------------------------------------------------------
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2; 

SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2; 

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;


-- # 28 ----------------------------------------------------------------------------


-- # 29 ----------------------------------------------------------------------------


-- # 30 ----------------------------------------------------------------------------


-- # 31 ----------------------------------------------------------------------------


-- # 32 ----------------------------------------------------------------------------


-- # 33 ----------------------------------------------------------------------------


-- # 34 ----------------------------------------------------------------------------


-- # 35 ----------------------------------------------------------------------------


-- # 36 ----------------------------------------------------------------------------


-- # 37 ----------------------------------------------------------------------------

