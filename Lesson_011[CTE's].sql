-- CTE -> Common Table Expressions
-- A CTE is a temprorary named ResultSet (Virtual Table), That can be used multiple times within within your queries

USE SalesDB;
SELECT * FROM Sales.Orders;
SELECT * FROM Sales.Employees;
SELECT * FROM Sales.Products;
SELECT * FROM Sales.Customers;


------------------------------------------------------------------[NON-RECURSIVE CTE's]------------------------------------------------------------------
-- SINGLE STANDALONE CTE : Defined and used Independently 
WITH CTE_TOTAL_SALES AS(
	SELECT CustomerID, SUM(Sales) AS TotalSalesPerCustomer FROM Sales.Orders GROUP BY CustomerID -- CTE QUERY
)
SELECT c.CustomerID, c.FirstName, c.LastName, CTE_1.TotalSalesPerCustomer FROM Sales.Customers AS c -- MAIN QUERY
LEFT JOIN CTE_TOTAL_SALES AS CTE_1 ON c.CustomerID = CTE_1.CustomerID;

-- MULTIPLE STANDALONE CTE's : Defined and used Independently 
WITH CTE_TOTAL_SALES AS(
	SELECT CustomerID, SUM(Sales) AS TotalSalesPerCustomer FROM Sales.Orders GROUP BY CustomerID -- CTE QUERY - 1
),
CTE_NUMBER_OF_ORDERS AS(
	SELECT CustomerID, COUNT(*) AS No_of_orders_per_customer FROM Sales.Orders GROUP BY CustomerID -- CTE QUERY - 2
)
SELECT c.CustomerID, c.FirstName, c.LastName, CTE_1.TotalSalesPerCustomer, CTE_2.No_of_orders_per_customer FROM Sales.Customers AS c -- MAIN QUERY
LEFT JOIN CTE_TOTAL_SALES AS CTE_1 ON c.CustomerID = CTE_1.CustomerID
LEFT JOIN CTE_NUMBER_OF_ORDERS AS CTE_2 ON c.CustomerID = CTE_2.CustomerID;


-- NESTED CTE's : They are not standalone and are dependent on each other
WITH CTE_1 AS ( 
	SELECT CustomerID, SUM(Sales) AS TotalSalesPerCustomer FROM Sales.Orders GROUP BY CustomerID -- # CTE 1 -> TO GET SUM OF SALES PER CUSTOMER
),
CTE_2 AS (
	SELECT CustomerID, MAX(OrderDate) AS LastOrderDatePerCustomer FROM Sales.Orders GROUP BY CustomerID -- # CTE 2 -> TO GET LAST ORDER DATE PER CUSTOMER
),
CTE_3 AS (
	SELECT cte1.CustomerID, cte1.TotalSalesPerCustomer, cte2.LastOrderDatePerCustomer FROM CTE_1 AS cte1 LEFT JOIN CTE_2 AS cte2 ON cte1.CustomerID = cte2.CustomerID -- # CTE 3 -> TO JOIN CTE-1 AND CTE-2 TOGETHER
)
SELECT *, RANK() OVER(ORDER BY TotalSalesPerCustomer) AS CustomerRank FROM CTE_3;
------------------------------------------------------------------[NON-RECURSIVE CTE's]------------------------------------------------------------------

------------------------------------------------------------------[RECURSIVE CTE's]----------------------------------------------------------------------
WITH Series AS(
	-- Anchor Query (will be executed just once)
	SELECT 1 AS CurrentNumber
	
	UNION ALL

	--Recursive Query(will be executed iteratively)
	SELECT CurrentNumber + 1 FROM Series WHERE CurrentNumber < 20
)
SELECT * FROM Series;--OPTION(MAXRECURSION 10)
------------------------------------------------------------------[RECURSIVE CTE's]----------------------------------------------------------------------
