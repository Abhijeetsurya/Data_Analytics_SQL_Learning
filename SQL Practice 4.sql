SELECT * FROM tcs.employee;

USE TCS;
ALTER TABLE employee
ADD joining_date DATE;

INSERT INTO employee (name, age, department, salary, joining_date) VALUES
('Ramesh', 20, 'Finance', 50000, '2022-01-15'),
('Suresh', 22, 'Finance', 50000, '2022-03-10'),
('Ram', 28, 'Finance', 20000, '2021-07-20'),
('Deep', 25, 'Sales', 30000, '2023-02-05'),
('Pradeep', 22, 'Sales', 20000, '2023-06-18');

TRUNCATE TABLE employee;


#  Q1. Display all employee names with their salary and the row number assigned based on salary in descending order.

SELECT NAME, SALARY, ROW_NUMBER() OVER(ORDER BY SALARY DESC) AS R FROM employee;

#  Q2. Show each employee's name, salary, and their rank based on salary (use RANK()).

SELECT NAME, SALARY, RANK() OVER(ORDER BY SALARY DESC) AS RANK_ FROM employee;

# Q3. Show each employee’s name, salary, and the salary of the employee who joined just before them (use LAG() with JoiningDate).

SELECT Name, salary, LAG(joiningDate) over(ORDER BY joiningDATE DESC) FROM employee;

# Q4. Show each employee's name, salary, and cumulative total salary ordered by JoiningDate.

SELECT NAME, SALARY, SUM(SALARY) OVER(ORDER BY Joining_Date) FROM employee;

# Q5. Split all employees into 3 salary brackets using NTILE(3) and show which bracket each employee belongs to.

SELECT *, NTILE(3) OVER(ORDER BY SALARY) FROM employee; 
