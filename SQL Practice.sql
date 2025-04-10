CREATE DATABASE TCS;


/*
Q1. Create a table called Employees with the following columns:

EmpID (INT, Primary Key)

FirstName (VARCHAR 50)

LastName (VARCHAR 50)

JoinDate (DATE)

Salary (DECIMAL(10,2))
*/

CREATE TABLE Employees
( EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
JoinDate DATE,
Salary DECIMAL);



# --------------------------------------------------------------------------------------------------------------------------------------------------------------------



/*

 2. DML (Data Manipulation Language)
Q2. Insert 3 rows into the Employees table with dummy data.

Q3. Update the salary of any one employee to increase it by 10%.

Q4. Delete one employee whose salary is less than 20,000.

*/

INSERT INTO Employees VALUES(1001, 'Abhijeet', 'Suryawanshi', '2024-12-03', 22000),
(1002, 'Bhumi', 'Sarathe', '2025-01-07', 20000),
(1003, 'Priya', 'Upadhya', '2025-11-17', 15000);


SET SQL_SAFE_UPDATES = 0;

DELETE FROM Employees
WHERE Salary < 20000;


/*

3. DQL (Data Query Language)
Q5. Retrieve all columns from the Employees table.

Q6. Show only FirstName, Salary of employees who joined after 2023-01-01.

*/

SELECT * FROM Employees;

SELECT FirstName, Salary FROM Employees
WHERE JoinDate > '2025-01-01';