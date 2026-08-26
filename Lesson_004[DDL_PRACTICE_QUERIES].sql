USE MyDatabase

CREATE TABLE Persons(
	id INT NOT NULL,
	person_name VARCHAR(20) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT primarykey PRIMARY KEY (id)
)

SELECT * FROM Persons

ALTER TABLE Persons ADD email VARCHAR(50) NOT NULL

ALTER TABLE Persons DROP COLUMN phone 

-- DROP TABLE Persons
