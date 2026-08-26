USE MyDatabase 

SELECT * FROM INFORMATION_SCHEMA.TABLES;

SELECT first_name, country FROM customers -- SHOW ONLY 'first_name' AND 'country' 

SELECT first_name FROM customers WHERE score > 400 -- Display all students with scores above 400.

SELECT first_name FROM customers WHERE country = 'USA' -- Find all students from the USA.

SELECT DISTINCT country FROM customers -- Display all unique countries.

SELECT TOP 1 * FROM customers ORDER BY score DESC -- Find the student with the highest score.

SELECT TOP 1 * FROM customers ORDER BY score ASC -- Find the student with the lowest score.

SELECT * FROM customers ORDER BY first_name DESC -- Sort students by name in descending order.

SELECT country, COUNT(first_name)AS Total_Count FROM customers GROUP BY country  -- Count how many students belong to each country.

SELECT country, COUNT(first_name)AS Total_Count FROM customers GROUP BY country HAVING COUNT(first_name) > 1 -- Show only countries having more than one student.

SELECT country, AVG(score)AS AverageScore FROM customers GROUP BY country -- Find the average score of students in each country.

SELECT TOP 3 first_name,score FROM customers ORDER BY score DESC-- Display the top 3 highest-scoring students.

SELECT * FROM customers WHERE first_name LIKE 'G%' -- Find students whose names start with G.

SELECT first_name, score FROM customers WHERE score BETWEEN 300 AND 800 -- Find students with scores between 300 and 800.

SELECT * FROM customers WHERE country != 'Germany' -- Find students who are not from Germany.