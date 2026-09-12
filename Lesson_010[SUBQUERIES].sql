-- ALL ABOUT SUBQUERIES AND DIFFERENT TYPES OF SUBQUERIES AND IT'S USE CASES -- 
USE SalesDB;
SELECT * FROM Sales.Orders;

-- 1] Scalar Subquery: Where we get just one Scalar output from the subquery results 
SELECT ProductId, AVG(Sales) FROM (
SELECT ProductId, Sales FROM Sales.Orders)
t GROUP BY ProductId HAVING ProductId = 101;

--2] Row Subquery: Multiple rows, single column
SELECT ProductId FROM Sales.Orders;

--3] Table Subquery: Multiple rows, multiple columns
SELECT ProductId, Sales FROM Sales.Orders;

---------------------------------------------------------------------SUBQUERIES USING FROM CLAUSE----------------------------------------------------------------

-- # FIND THE PRODUCTS THAT HAVE PRICE HIGHER THAN THE AVERAGE PRICE OF ALL THE PRODUCTS
SELECT ProductId, Price FROM (
SELECT ProductId, Price, AVG(Price) OVER() AS Avg_Price FROM Sales.Products
) AS T WHERE Price > Avg_Price;


-- # RANK THE CUSTOMERS BASED ON THEIR TOTAL AMOUNT OF SALES
SELECT CustomerId, TotalSales, RANK() OVER(ORDER BY TotalSales DESC) FROM (
SELECT CustomerId, SUM(ISNULL(Sales,0)) AS TotalSales FROM Sales.Orders GROUP BY CustomerId
)T;

---------------------------------------------------------------------SUBQUERIES USING SELECT CLAUSE----------------------------------------------------------------

-- NOTE: ONLY THE SCALAR SUBQUERIES ARE ALLOWED INSIDE THE SELECT CLAUSE
-- #SHOW THE PRODUCT ID, NAME, PRICE ALONG WITH TOTAL NUMBER OF ORDERS;
SELECT ProductID, Product, Price, (SELECT COUNT(*) TotalOrders FROM Sales.Orders)TotalOrders FROM Sales.Products; 


---------------------------------------------------------------------SUBQUERIES IN JOIN STATEMENTS----------------------------------------------------------------

-- #SHOW ALL THE CUSTOMER DETAILS AND FIND THE TOTAL ORDERS OF EACH CUSTOMERS (SUBQUERIES + JOINS)
SELECT c.*, o.TotalOrdersPerCustomer FROM Sales.Customers AS c
LEFT JOIN (SELECT CustomerID, COUNT(OrderID) TotalOrdersPerCustomer FROM Sales.Orders GROUP BY CustomerID) AS o
ON c.CustomerID = o.CustomerID;

---------------------------------------------------------------------SUBQUERIES IN WHERE CLAUSE----------------------------------------------------------------

-- NOTE: ONLY THE SCALAR SUBQUERIES ARE ALLOWED INSIDE THE SELECT CLAUSE
-- #SHOW THE PRODUCT ID, NAME, PRICE WHERE THE PRICE IS HIGHER THAN THE AVERAGE SALES OF ALL THE PRODUCTS;
SELECT ProductID, Product, Price FROM Sales.Products WHERE Price < (SELECT AVG(Sales) as Avg_Sales FROM Sales.Orders);

-- #SHOW THE DETAILS OF THE ORDERS MADE BY THE CUSTOMERS BASED FROM GERMANY
SELECT * FROM Sales.Orders WHERE CustomerID IN (SELECT CustomerID FROM Sales.Customers WHERE Country = 'Germany'); -- version 1 
SELECT * FROM Sales.Orders WHERE CustomerID = ANY (SELECT CustomerID FROM Sales.Customers WHERE Country = 'Germany'); -- version 2
SELECT * FROM Sales.Orders AS o WHERE EXISTS (SELECT * FROM Sales.Customers AS c WHERE Country = 'Germany' AND c.CustomerID = o.CustomerID); -- version 3 [correlated subqueries]

-- #FIND FEMALE EMPLOYEES WHOSE SALARY IS GREATER THAN ANY MALE EMPLOYEE
SELECT * FROM Sales.Employees WHERE Gender = 'F' AND Salary > ANY (SELECT Salary FROM Sales.Employees WHERE Gender = 'M');

-- #FIND THE FEMALE EMPLOYEES WHOSE SALARY IS HIGHER THAN ALL THE MALE EMPLOYEE
SELECT * FROM Sales.Employees WHERE Gender = 'F' AND Salary > ALL (SELECT Salary FROM Sales.Employees WHERE Gender = 'M');

-- #CHECK FROM ONE TABLE WHETHER THE VALUES EXISTS IN ANOTHER TABLE
SELECT CustomerID FROM Sales.Customers AS c WHERE EXISTS (SELECT CustomerID FROM Sales.Orders AS o WHERE o.CustomerID = c.CustomerID); -- Checking existance of rows of one table into another table
