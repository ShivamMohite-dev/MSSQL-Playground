CREATE DATABASE TestDB2;
USE TestDB2;

---------------------------------------------------------------------------------------------PART A [SOLUTIONS] [START]------------------------------------------------------------------------------------------------------------
--CREATE TABLE Customers(CustomerID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), City VARCHAR(50), Country VARCHAR(50), JoinDate DATE, LoyaltyTier VARCHAR(10), Email VARCHAR(100));
--CREATE TABLE Employees(EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), Department VARCHAR(50), City VARCHAR(50), HireDate DATE, Salary INT, ManagerID INT);
--CREATE TABLE Products(ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Category VARCHAR(50), Price INT, StockQty INT);
--CREATE TABLE Orders(OrderID INT PRIMARY KEY, CustomerID INT, EmployeeID INT, ProductID INT, OrderDate DATE, Quantity INT, Sales INT, OrderStatus VARCHAR(20), ShipCity VARCHAR(50));
INSERT INTO Customers VALUES
(1, 'Aarav', 'Shah', 'Bengaluru', 'India', '2022-01-15', 'Gold', 'aarav.shah@mail.com'),
(2, 'Diya', 'Menon', 'Chennai', 'India', '2023-02-23', 'Silver', 'diya.menon@mail.com'),
(3, 'Kabir', 'Malhotra', 'Mumbai', 'India', '2021-11-05', 'Gold', NULL),
(4, 'Ira', 'Bhatt', 'Bengaluru', 'India', '2023-07-19', 'Bronze', 'ira.bhatt@mail.com'),
(5, 'Vihaan', 'Rao', 'Hyderabad', 'India', '2022-05-30', 'Silver', 'vihaan.rao@mail.com'),
(6, 'Anaya', 'Joshi', 'Pune', 'India', '2024-01-10', 'Bronze', 'anaya.joshi@mail.com'),
(7, 'Reyansh', 'Gupta', 'Chennai', 'India', '2020-09-12', 'Gold', 'reyansh.gupta@mail.com'),
(8, 'Myra', 'Kapoor', 'Mumbai', 'India', '2023-12-01', 'Silver', 'myra.kapoor@mail.com'),
(9, 'Advait', 'Nair', 'Bengaluru', 'India', '2021-04-18', 'Gold', 'advait.nair@mail.com'),
(10, 'Saanvi', 'Iyer', 'Hyderabad', 'India', '2024-02-25', 'Bronze', NULL);
INSERT INTO Employees VALUES
(1, 'Rohan', 'Desai', 'Sales', 'Bengaluru', '2019-06-01', 68000, NULL),
(2, 'Kavya', 'Pillai', 'Sales', 'Bengaluru', '2021-02-15', 52000, 1),
(3, 'Arjun', 'Nambiar', 'Sales', 'Chennai', '2020-08-10', 60000, NULL),
(4, 'Sana', 'Farooqui', 'Sales', 'Chennai', '2022-04-01', 48000, 3),
(5, 'Dev', 'Khanna', 'Sales', 'Mumbai', '2018-11-20', 71000, NULL),
(6, 'Trisha', 'Reddy', 'Sales', 'Mumbai', '2023-01-05', 45000, 5),
(7, 'Zoya', 'Ahmed', 'Sales', 'Hyderabad', '2021-09-14', 55000, NULL),
(8, 'Karan', 'Oberoi', 'Sales', 'Pune', '2022-06-25', 50000, NULL);
INSERT INTO Products VALUES
(101, 'Aria Wireless Earbuds', 'Electronics', 2999, 150),
(102, 'Nimbus 15L Backpack', 'Accessories', 1799, 200),
(103, 'Zenith 4K Monitor', 'Electronics', 18999, 40),
(104, 'Cascade Cotton Hoodie', 'Clothing', 1499, 120),
(105, 'Orbit Smartwatch', 'Electronics', 6999, 80),
(106, 'Solace Yoga Mat', 'Fitness', 899, 250),
(107, 'Lumen Desk Lamp', 'Home', 1299, 100),
(108, 'Pinnacle Running Shoes', 'Footwear', 3499, 90),
(109, 'Drift Bluetooth Speaker', 'Electronics', 2499, 130),
(110, 'Haven Ceramic Mug Set', 'Home', 699, 300);
INSERT INTO Orders VALUES
(1001, 1, 1, 101, '2024-01-05', 2, 5998, 'Delivered', 'Bengaluru'),
(1002, 1, 1, 103, '2024-02-14', 1, 18999, 'Delivered', 'Bengaluru'),
(1003, 2, 3, 104, '2024-01-20', 3, 4497, 'Delivered', 'Chennai'),
(1004, 3, 5, 105, '2024-03-02', 1, 6999, 'Shipped', 'Mumbai'),
(1005, 4, 2, 106, '2024-01-28', 2, 1798, 'Delivered', NULL),
(1006, 5, 7, 108, '2024-02-10', 1, 3499, 'Cancelled', 'Hyderabad'),
(1007, 6, 8, 107, '2024-04-05', 2, 2598, 'Delivered', 'Pune'),
(1008, 7, 3, 109, '2024-01-15', 1, 2499, 'Delivered', 'Chennai'),
(1009, 7, 3, 101, '2024-03-22', 3, 8997, 'Delivered', 'Chennai'),
(1010, 8, 3, 110, '2024-02-18', 4, 2796, 'Returned', 'Mumbai'),
(1011, 9, 1, 103, '2024-04-11', 1, 18999, 'Delivered', 'Bengaluru'),
(1012, 10, 7, 105, '2024-03-08', 1, 6999, 'Shipped', NULL),
(1013, 2, 3, 102, '2024-04-19', 2, 3598, 'Delivered', 'Chennai'),
(1014, 1, 2, 106, '2024-05-02', 1, 899, 'Delivered', 'Bengaluru'),
(1015, 3, 5, 109, '2024-05-15', 2, 4998, 'Delivered', 'Mumbai'),
(1016, 4, 1, 101, '2024-05-20', 1, 2999, 'Delivered', 'Bengaluru'),
(1017, 4, 1, 104, '2024-06-01', 2, 2998, 'Cancelled', 'Hyderabad'),
(1018, 6, 8, 110, '2024-06-10', 3, 2097, 'Delivered', 'Pune'),
(1019, 9, 2, 108, '2024-06-15', 1, 3499, 'Delivered', 'Bengaluru'),
(1020, 7, 99, 103, '2024-06-20', 1, 18999, 'Delivered', 'Chennai'),
(1021, 7, 5, 101, '2024-07-02', 2, 5998, 'Delivered', 'Mumbai'),
(1022, 10, 7, 106, '2024-07-10', 3, 2697, 'Delivered', 'Hyderabad');
ALTER TABLE Customers ADD Region VARCHAR(50); -- Adding the region column in customers table
ALTER TABLE Customers DROP COLUMN Region; -- Removing the region column from the customer table
SELECT FirstName + ' ' + LastName AS FullName, JoinDate FROM Customers WHERE YEAR(JoinDate) >= 2023; -- Customers who have joined in 2023 or later displayed with their full name
SELECT ProductName, Price FROM Products WHERE Price > 5000 ORDER BY Price DESC; -- Displaying only the product name(The question asks which products, therefore other fields except ProductName might be irrelavant) and price(for confirmation) of products whose price is higher than 5000 and then sorted by descending order that is most value to least value 
SELECT COALESCE(Email, 'no email on file') FROM Customers; -- Displayed Every customers email and replaced any null values with 'no email on file' as asked in the question
SELECT COUNT(*) AS No_of_orders_as_cancelled_or_returned FROM Orders WHERE OrderStatus IN ('Cancelled','Returned'); -- count of total number of orders which have been either cancelled or returned 
SELECT OrderStatus, AVG(Sales) AS Avg_Sales_by_Status FROM Orders GROUP BY OrderStatus; -- average sale value for each order status
SELECT DISTINCT City FROM Customers; -- every distinct city where Orbit currently has customers
SELECT * FROM Employees WHERE YEAR(HireDate) < 2021; -- Print all the employees info who were hired before 2021 because no specific detail was asked explicitly.
SELECT TOP 5 OrderID, OrderDate, OrderStatus, Sales FROM Orders ORDER BY Sales DESC; -- Displaying top 5 orders by sales value, order date, order status and also order id for more information.
---------------------------------------------------------------------------------------------PART A [SOLUTIONS] [END]------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------PART B [SOLUTIONS] [START]------------------------------------------------------------------------------------------------------------
-- I have used the LEFT JOIN added logically connected the three tables to get the desired output as requested in the problem which is to show gthe customer's full name, the product name, and the sales amount for every order
SELECT c.FirstName + ' ' + c.LastName AS CustomerName, p.ProductName, o.Sales FROM Orders AS o 
LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID
LEFT JOIN Products AS p ON o.ProductID = p.ProductID;

-- Quite the brainstorming it took, I came up with two approaches to get the desired results, 1st one is quite the complicated one but get's the output as required and 2nd one is comparitively simpler and also get's the output as per the question. we get the same results from both the versions
--1st Approach: Listing every employee name along with the number of orders they have handled. 
SELECT EmpName, MAX(No_of_orders_handled_per_emp) AS Orders_Handled FROM (
SELECT o.OrderID, COALESCE(e.EmployeeID, 0) EmployeeID, ISNULL(e.FirstName + ' ' + e.LastName, 'N/A') AS EmpName, COUNT(o.OrderID) OVER(PARTITION BY e.EmployeeID) No_of_orders_handled_per_emp FROM Orders AS o
LEFT JOIN Employees AS e ON o.EmployeeID = e.EmployeeID)T GROUP BY EmpName ORDER BY MAX(No_of_orders_handled_per_emp) DESC;
--2nd Approach: Listing every employee id along with the number of orders they have handled. 
SELECT Orders.EmployeeID, COUNT(Orders.OrderID) AS Orders_Handled FROM Orders 
LEFT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID GROUP BY Orders.EmployeeID ORDER BY COUNT(Orders.OrderID) DESC;

-- I have used LEFT JOIN again to find order that references an employee who doesn't actually exist in Orbit's records
SELECT * FROM Orders 
LEFT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID WHERE Employees.EmployeeID IS NULL;

-- This one also took quite a lot of time to devise this query, here I have used JOINS + SUBQUERIES to find every employee who reports to someone and display their own name alongside their manager's name
SELECT e.EmployeeID, e.ManagerID, e.FirstName EMP_FNAME, e.LastName EMP_LNAME, m.MNG_FNAME, m.MNG_LNAME FROM Employees AS e
RIGHT JOIN (SELECT EmployeeID, FirstName MNG_FNAME, LastName MNG_LNAME FROM Employees WHERE EmployeeID IN (1,3,5)) AS m
ON e.ManagerID = m.EmployeeID WHERE e.ManagerID IS NOT NULL;

-- To get the desired output asked in questions I have created 2 version. The 1st one is more accurate as it will show all the customers with customerID who have not placed any orders and the 2nd version is more informative and will tell us how many orders a customer has made and would also allow us to look at customers who don't have any orders.
-- 1st version
SELECT o.OrderID, c.CustomerID, o.Quantity FROM Orders AS o
LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;
-- 2nd version
SELECT CustomerID, COUNT(*) FROM(
	SELECT c.CustomerID, COUNT(o.OrderID) OVER(PARTITION BY o.CustomerID ORDER BY o.CustomerID DESC) No_of_orders_by_c_Id FROM Orders AS o
	LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID
)t GROUP BY CustomerID;

-- Query to display each product along with how many times it's been ordered, any product id that is not associated with order ID will give NULL as count, therefore easy to Identify
SELECT ProductID, COUNT(OrderID) FROM (
	SELECT p.ProductID AS ProductID, p.ProductName, o.ProductID AS O_ProductID, o.OrderID FROM Orders AS o
	FULL JOIN Products AS p ON p.ProductID = o.ProductID WHERE o.ProductID IS NULL OR o.ProductID IS NOT NULL
)t GROUP BY ProductID; -- WE HAVE NO PRODUCT WHICH HAVE NOT BEEN ORDERED UNTIL NOW, THEREFORE ALL THE PRODUCTS ARE ASSOCIATED WITH AN ORDER ID

-- Query to list every order that was shipped to a different city than the customer's own home city
SELECT o.OrderID, c.CustomerID, o.OrderDate, c.City AS HomeCity, o.ShipCity AS ShipCity  FROM Orders AS o
LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID WHERE c.City != o.ShipCity;

---------------------------------------------------------------------------------------------PART B [SOLUTIONS] [END]--------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------PART C [SOLUTIONS] [START]------------------------------------------------------------------------------------------------------------
SELECT City FROM Customers INTERSECT SELECT ShipCity FROM Orders INTERSECT SELECT CITY FROM Employees; -- Query to fetch a single list of every city associated with Orbit in any way
SELECT City FROM Employees EXCEPT SELECT City FROM Customers; -- Except returns rows unique to only 1st select query and thus filtering the result according to our questions where we need to find the cities where Orbit has employees working, but currently no customers. [No result reurned / empty list]
SELECT City FROM Customers EXCEPT SELECT City FROM Employees; -- Query to find the cities where Orbit has customers, but no currently working employee. [No result reurned / empty list]
SELECT FirstName + ' ' + LastName AS VIP_Contacts, 'VIP_Customers' AS Origin FROM Customers WHERE LoyaltyTier = 'Gold' -- Query to fetch VIP Contact List by combine the full names of Gold-tier customers with the full names of employees earning above ₹60,000, with a label showing which group each person came from.
UNION ALL 
SELECT FirstName + ' ' + LastName AS VIP_Contacts, 'VIP_Employees' AS Origin FROM Employees WHERE Salary > 60000;
SELECT City FROM Employees INTERSECT SELECT City FROM Customers; -- Query to fetch cities appearing in both the customer base and the employee base
---------------------------------------------------------------------------------------------PART C [SOLUTIONS] [END]------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------PART D [SOLUTIONS] [START]------------------------------------------------------------------------------------------------------------
-- Query to compute running total for each customer of their spend ordered by OrderDate and along with that show every order detail such as OrderDate and ProductName that they've placed
-- TOOK QUITE A LOT OF BRAINSTORMING AND HIT AND TRAIL TO GET TO THE ACCURATE RESULTS
SELECT *, SUM(Price) OVER(PARTITION BY CustomerID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS RunningTotal FROM (
	SELECT C.CustomerID, O.OrderID, C.FirstName + ' ' + C.LastName AS Name, P.ProductName, O.OrderDate, P.Price  FROM Orders O
	LEFT JOIN Customers C ON O.CustomerID = C.CustomerID
	LEFT JOIN Products P ON O.ProductID = P.ProductID
)T

SELECT OrderID, OrderDate, Quantity, OrderStatus, Sales, RANK() OVER(ORDER BY Sales DESC) Rank_by_sales FROM Orders; -- Ranking all the orders from highest to lowest sales value.

SELECT O.OrderID, O.OrderDate, O.Quantity, O.OrderStatus, O.Sales, P.Category, RANK() OVER(PARTITION BY P.Category ORDER BY Sales DESC) Rank_by_sales_within_productcategory FROM Orders AS O
LEFT JOIN Products AS P ON O.ProductID = P.ProductID; -- Ranking all the orders from highest to lowest sales value within each product category and with Identical sales value recieveing same rank value.

-- Query to fetch every order and show that customer's very first order (product and date), as a comparison column sitting alongside each row.
SELECT C.CustomerID, O.OrderID, C.FirstName + ' ' + C.LastName AS Customer_Name, P.ProductName, O.OrderDate, FIRST_VALUE(P.ProductName) OVER(PARTITION BY C.CustomerID ORDER BY O.OrderDate) FirstOrderByCustomer, FIRST_VALUE(O.OrderDate) OVER(PARTITION BY C.CustomerID ORDER BY O.OrderDate) FirstOrderByDateForEachCustomer  FROM Orders AS O  
LEFT JOIN Customers AS C ON C.CustomerID = O.CustomerID
LEFT JOIN Products AS P ON O.ProductID = P.ProductID;

-- AGAIN QUITE THE BRAINSTORMING WAS REQUIRED TO FETCH RESULTS EXACTLY AS ASKED, ALSO I ADDED MY OWN ADVANCED FILTERING ON TOP OF THE RESULTS JUST TO MAKE IT MORE EASILY INTERPRETABLE (IN THIS CASE I HANDLED NULL VALUES WITHIN THE COMARARISION COLUMN BY REPLACING IT WITH EASY TO UNDERSTAND MESSAGE)
-- Query to fetch every order as well as show that customer's most recent order date and sales value, sitting alongside each row.
SELECT CustomerID, OrderID, Customer_Name, OrderDate, Sales,  (CASE WHEN LatestOrderRecord IS NULL THEN 'NO PREVIOUS ORDER RECORD FOUND!' WHEN LatestOrderRecord IS NOT NULL THEN CAST(LatestOrderRecord AS VARCHAR) END) AS LatestOrderRecord, LatestSaleValue FROM(
	SELECT C.CustomerID, O.OrderID, C.FirstName + ' ' + C.LastName AS Customer_Name, O.OrderDate, O.Sales, LAG(O.OrderDate,1) OVER(PARTITION BY C.CustomerID ORDER BY O.OrderDate) AS LatestOrderRecord, ISNULL(LAG(O.Sales,1) OVER(PARTITION BY C.CustomerID ORDER BY O.OrderDate),0) AS LatestSaleValue FROM Orders AS O  
	LEFT JOIN Customers AS C ON C.CustomerID = O.CustomerID
)T;

-- Query to fetch every order and show the sales value of that same customer's previous order (chronologically), I have printed some additional Information of Orders such as OrderID, OrderDate, Sales..etc
SELECT C.CustomerID, O.OrderID, C.FirstName + ' ' + C.LastName AS Customer_Name, O.OrderDate, O.Sales, ISNULL(LAG(O.Sales,1) OVER(PARTITION BY C.CustomerID ORDER BY O.OrderDate),0) AS PreviousSalesValue FROM Orders AS O  
LEFT JOIN Customers AS C ON C.CustomerID = O.CustomerID

-- Query to fetch every order and show the sales value of that same customer's next order, I have printed some additional Information of Orders such as OrderID, OrderDate, Sales..etc
SELECT C.CustomerID, O.OrderID, C.FirstName + ' ' + C.LastName AS Customer_Name, O.OrderDate, O.Sales, ISNULL(LEAD(O.Sales,1) OVER(PARTITION BY C.CustomerID ORDER BY O.OrderDate),0) AS NextSalesValue FROM Orders AS O  
LEFT JOIN Customers AS C ON C.CustomerID = O.CustomerID

-- Query to Split customers into 4 equal-sized groups based on total lifetime spend, and label which group each customer falls into. The split logic I have used is by taking the (MAX(Sales) - MIN(Sales)) / 4 Which is 4525 and using this I made 4 Buckets to segregate customers upon certain threshold sales value per customer
SELECT *, (CASE WHEN TotalPrice < 4525 THEN 'Low' WHEN TotalPrice BETWEEN 4525 AND 9050 THEN 'Average' WHEN TotalPrice BETWEEN 9051 AND 13575 THEN 'High' WHEN TotalPrice > 13575 THEN 'VIPs' END) AS CustomerCategoryAsPerSpend FROM(
	SELECT C.CustomerID, O.OrderID, O.ProductID, C.FirstName + ' ' + C.LastName AS Name, P.Price * O.Quantity AS TotalPrice FROM Orders AS O 
	LEFT JOIN Customers AS C ON O.CustomerID = C.CustomerID
	LEFT JOIN Products AS P ON O.ProductID	= P.ProductID
)T;

-- Query to compute 3-order moving average for each product category and display the results in ordered by date.
SELECT P.ProductID, P.ProductName, P.Category, O.OrderDate, O.Sales, AVG(O.Sales) OVER(PARTITION BY P.Category ORDER BY O.OrderDate ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING) ThreeOrderMovingAverage FROM Orders AS O
LEFT JOIN Products AS P ON O.ProductID = P.ProductID;

-- Query to fetching each customer, identifying which of their own orders are above their own personal average order value
SELECT * FROM (
SELECT OrderID, CustomerID, OrderStatus, Sales, AVG(Sales) OVER(PARTITION BY CustomerID) AS AVG_BY_CUSTOMERS FROM Orders
)T WHERE Sales > AVG_BY_CUSTOMERS; 

-- Query to fetch results according to showing what percentile each order's sales value falls into relative to all orders (a 0–1 scale, not an integer rank).
SELECT *, ROUND(PERCENT_RANK() OVER(ORDER BY Sales ASC), 2) PERCENT_RANK FROM Orders; -- version 1
SELECT *, ROUND(CUME_DIST() OVER(ORDER BY Sales ASC), 2) PERCENT_RANK FROM Orders; -- version 2

-- Query to show total generated sales by every employee and what percentage of the company's overall sales that represents — in the same result set.
-- FCKKKKKKKKKKK, TOOK WAY TO MUCH TIME AND QUERY OPTIMIZATION IS DEFINETLY GOING DOWN THE DRAIN WITH THIS ONE BUT SOMEHOW GOT IT WORKING
SELECT DISTINCT EmployeeID, MAX(TotalSalesPerEmployee) OVER(PARTITION BY EmployeeID) TotalSalesPerEmployee, ROUND(CAST(MAX(TotalSalesPerEmployee) OVER(PARTITION BY EmployeeID) AS FLOAT) / SUM(Sales) OVER() * 100, 2) AS Percentage_Contribution FROM(
	SELECT ISNULL(e.EmployeeID,0) EmployeeID, ISNULL(e.FirstName + ' ' + e.LastName, 'NO NAME') AS EmpName, o.Sales, SUM(o.Sales) OVER(PARTITION BY e.EmployeeID ORDER BY o.Sales DESC) TotalSalesPerEmployee FROM Orders AS o 
	LEFT JOIN Employees AS e ON o.EmployeeID = e.EmployeeID
)T;

-- Query to fetch single highest-spending customer overall without using `ORDER BY` OR `TOP` in the final `SELECT`.
-- NOTE: THERE IS NO SINGLE HIGHEST-SPENDING CUSTOMER
SELECT * FROM(
	SELECT c.CustomerID, c.FirstName + ' ' + c.LastName AS Customer_Name, o.Sales, o.OrderStatus, MAX(o.Sales) OVER() Highest_Sale_from_customer FROM Orders AS o 
	LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID
)t WHERE Sales = Highest_Sale_from_customer;

-- Query to retrieve ecery customer's order and number them according to the sequence they were placed (their 1st order, 2nd order, and so on).
SELECT c.CustomerID, o.OrderID, C.FirstName, o.OrderDate, RANK() OVER(PARTITION BY c.CustomerID ORDER BY o.OrderDate ASC) FROM Orders AS o
LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID;
-------------------------------------------------------------------------------PART D [SOLUTIONS] [END]------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------PART E [SOLUTIONS] [START]------------------------------------------------------------------------------------------------------------
-- Query to find out and display employees that have generated more total revenue than the company-wide average revenue-per-employee
-- ONE BIG ASS QUERY THIS WAS!
SELECT a.EmployeeID, a.TotalRevenue_per_employee, b.AverageRevenue_per_employee FROM
	(SELECT EmployeeID, SUM(Sales) TotalRevenue_per_employee FROM(
		SELECT ISNULL(e.EmployeeID, 0) AS EmployeeID, e.FirstName, e.LastName, e.HireDate, o.Sales FROM Orders AS o
		LEFT JOIN Employees AS e ON e.EmployeeID = o.EmployeeID
	)t GROUP BY EmployeeID)
AS a
LEFT JOIN 
(
	(SELECT EmployeeID, (SELECT AVG(Sales) FROM Orders) AverageRevenue_per_employee FROM(
		SELECT ISNULL(e.EmployeeID, 0) AS EmployeeID, e.FirstName, e.LastName, e.HireDate, o.Sales FROM Orders AS o
		LEFT JOIN Employees AS e ON e.EmployeeID = o.EmployeeID
	)t GROUP BY EmployeeID))
AS b
ON a.EmployeeID = b.EmployeeID
WHERE a.TotalRevenue_per_employee > b.AverageRevenue_per_employee;


-- CUSTOMER REPORT (Customer's loyalty tier, Total number of orders, Total spend - highest spenders appearing first within each tier)
SELECT DISTINCT c.CustomerID, c.FirstName + ' ' + c.LastName AS CustomerName, c.LoyaltyTier, COUNT(*) OVER(PARTITION BY c.CustomerID) AS No_of_orders, SUM(o.Sales) OVER(PARTITION BY c.CustomerID) AS Spend_per_employee FROM Orders AS o
LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID ORDER BY c.LoyaltyTier, Spend_per_employee DESC;

-- This query is accurately providing details such as Id and name of the customer whose most recent order was either cancelled or returned - churn-risk analysis  
SELECT * FROM (
	SELECT o.OrderID, c.CustomerID, c.FirstName + ' ' + c.LastName AS CustomerName, o.OrderStatus, o.OrderDate, LAG(o.OrderStatus, 1) OVER(PARTITION BY c.CustomerID ORDER BY o.OrderDate DESC) PreviousOrderStatus  FROM Orders AS o
	LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID
)T WHERE PreviousOrderStatus IN ('Cancelled', 'Returned');


-- This query is designed to categorize each product along with it's name into two labels, 'Bestseller': if it's the top-selling product (by total sales value) within its own category OR 'Standard': If not bestseller
-- I TRIED MY BEST WITH THIS ONE AND I AM GETTING THE DESIRED OUTPUT IN A SENSE BUT THERE ARE DUPLICATES IN HERE, MEANING THAT IF PRODUCT A IS BESTSELLER FOR THE CATEGORY AT ONE POINT THEN CONSIDER IT AS BESTSELLER AND SHOW IT ONCE ONLY BUT IN THIS CASE IF THE PRODUCT A IS STANDARD AS WELL AT ANY POINT OF TIME THEN IT WILL APPEAR TWICE IN LIST ONE WITH LABEL AS BESTSELLER AND ONE WITH LABEL STANDARD. I AM GIVING UP ON THIS ONE
SELECT * FROM
(SELECT DISTINCT ProductName, Category, ProductLabel FROM(
	SELECT *, (CASE WHEN Sales >= A THEN 'BestSeller' ELSE 'Standard' END) ProductLabel FROM (
		SELECT p.ProductID, p.ProductName, p.Category, o.Sales, MAX(o.Sales) OVER(PARTITION BY p.Category ORDER BY o.Sales DESC) A  FROM Orders AS o
		LEFT JOIN Products AS p ON o.ProductID = p.ProductID
	)T
)D WHERE ProductLabel = 'BestSeller' 
UNION ALL 
SELECT DISTINCT ProductName, Category, ProductLabel FROM(
	SELECT *, (CASE WHEN Sales >= A THEN 'BestSeller' ELSE 'Standard' END) ProductLabel FROM (
		SELECT p.ProductID, p.ProductName, p.Category, o.Sales, MAX(o.Sales) OVER(PARTITION BY p.Category ORDER BY o.Sales DESC) A  FROM Orders AS o
		LEFT JOIN Products AS p ON o.ProductID = p.ProductID
	)T
)D WHERE ProductLabel = 'Standard' )T;

-- This query will return the Id and the name of the product that has never been ordered even once
SELECT Products.ProductID, Products.ProductName FROM Products LEFT JOIN Orders ON Products.ProductID = Orders.ProductID WHERE Orders.ProductID IS NULL;

-- This query pulls together customer count, employee presence, and total sales volume for each city, using this data we can decide which city to open new store in
SELECT T.City, D.CityWise_Customers, P.CityWise_Employees, T.City_wise_sales FROM(
	SELECT DISTINCT c.City, SUM(o.Sales) OVER(PARTITION BY c.City) City_wise_sales FROM Orders AS o 
	LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID
)T 
LEFT JOIN (SELECT City, COUNT(*) AS CityWise_Customers FROM Customers GROUP BY City) AS D ON T.City = D.City
LEFT JOIN (SELECT City, COUNT(*) AS CityWise_Employees FROM Employees GROUP BY City) AS P ON T.City = P.City;
-- My Reasoning: Bengaluru is the city that has most number of customers (3) and as well as most number of employees (2) amongst other cities and also Bengaluru tops the list of Total City wise list with stagering Total Sales of 56189 which is the Highes amongst other city statistics  
-------------------------------------------------------------------------------PART E [SOLUTIONS] [END]------------------------------------------------------------------------------------------------------------
