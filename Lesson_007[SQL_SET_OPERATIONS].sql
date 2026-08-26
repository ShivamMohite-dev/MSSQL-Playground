USE SalesDB



--1] UNION OPERATION
SELECT CustomerID, FirstName, LastName FROM Sales.Customers
UNION
SELECT EmployeeID, FirstName, LastName FROM Sales.Employees;

--2] UNION ALL OPERATION
SELECT CustomerID AS ID, FirstName, LastName FROM Sales.Customers
UNION ALL
SELECT EmployeeID, FirstName, LastName FROM Sales.Employees;

--3] EXCEPT OPERATION
SELECT EmployeeID, FirstName, LastName FROM Sales.Employees
EXCEPT
SELECT CustomerID, FirstName, LastName FROM Sales.Customers;

--4] INTERSECT OPERATION
SELECT EmployeeID, FirstName, LastName FROM Sales.Employees
INTERSECT
SELECT CustomerID, FirstName, LastName FROM Sales.Customers;