USE SalesDB;

--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Creating a new table Sales.DBCustomers by loading a contents of Sales.Customers into it for understanding Indexing from scratch
--------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * INTO Sales.DBCustomers FROM Sales.Customers; -- THIS NEW TABLE Sales.DBCustomers WILL BE A PURE HEAP TABLE(No Clustered Indexing present at moment)
SELECT t.name as Name, i.type_desc AS IndexType FROM sys.indexes i RIGHT JOIN sys.tables AS t ON i.object_id = t.object_id; -- WITH THIS QUERY WE CAN CHECK TO CONFIRM THAT OUR TABLE IS A HEAP TABLE OR NOT
--------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
																				-- CLUSTERED INDEX
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE CLUSTERED INDEX idx_DBCustomers_customerId ON Sales.DBCustomers(CustomerID); -- Creating a clustered index on the CustomerID column of the Sales.DBCustomers table
DROP INDEX idx_DBCustomers_customerId ON Sales.DBCustomers; -- Query to drop the Index
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
																				-- NON-CLUSTERED INDEX
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX idx_DBCustomers_FirstName ON Sales.DBCustomers(FirstName); -- Creating a non-clustered index on the FirstName column of the Sales.DBCustomers table
CREATE NONCLUSTERED INDEX idx_DBCustomers_LastName ON Sales.DBCustomers(LastName); -- Creating a non-clustered index on the LastName column of the Sales.DBCustomers table
CREATE NONCLUSTERED INDEX idx_DBCustomers_CountryScore ON Sales.DBCustomers(Country, Score); -- Creating a non-clustered composite index(Adding more than one column) with Country and Score column of the Sales.DBCustomers table
DROP INDEX idx_DBCustomers_FirstName ON Sales.DBCustomers; -- Query to drop the Index
DROP INDEX idx_DBCustomers_LastName ON Sales.DBCustomers; -- Query to drop the Index
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------