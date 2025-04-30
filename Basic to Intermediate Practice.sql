USE company;

SHOW TABLES;

SELECT * FROM employee;

#  Q1. Show Name and Salary of employees earning more than the average salary.

SELECT Name, Salary FROM employee
WHERE Salary > ( SELECT AVG(Salary) FROM Employee);

# Q2. Find the top 2 highest paid employees from the Marketing department.

SELECT * FROM employee
WHERE Department = 'Finance'
ORDER BY Salary DESC
LIMIT 2;


# Q3. Display total salary and number of employees per department. Only show departments with more than 2 employees.

SELECT SUM(Salary) AS Salary_By_Dep, COUNT(Department) AS c FROM Employee
GROUP BY Department
HAVING COUNT(Department) > 2;


# Q4. Show Name, JoiningDate, and the number of months each employee has been in the company (use date functions).

SELECT Name, JoiningDate, MONTH(JoiningDate) FROM Employee;


# Q5. Show Name and a masked version of salary (replace all digits with '*').

SELECT Name, REGEXP_REPLACE(Salary, '[0-9]', '*') AS masked_ FROM employee;


# Q6. Show each employee's Name and salary rounded to the nearest 1000 and their salary square root (2 decimal places).

SELECT Name, ROUND(Salary, 0), ROUND(SQRT(Salary),2) FROM employee;  

SELECT * FROM Employee;

USE VRS;

SHOW TABLES;

SELECT * FROM EMPLOYEE;

SELECT * FROM Department;

#  Q7. List all employees with their department names. Show 'No Department' if missing.

SELECT Employee.Name, Department.DepartmentName FROM Employee
INNER JOIN Department ON Employee.DepartmentID = Department.DepartmentID;

# Q8. Show departments that have no employees assigned to them.

SELECT Employee.EmployeeID, Employee.Name, Department.DepartmentID AS D FROM employee
INNER JOIN Department ON Employee.DepartmentID = Department.DepartmentID
WHERE Department.DepartmentID = NULL;


# Q9. Show Name, Salary, and Rank of employees in each department based on Salary (high to low).

SELECT Name, Salary, RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) FROM Employee;

# Q10. Show the running total of salaries ordered by JoiningDate.

SELECT SUM(Salary) OVER(ORDER BY JoiningDate) FROM Employee;

# Q11. Show names of employees whose salary is higher than all employees in the 'HR' department.

SELECT Name, RANK() OVER(PARTITION BY Department ORDER BY Salary) FROM Employee
WHERE Department = 'HR';

# Q12. Find the department with the highest total salary using subquery or CTE.


