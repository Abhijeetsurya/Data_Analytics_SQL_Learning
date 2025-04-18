USE tcs;

SHOW TABLES;

SELECT * FROM employee;


##  Q1. Display the number of employees who joined in each year

SELECT COUNT(EmployeeID) as employee FROM employee
GROUP BY YEAR(joiningDate);


##  Q2. Show total salary for each year of joining, but only for years where total salary is more than ₹50,000.

SELECT SUM(Salary) FROM employee
WHERE Salary > 25000
GROUP BY YEAR(JoiningDate);


## Q3. Show FirstName, JoiningDate, and how many days each employee has completed in the company.

SELECT FirstName, JoiniNgDate, DATEDIFF(CURDATE(), JoiningDate) FROM employee;

## Q4. Display all employee FirstNames where the second character is 'a'.

SELECT FirstName FROM employee
WHERE FirstName = SUBSTRING('a', 2, 2);

## Q5. Show employee names where the first name ends with 'a' (case insensitive).

SELECT firstName FROM employee
WHERE firstName LIKE '%a';

## Q6. Group employees by the length of their FirstName and count how many employees have that length.

SELECT LENGTH(FirstName) AS len, COUNT(*) AS EmployeeCount FROM Employee
GROUP BY LENGTH(FirstName);





