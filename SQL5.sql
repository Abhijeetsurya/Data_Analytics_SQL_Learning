USE tcs;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    JoiningDate DATE
);

SELECT * FROM Employee;


INSERT INTO Employee (EmployeeID, FirstName, LastName, Salary, JoiningDate)
VALUES
(1, 'Alice', 'Johnson', 25000.00, '2022-03-15'),
(2, 'Bob', 'Smith', 28000.00, '2021-06-01'),
(3, 'Charlie', 'Davis', 22000.00, '2023-01-10'),
(4, 'Diana', 'Miller', 18000.00, '2020-11-05'),
(5, 'Ethan', 'Brown', 30000.00, '2024-07-20');



#--------------------------------------------          Questions                   ----------------------------------------------------------


#   Q1. Show all employee records but only select the columns: EmployeeID, FirstName, and Salary.


SELECT EmployeeID, FirstName, Salary FROM Employee;



#   Q2. Display the top 2 highest paid employees from the Employees table. 

SELECT * FROM Employee
ORDER BY Salary DESC
LIMIT 1;


#   Q3. Fetch all employee details and sort them by JoinDate in descending order (newest first).

SELECT * FROM Employee
ORDER BY JoiningDate DESC;



#   Q4. Skip the first record in the sorted result by Salary (high to low), and return the next 2 records.

SELECT * FROM Employee
ORDER BY Salary DESC
LIMIT 2
OFFSET 1;


#   Q5. Display employees whose Salary is between 20000 and 25000, sorted alphabetically by FirstName.

SELECT * FROM Employee
WHERE Salary > 20000 AND Salary < 25000
ORDER BY FirstName;

