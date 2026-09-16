USE SalesDB;

-- Stored Procedures allows us to inject programability logic in SQL --

-- STEP 1: PREPARE SQL QUERY
SELECT o.OrderID, c.FirstName AS CustomerName, c.Country, p.Product, o.OrderDate, p.Category, o.Quantity, p.Price, e.FirstName AS EmployeeName, e.Department FROM Sales.Orders AS o
LEFT JOIN Sales.Products AS p ON o.ProductID = p.ProductID
LEFT JOIN Sales.Customers AS c ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Employees AS e ON o.SalesPersonID = e.EmployeeID;

-- STEP 2: TURN THE SQL QUERY INTO STORED PROCEDURE 
CREATE PROCEDURE Sales.AllInOneSummary @Country NVARCHAR(50) = 'USA' AS
BEGIN
	PRINT 'QUICK GLIMPSE OF ENTIRE DATA MODEL MADE BY COMBINING INFORMATION FROM ALL 4 TABLES';
	SELECT o.OrderID, c.FirstName AS CustomerName, c.Country, p.Product, o.OrderDate, p.Category, o.Quantity, p.Price, e.FirstName AS EmployeeName, e.Department FROM Sales.Orders AS o
	LEFT JOIN Sales.Products AS p ON o.ProductID = p.ProductID
	LEFT JOIN Sales.Customers AS c ON o.CustomerID = c.CustomerID
	LEFT JOIN Sales.Employees AS e ON o.SalesPersonID = e.EmployeeID
	WHERE c.Country = @Country;
END

-- STEP 3: EXECUTE THE STORED PROCEDURE
EXEC Sales.AllInOneSummary @Country = 'Germany'
EXEC Sales.AllInOneSummary @Country = 'USA'



-------------------------------------------------------------VARIABLES & PRINT STATEMENTS IN STORED PROCEDURE-------------------------------------------------------------

CREATE PROCEDURE Sales.PracticeProcedure AS
BEGIN
	PRINT 'TASK: WE NEED TO FIND NUMBER OF ORDERS MADE IN THE 1ST MONTH';
	DECLARE @Month INT;
	DECLARE @MonthValue INT;
	SELECT @Month = MONTH(OrderDate), @MonthValue = COUNT(OrderID) FROM Sales.Orders GROUP BY MONTH(OrderDate) HAVING MONTH(OrderDate) = 1;

	SELECT MONTH(OrderDate) OrderMonth, COUNT(OrderID) NumberOfOrders FROM Sales.Orders GROUP BY MONTH(OrderDate) HAVING MONTH(OrderDate) = 1;

	PRINT 'Month ->' + CAST(@Month AS VARCHAR);
	PRINT 'Orders ->' + CAST(@MonthValue AS VARCHAR);
END

EXEC Sales.PracticeProcedure;

DROP PROCEDURE Sales.PracticeProcedure;
-------------------------------------------------------------VARIABLES & PRINT STATEMENTS IN STORED PROCEDURE-------------------------------------------------------------

-------------------------------------------------------------ERROR HANDLING IN STORED PROCEDURE-------------------------------------------------------------
CREATE PROCEDURE Sales.SimpleProcedure AS
BEGIN
	PRINT 'TASK: WE NEED TO FIND NUMBER OF ORDERS MADE IN THE 1ST MONTH';
	DECLARE @Month INT;
	DECLARE @MonthValue INT;
	SELECT @Month = MONTH(OrderDate), @MonthValue = COUNT(OrderID) FROM Sales.Orders GROUP BY MONTH(OrderDate) HAVING MONTH(OrderDate) = 1;

	BEGIN TRY
		PRINT 'Month ->' + @Month;
		PRINT 'Orders ->' + @MonthValue;
	END TRY

	BEGIN CATCH
		PRINT 'INCOMPATABLE DATATYPE OPERATION FOUND, REVIEW THE CODE PLEASE';
	END CATCH
END

EXEC Sales.SimpleProcedure;

DROP PROCEDURE Sales.SimpleProcedure;
-------------------------------------------------------------ERROR HANDLING IN STORED PROCEDURE-------------------------------------------------------------

