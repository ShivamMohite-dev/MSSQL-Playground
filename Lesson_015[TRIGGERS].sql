-----------------------------------------------------------------------------WHAT IS AN TRIGGER----------------------------------------------------------------
-- Triggers are special stored procedures (set of statements) THAT AUTOMATICALLY RUNS IN RESPONSE TO A SPECIFIC EVENT

----------------------------------------SYNTAX----------------------------------------
/*
CREATE TRIGGER {triggername} ON {tablename}
AFTER INSERT, UPDATE, DELETE AS
BEGIN
    -- SQL STATEMENTS GO HERE
END
*/

------------------------------CREATING A TRIGGER------------------------------
CREATE TRIGGER trg_AfterInsertEmp ON Sales.Employees
AFTER INSERT
AS
BEGIN 
	INSERT INTO Sales.EmployeeLog (EmployeeID, LogMessage, LogDate)
	SELECT 
		EmployeeID,
		'New Employee Added: ' + CAST(EmployeeID AS VARCHAR), 
		GETDATE()
	FROM INSERTED
END


---------------------------------------------TRIGGERING OUR TRIGGER---------------------------------------------
INSERT INTO Sales.Employees VALUES (6, 'Tom', 'Herrington', 'Marketing', '1977-06-23', 'M', 50000, 1);

SELECT * FROM Sales.EmployeeLog; -- Confirming whether trigger was triggered or not
