SHOW TABLES;

SELECT * FROM employees;

# Q1. Create a view called HighEarners that shows only the names and salaries of employees earning above ₹80,000.


CREATE VIEW HigerEarners AS (
SELECT FirstName, Salary FROM Employees
WHERE Salary > 40000
);

SELECT * FROM higerearners;

# Q2. Create a view DeptSummary that contains department-wise total salary and employee count.

CREATE VIEW DeptSummary as (
SELECT Department, SUM(Salary) as total_salary, COUNT(EmpID) as number_of_emp FROM Employees
GROUP BY Department
);

# Q3. Write a query to select all records from the HighEarners view created in Q1.

SELECT * FROM higerearners;

# Q4. Update the HighEarners view to include the department as well.



# Q5. Drop the DeptSummary view.

DROP VIEW Higerearners;

