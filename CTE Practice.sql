#  Q1. Use a CTE to find employees who earn above the average salary.

SELECT AVG(Salary) FROM Employees;

WITH T1 AS (
SELECT ROUND(AVG(Salary)) Avg_salary FROM Employees
) SELECT * FROM Employees E
JOIN T1
WHERE E.Salary > T1.Avg_Salary;

SELECT * FROM Employees;


# Q2. Use a CTE to get total salary per department, then list only departments with total salary > 100000.

WITH T1 AS(
SELECT Department, SUM(Salary) AS Salary FROM Employees
GROUP BY Department) SELECT * FROM t1
WHERE Salary > 100000;

# Q3. Write a CTE that ranks employees by salary within their department.

WITH T1 AS(
SELECT *, RANK() OVER(PARTITION BY Department ORDER BY Salary) FROM Employees
) SELECT * FROM T1;

# 