CREATE TABLE employee (
	emp_id int,
	emp_name nvarchar(20),
	emp_city nvarchar(15),
);

INSERT INTO employee VALUES (1,'Rounak','Chennai')
INSERT INTO employee VALUES (2,'Mukesh','Jaipur')
INSERT INTO employee VALUES (3,'Ankit','Delhi')
INSERT INTO employee VALUES (3,'Rohan','Andra Pradesh')
INSERT INTO employee VALUES (4,'Sonali','Odissa')
INSERT INTO employee VALUES (5,'Nisha','Bihar')
INSERT INTO employee VALUES (6,'Mohit','Andra Pradesh')
INSERT INTO employee VALUES (7,'Manish','Nepal')
INSERT INTO employee VALUES (8,'Sarbojeet','odissa')

SELECT * FROM employee

SELECT DISTINCT emp_city FROM employee

DROP TABLE employee