USE company;

SELECT * FROM employee;

# Q1. Write a query to display Name and Salary of all employees sorted by highest salary first.

SELECT Name, Salary FROM Employee
ORDER BY Salary DESC;

# Q2. Find the total number of employees in the table.

SELECT COUNT(EmployeeID) FROM employee;

#  Q3. Find the average salary of all employees.

SELECT AVG(Salary) AS Avg_salary FROM Employee;

#  Q4. Display the maximum and minimum salary in the table.

SELECT MAX(Salary) AS Maximum_salary, MIN(Salary) FROM Employee;

# Q5. Display the first 3 employees who have joined most recently.

SELECT * FROM Employee
ORDER BY JoiningDate DESC
LIMIT 3;

# Q6. Show each employee's Name, Salary, and their Row Number based on JoiningDate (earliest first).

SELECT Name, Salary, ROW_NUMBER() OVER(ORDER BY JoiningDATE ASC) AS ROW_ FROM Employee;

#  Q7. Find the total salary paid to each department. Show Department and TotalSalary.

SELECT Department, SUM(Salary) AS Total_SalarY FROM employee
GROUP BY Department;

#  Q8. Display the employees whose salary is between 22000 and 28000, sorted alphabetically by name.

SELECT * FROM employee
WHERE Salary BETWEEN 22000 AND 28000
ORDER BY Name;

 
# Q9. Show the employees who belong to the IT department only.

SELECT * FROM employee
WHERE Department = 'IT';

# Q10. Divide employees into 3 groups based on salary using NTILE(3) and show Name, Salary, and GroupNumber.

SELECT Name, Salary, NTILE(3) OVER(ORDER BY SALAry) FROM employee;











