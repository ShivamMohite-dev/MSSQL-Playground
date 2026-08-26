USE MyDatabase

SELECT * FROM customers 

SELECT * FROM customers WHERE country = 'Germany'  -- '=' equals to comparision operator
SELECT * FROM customers WHERE country != 'USA' -- '!=' or '<>' not equals to comparision operator
SELECT * FROM customers WHERE score >= 500 -- '>' or '>=' greater than comparision operator
SELECT * FROM customers WHERE score <= 500 -- '<' or '<=' less than comparision operator

SELECT * FROM customers WHERE country = 'USA' AND score > 500 -- 'AND' logical operator 
SELECT * FROM customers WHERE country = 'USA' OR country = 'UK' -- 'OR' logical operator
SELECT * FROM customers WHERE NOT country = 'USA' -- 'NOT' Logical operator

SELECT * FROM customers WHERE score BETWEEN 100 AND 500 -- 'BETWEEN' range operators

SELECT * FROM customers WHERE country IN ('Germany','USA','France') -- 'IN' membership operator
SELECT * FROM customers WHERE first_name NOT IN ('Maria','Martin') -- 'NOT IN' membership operator

-- 'LIKE' search operator with given character in prescribed order
SELECT * FROM customers WHERE first_name LIKE 'P%' -- Starts with 'P'
SELECT * FROM customers WHERE first_name LIKE '%r' -- Ends with 'r'
SELECT * FROM customers WHERE first_name LIKE 'm%ia' -- Starts with 'm' and ends with 'ia'
SELECT * FROM customers WHERE first_name LIKE '%r%' -- Anything with 'r' will fullfill
SELECT * FROM customers WHERE first_name LIKE '__r%' -- '_ _ r %' means filter anything with 'r' in their 3rd position
SELECT * FROM customers WHERE first_name LIKE '[M,P]%' -- 'Anything starting with either 'M' or 'P' character will be filtered out
SELECT * FROM customers WHERE first_name LIKE '%[a,n]' -- 'Anything ending with either 'a' or 'n' character will be filtered out


