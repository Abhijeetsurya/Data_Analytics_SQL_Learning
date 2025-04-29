# Q1. Write a query to find the absolute difference between each employee’s salary and 25000.

SELECT *, abs(salary-25000) AS Difference FROM Employee;

# Q2. Display Name, Salary, and Salary rounded to the nearest thousand.

SELECT Name, Salary, ROUND(Salary) FROM Employee;

# Q3. Write an INNER JOIN query to display Employee Name, Salary, and Department Name.

SELECT Employee.Name, Employee.Salary, DepartmentName FROM Employee
INNER JOIN Department ON Employee.DepartmentID = Department.DepartmentID;

# Q4. Write a LEFT JOIN query to show all employees and their department names. If no department, show NULL.

SELECT Employee.EmployeeID, Employee.Name, Employee.Salary, Department.DepartmentName FROM Employee
LEFT JOIN Department ON Employee.DepartmentID =Department.DepartmentID;

SELECT * FROM Employee;


# Q5. Write a query to display Name, Salary and increase everyone's salary by 10% (show new salary as New_Salary).

SELECT Name, Salary, Salary*0.10 AS New_Salary FROM Employee;


CREATE DATABASE VRS;

USE VRS;

-- Create Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Create Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Insert data into Department table
INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');

-- Insert data into Employee table
INSERT INTO Employee (EmployeeID, Name, Salary, DepartmentID) VALUES
(1, 'John', 25000.00, 101),
(2, 'Alice', 30000.00, 102),
(3, 'Bob', 22000.00, 101),
(4, 'Mike', 28000.00, 103),
(5, 'Sara', 26000.00, 102);

