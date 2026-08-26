-- SQL JOIN STATEMENTS --
USE MyDatabase

--1] NO JOIN: Trying to return data from the tables without combining them 
SELECT * FROM customers;
SELECT * FROM orders;

--2] INNER JOIN: Return only the common rows present in both tables. For Inner Join to work we need to have a common column present in both the tables using which we will combine both the table
SELECT C.first_name, C.country, O.sales, C.score, O.sales FROM customers AS C
INNER JOIN orders AS O
ON C.id = O.customer_id

--3] LEFT JOIN: 
SELECT * FROM customers AS C
LEFT JOIN orders AS O
ON C.id = O.customer_id

--4] RIGHT JOIN
SELECT * FROM customers AS C
RIGHT JOIN orders AS O
ON C.id = O.customer_id

--5] FULL JOIN
SELECT * FROM customers AS C
FULL JOIN orders AS O
ON C.id = O.customer_id

--6] ANTI LEFT JOIN
SELECT * FROM customers AS C
LEFT JOIN orders AS O
ON C.id = O.customer_id
WHERE O.customer_id IS NULL

--7] ANTI RIGHT JOIN
SELECT O.customer_id, O.order_id, O.order_date, O.sales FROM orders AS O
LEFT JOIN customers AS C
ON C.id = O.customer_id
WHERE C.id IS NULL 

                  -- OR

SELECT O.customer_id, O.order_id, O.order_date, O.sales FROM customers AS C
RIGHT JOIN orders AS O
ON C.id = O.customer_id
WHERE C.id IS NULL

--8] FULL ANTI JOIN
SELECT * FROM customers AS C
FULL JOIN orders AS O
ON C.id = O.customer_id
WHERE C.id IS NULL OR O.customer_id IS NULL

--9] CROSS JOIN
SELECT * FROM customers 
CROSS JOIN orders
