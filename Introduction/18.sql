-- 18
USE [CRUD]
GO

INSERT INTO [Towns]
VALUES
	('Sofia'), 
	('Plovdiv'), 
	('Varna'), 
	('Burgas')

INSERT INTO [Departments]
VALUES
	('Engineering'), 
	('Sales'), 
	('Marketing'), 
	('Software Development'), 
	('Quality Assurance')

INSERT INTO [Employees]
VALUES
	('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '01/02/2013', 3500.00, NULL),
	('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '02/03/2004', 4000.00, NULL),
	('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '28/08/2016', 525.25, NULL),
	('Georgi', 'Teziev', 'Ivanov', 'CEO', 2, '09/12/2007', 3000.00, NULL),
	('Peter', 'Pan', 'Pan', 'Intern', 3, '28/08/2016', 599.88, NULL)

INSERT INTO [Addresses]
VALUES
	('1 Lulin 10'),
	('25 Drujba'),
	('44 Mladost'),
	('100 Centar'),
	('155 Pernik')