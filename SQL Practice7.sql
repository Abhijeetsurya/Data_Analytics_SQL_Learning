# Q1. Find the ceiling value of each employee's salary (next highest integer).

USE VRS;

SELECT * FROM Employee;

SELECT NAME, CEIL(Salary) AS ceil_value FROM employee;

# Q2. Find the floor value of each employee’s salary (next lowest integer).

SELECT NAME, FLOOR(Salary) FROM Employee;

# Q3. Show Name, Salary, and remainder when Salary is divided by 1000.

SELECT Name, Salary, SALARY/100 AS div_1000 FROM Employee;

# Q4. Display Name, Salary, and square root of salary (rounded to 2 decimal places).

SELECT Name, Salary, ROUND(SQRT(Salary), 2) AS salary_sqrt FROM Employee; 

# Q5. Show Name, Salary, and Salary raised to the power of 2.

SELECT Name, Salary, POWER(Salary, 2) FROM Employee;

# Q6. Write a query to list all departments and their employees (even if no employee is in the department).
SELECT * FROM Employee;

SELECT * FROM department;

SELECT Employee.Name, Employee.Salary, DepartmentName FROM Employee
RIGHT JOIN Department on Employee.DepartmentID = Department.DepartmentID;


# Q7. Write a query to list all employees with their department names, but exclude those without a department.


SELECT Employee.Name, Employee.Salary, Employee.DepartmentID FROM Employee
INNER JOIN Department ON Employee.DepartmentID = Department.DepartmentID;


# Q8. Write a query to list employees who do not belong to any department.

SELECT Employee.EmployeeID, Employee.Name, Employee.Salary, Employee.DepartmentID FROM Employee
LEFT JOIN Department ON Employee.DepartmeNtID = Department.DepartmentID
UNION
SELECT Employee.EmployeeID, Employee.Name, Employee.Salary, Employee.DepartmentID FROM Employee
RIGHT JOIN Department ON Employee.DepartmeNtID = Department.DepartmentID;


# Q9 Show total salary paid by each department using JOIN and GROUP BY.

SELECT 
	Employee.EmployeeID,
	Employee.Name,
	Employee.Salary, 
	Employee.DepartmentID, 
	Department.DepartmentName, SUM(Employee.Salary) OVER(PARTITION BY Department.DepartmentName) AS Salary_by_dep
FROM 
	Employee
INNER JOIN Department ON Employee.DepartmentID = Department.DepartmentID;


# Q10. Show Name, Salary, DepartmentName, and 10% increased salary using JOIN in a single query.

SELECT Employee.Name, Employee.Salary, Employee.Salary*1.10 AS inc_salary, Department.DepartmentID FROM Employee
INNER JOIN Department ON Employee.DepartmentID = Department.DepartmentID;


