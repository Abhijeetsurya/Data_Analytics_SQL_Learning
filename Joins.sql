USE WORLD;

SELECT * FROM city;

SELECT * FROM country;

SELECT * FROM CountryLanguage;

SELECT ID, City_name, District, CountryCode, Country_name, Continent, city_Population FROM City
INNER JOIN country ON City.countryCode = Country.Code
ORDER BY ID; 	


CREATE DATABASE PracticeDB;

USE PracticeDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT
);


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);


INSERT INTO Employees (EmployeeID, Name, DepartmentID) VALUES
(1, 'Alice', 100),
(2, 'Bob', 101),
(3, 'Charlie', 102),
(4, 'Diana', NULL),
(5, 'Eve', 104);


INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(100, 'Sales'),
(101, 'Engineering'),
(102, 'HR'),
(103, 'Marketing');


SELECT * FROM Employees;


# INNER JOIN

SELECT * FROM Departments;

SELECT Employees.EmployeeID, Employees.Name, Departments.DepartmentName, Employees.DepartmentID FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;


# LEFT JOIN

SELECT Employees.EmployeeID, Employees.DepartmentID, Employees.Name, Departments.DepartmentName FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

# RIGHT JOIN

SELECT Employees.EmployeeID, Employees.DepartmentID, Employees.Name, Departments.DepartmentName FROM Employees
RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;


# JOIN

SELECT Employees.EmployeeID, Employees.DepartmentID, Employees.Name, Departments.DepartmentName FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;


