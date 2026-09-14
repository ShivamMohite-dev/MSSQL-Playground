USE SalesDB;
--------------------------------VIEWS-----------------------------------
CREATE VIEW Sales.OrderDetails AS(
	SELECT MONTH(OrderDate) AS OrderMonth, SUM(Sales) MonthlySales, COUNT(*) MonthlyOrders, SUM(Quantity) MonthlyQuantity FROM Sales.Orders GROUP BY MONTH(OrderDate)
)
-- CREATE A VIEW THAT PROVIDE DETAILS FROM Orders, Customers, Products, Employees WHICH THE END USERS CAN SEE
CREATE VIEW Sales.AllInOne AS(
	SELECT o.OrderID, o.OrderDate, p.Product, p.Category, c.FirstName AS CustomerName, c.Country, e.FirstName AS EmployeeName, e.Department, o.Quantity, o.Sales FROM Sales.Orders AS o
	LEFT JOIN Sales.Products AS p ON o.ProductID = p.ProductID
	LEFT JOIN Sales.Customers AS c ON o.CustomerID = c.CustomerID
	LEFT JOIN Sales.Employees AS e ON o.SalesPersonID = e.EmployeeID
)
--------------------------------VIEWS-----------------------------------
SELECT OrderMonth, MonthlySales, SUM(MonthlySales) OVER(ORDER BY OrderMonth DESC) RunningTotal FROM Sales.OrderDetails;

SELECT * FROM Sales.AllInOne; -- ABSTRACT VIRTUAL TABLE

-- 1] VIEWS ARE INITIALLY EMPTY VIRTUAL TABLES
-- 2] ONCE A VIEW IS CALLED IN A MAIN QUERY, THE ASSOCIATED QUERY WITH VIEW IS EXECUTED FIRST AND THE RESULT SET OF THAT IS STORED IN THE VIEW AND THEN THAT RESULT SET IS WHAT IS DISPLAYED THROUGH THE MAIN QUERY
-- 3] VIEWS ARE THE HIGHEST LEVEL OF ABSTRACTION IN SQL AND SERVES AS AN POWERFULL ALTERNATIVE FOR CTE'S AS WELL
-- 4] VIEWS ARE USED TO IMPORVE SECURITY AND DATA ACCESSIBILTY WITH USERS
-- 5] VIEWS NEED TO BE EXPLICITLY DROPPED FROM THE DATABASE UNLIKE CTE'S AND SUBQUERIES WHICH WILL BE AUTOMATICALLY DROPPED AFTER EXECUTION
-- 6] VIEWS ARE SLOWER COMPARED TO TABLES DUE TO THE EXTRA LAYER OF ABSTRACTION INVOLVED 

