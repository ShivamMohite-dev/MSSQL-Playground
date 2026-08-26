CREATE DATABASE TestDB1;
USE TestDB1;

-- TASK GROUP 1 -> DDL COMMANDS -- 

--1] CREATE TABLE QUERIES FOR BOTH 'EMPLOYEE' AND 'PROJECT'
--CREATE TABLE EMPLOYEE (EmployeeID INT PRIMARY KEY, FirstName VARCHAR(8), LastName VARCHAR(8), Department VARCHAR(15), City VARCHAR(11), Country VARCHAR(5), HireDate DATE, Salary INT, ManagerID INT, Email VARCHAR(40));
--CREATE TABLE PROJECT (ProjectID INT PRIMARY KEY, ProjectName VARCHAR(40), EmployeeID INT, ProjectLocation VARCHAR(20), Budget INT, StartDate DATE, EndDate DATE, Status VARCHAR(10));
--2] INSERT INTO QUERY TO LOAD ALL THE GIVEN DATA INTO THE TABLES
INSERT INTO EMPLOYEE VALUES 
(1, 'Rohan', 'Mehta', 'Data Science', 'Bengaluru', 'India', '2021-03-15', 85000, NULL, 'rohan.mehta@corp.com'),
(2, 'Ananya', 'Sharma', 'Data Science', 'Bengaluru', 'India', '2022-07-01', 62000, 1, 'ananya.sharma@corp.com'),
(3, 'Kabir', 'Nair', 'IT', 'Hyderabad', 'India', '2020-01-10', 78000, NULL, 'kabir.nair@corp.com'),
(4, 'Priya', 'Iyer', 'IT', 'Hyderabad', 'India', '2023-02-20', 54000, 3, NULL),
(5, 'Arjun', 'Verma', 'Marketing', 'Mumbai', 'India', '2019-11-05', 71000, NULL, 'arjun.verma@corp.com'),
(6, 'Sneha', NULL, 'Marketing', 'Mumbai', 'India', '2024-05-18', 45000, 5, 'sneha@corp.com'),
(7, 'Farhan', 'Sheikh', 'Sales', 'Delhi', 'India', '2018-06-23', 92000, NULL, 'farhan.sheikh@corp.com'),
(8, 'Meera', 'Pillai', 'Sales', 'Delhi', 'India', '2021-09-09', 58000, 7, 'meera.pillai@corp.com'),
(9, 'Devansh', 'Rao', 'Data Science', 'Pune', 'India', '2023-12-01', 67000, 1, 'devansh.rao@corp.com'),
(10, 'Ishita', 'Kapoor', 'HR', 'Mumbai', 'India', '2020-08-14', 49000, NULL, 'ishita.kapoor@corp.com'),
(11, 'Yusuf', 'Khan', 'IT', 'Chennai', 'India', '2022-03-30', 60000, 3, 'yusuf.khan@corp.com'),
(12, 'Tara', 'Bose', 'Finance', 'Kolkata', 'India', '2017-10-02', 105000, NULL, 'tara.bose@corp.com');
INSERT INTO PROJECT VALUES
(101, 'Customer Churn Model', 1, 'Bengaluru', 500000, '2024-01-10', '2024-06-15', 'Completed'),
(102, 'Inventory Dashboard', 3, 'Nagpur', 300000, '2024-03-01', NULL, 'Ongoing'),
(103, 'Social Media Campaign', 5, 'Mumbai', 200000, '2023-11-20', '2024-02-28', 'Completed'),
(104, 'Sales Forecasting', 1, 'Bengaluru', 450000, '2024-07-01', NULL, 'Ongoing'),
(105, 'Recruitment Portal', 10, 'Chennai', 150000, '2024-02-15', '2024-05-10', 'Completed'),
(106, 'Fraud Detection System', 9, 'Pune', 600000, '2024-04-05', NULL, 'Ongoing'),
(107, 'Regional Expansion Study', 7, 'Kolkata', 350000, '2023-09-10', '2023-12-20', 'Cancelled'),
(108, 'Employee Wellness App', 4, 'Ahemdabad', 180000, '2024-06-01', NULL, 'On Hold'),
(109, 'Price Optimization Engine', 2, 'Bengaluru', 400000, '2024-05-12', '2024-09-30', 'Completed'),
(110, 'Customer Support Chatbot', 11, 'Delhi', 320000, '2024-08-01', NULL, 'Ongoing'),
(111, 'Ad Campaign Analytics', 6, 'Mumbai', 220000, '2024-01-25', '2024-04-30', 'Completed'),
(112, 'Warehouse Automation', 12, 'Kolkata', 700000, '2023-06-01', '2023-10-15', 'Completed'),
(113, 'Legacy Data Migration', 99, 'Remote', 250000, '2023-01-01', '2024-03-01', 'Completed');
--3]ALTER THE EMPLOYEE TABLE TO ADD A NEW COLUMN NAMED 'PhoneNumber' AND THEN DROP THE SAME COLUMN
ALTER TABLE EMPLOYEE ADD PhoneNumber VARCHAR(15);
ALTER TABLE EMPLOYEE DROP COLUMN PhoneNumber;


-- TASK GROUP 2 -> DATA FILTERING 
SELECT * FROM EMPLOYEE WHERE Department IN ('Data Science', 'IT') AND Salary > 60000;
SELECT * FROM EMPLOYEE WHERE FirstName LIKE '[A,E,I,O,U]%';
SELECT * FROM PROJECT WHERE Budget BETWEEN 200000 AND 500000 AND Status != 'Cancelled';
SELECT * FROM EMPLOYEE WHERE ManagerID IS NULL AND Department != 'Finance';
SELECT * FROM PROJECT WHERE ProjectName LIKE '%_System' OR ProjectName LIKE '%_Engine';
SELECT * FROM EMPLOYEE WHERE HireDate BETWEEN '2020-01-01' AND '2022-12-31' AND City IN ('Mumbai','Pune');
SELECT * FROM PROJECT WHERE ProjectLocation NOT IN ('Bengaluru', 'Mumbai', 'Delhi') ORDER BY Budget DESC; 

-- TASK GROUP 3 -> AGGREGATE FUNCTIONS AND GROUPING
SELECT Department, AVG(Salary) AS AVG_DEPT_SALARY FROM EMPLOYEE GROUP BY Department;
SELECT City, COUNT(*) AS NO_OF_EMP FROM EMPLOYEE GROUP BY City HAVING COUNT(*) > 1;
SELECT Status, SUM(Budget) AS ALLOCATED_BUDGET FROM PROJECT GROUP BY Status;
SELECT TOP 1 * FROM PROJECT ORDER BY Budget DESC;
SELECT TOP 1 * FROM PROJECT ORDER BY Budget ASC;
SELECT TOP 3 FirstName, LastName, Salary FROM EMPLOYEE ORDER BY Salary DESC;

-- TASK GROUP 4 -> STRING FUNCTIONS
SELECT * FROM EMPLOYEE;
SELECT UPPER(ISNULL(FirstName, 'n/a') + ' ' + ISNULL(LastName, 'N/A')) AS FullName FROM EMPLOYEE; -- Handling Null before concatination
SELECT ProjectName, LEFT(ProjectName, 3) AS FIRST_THREE_CHAR FROM PROJECT;
SELECT ProjectName AS ProjectName_Old, REPLACE(ProjectName, 'App', 'Application') AS ProjectName_New FROM PROJECT;
SELECT ISNULL(Email, ''), LEN(ISNULL(Email,'')) AS LENGTH_OF_EMAIL FROM EMPLOYEE;
SELECT LOWER(TRIM(FirstName)) AS TRIMMED_NAMES FROM Employee;

-- TASK GROUP 5 -> NUMBER FUNCTIONS
SELECT Budget AS Original, ROUND(Budget,3) AS Rounded FROM PROJECT;
SELECT Budget, ROUND((Budget + (Budget * 10  / 100)), 2) AS TEN_PERC_INCREASE FROM PROJECT;
SELECT Budget, ABS(Budget - 300000) AS BUDGET_DIFFERENCE FROM PROJECT;

-- TASK GROUP 6 -> DATETIME FUNCTIONS
SELECT FirstName, LastName, HireDate, DATENAME(MONTH, HireDate) AS HireMonth, YEAR(HireDate) AS HireYear FROM EMPLOYEE;
SELECT ProjectName, StartDate, DATEDIFF(DAY, StartDate, GETDATE()) AS NO_OF_DAYS  FROM PROJECT;
SELECT StartDate, DATEADD(MONTH, 6, StartDate) AS REVIEW_DATE FROM PROJECT;
SELECT HireDate AS 'HireDate(YYYY-MM-DD)', FORMAT(HireDate, 'dd-MM-yyyy') AS 'HireDate(dd-MM-yyyy)' FROM EMPLOYEE;
SELECT FirstName, LastName, HireDate, DATEPART(QUARTER, HireDate) FROM EMPLOYEE WHERE DATEPART(QUARTER, HireDate) = 4;

-- TASK GROUP 7 -> NULL FUNCTIONS
SELECT FirstName, ISNULL(LastName, 'Not Provided') AS LastName FROM EMPLOYEE;
SELECT Email, ISNULL(Email, 'no-email-on-file@corp.com') FROM EMPLOYEE;
SELECT * FROM PROJECT WHERE EndDate IS NULL AND Status = 'Ongoing';
SELECT FirstName, LastName, COALESCE(FirstName, LastName, 'Unknown') FROM EMPLOYEE;

-- TASK GROUP 8 -> JOIN STATEMENTS
SELECT P.ProjectName, (E.FirstName + ' ' +ISNULL(E.LastName, '')) FullName, E.Department FROM PROJECT AS P
INNER JOIN EMPLOYEE AS E
ON P.EmployeeID = E.EmployeeID;

SELECT (E.FirstName + ' ' +ISNULL(E.LastName, '')) FullName, P.ProjectName, E.Department FROM EMPLOYEE AS E
LEFT JOIN PROJECT AS P
ON E.EmployeeID = P.EmployeeID;

SELECT (E.FirstName + ' ' +ISNULL(E.LastName, '')) FullName, P.ProjectName, E.Department FROM PROJECT AS P
LEFT JOIN EMPLOYEE AS E
ON E.EmployeeID = P.EmployeeID; -- achieved right join in smartly by exchanging table orders

SELECT * FROM EMPLOYEE 
FULL JOIN PROJECT
ON EMPLOYEE.EmployeeID = PROJECT.EmployeeID;

SELECT E.FirstName, ISNULL(E.LastName, 'n/a'), P.ProjectName, P.Budget FROM EMPLOYEE AS E
LEFT JOIN PROJECT AS P
ON E.EmployeeID = P.EmployeeID
WHERE P.EmployeeID IS NULL;

SELECT E.FirstName, P.ProjectName, P.Budget FROM PROJECT AS P
LEFT JOIN EMPLOYEE AS E
ON E.EmployeeID = P.EmployeeID
WHERE E.FirstName IS NULL;

SELECT * FROM EMPLOYEE
CROSS JOIN
PROJECT;

-- TASK GROUP 9 -> SET OPERATIONS
SELECT * FROM EMPLOYEE;
SELECT * FROM PROJECT;
SELECT City FROM EMPLOYEE UNION SELECT ProjectLocation FROM PROJECT;
SELECT City FROM EMPLOYEE UNION ALL SELECT ProjectLocation FROM PROJECT;
SELECT City FROM EMPLOYEE INTERSECT SELECT ProjectLocation FROM PROJECT;
SELECT City FROM EMPLOYEE EXCEPT SELECT ProjectLocation FROM PROJECT;
SELECT ProjectLocation FROM PROJECT EXCEPT SELECT City FROM EMPLOYEE;
SELECT ISNULL(FirstName,'n/a') + ' ' + ISNULL(LastName, 'n/a') FullName, Salary, 'EMPLOYEE' AS Source FROM EMPLOYEE WHERE Salary > 80000
UNION
SELECT ProjectName, Budget, 'PROJECT' AS Source FROM PROJECT WHERE Budget > 500000;

-- TASK GROUP 10 -> CASE STATEMENTS
SELECT FirstName, LastName, Salary, (CASE WHEN Salary > 80000 THEN 'High' WHEN Salary BETWEEN 50000 AND 80000 THEN 'Medium' WHEN Salary < 50000 THEN 'Low' END) SalaryBand FROM EMPLOYEE;
SELECT ProjectName, Budget, (CASE WHEN Budget > 400000 THEN 'Large' WHEN Budget <= 400000 THEN 'Small' END) ProjectSize FROM PROJECT;
SELECT ProjectName, StartDate, EndDate, (CASE WHEN EndDate IS NULL THEN 'Active' ELSE 'Closed' END) ComputedStatus FROM PROJECT;