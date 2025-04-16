USE tcs;


SHOW TABLES;

SELECT * FROM Employee;

# Q1. Show the length of each employee's first name using a suitable built-in function.

SELECT LENGTH(FirstName) AS Name FROM Employee;

# Q2. Display FirstName and LastName in UPPERCASE and lowercase together.

SELECT UPPER(FirstName) AS FirstName, UPPER(LastName) AS LastName FROM Employee;

# Q3. Add a new column Today in your output to show the current system date for each row.

 ALTER TABLE Employee ADD COLUMN TODAY DATE;
 
 SET SQL_SAFE_UPDATES = 0;
 
 UPDATE Employee
 SET TODAY = NOW();
 
 
 
 # Q4. Extract the year and month from each employee’s JoiningDate.
 
 SELECT YEAR(JoiningDate) AS Year, Month(JoiningDate) AS Month FROM Employee;
 
 
 
 # Q5. Find the total salary of all employees.
 
 SELECT SUM(Salary) FROM Employee;
 
 
 # Q6. Calculate the average salary of employees.
 
 SELECT AVG(Salary) FROM Employee;
 
 
  # Q7. How many employees are there in total?
  
  SELECT COUNT(EmployeeID) FROM Employee;
  
  # Q8. What is the maximum and minimum salary in the company?
  
  SELECT MIN(Salary) AS Minimum_Salary, MAX(Salary) AS Maximum_Salary FROM Employee;
  
 # Q9. Display the total salary grouped by each year of joining.
 
 SELECT SUM(Salary) FROM Employee
 GROUP BY YEAR(JoiningDate);


