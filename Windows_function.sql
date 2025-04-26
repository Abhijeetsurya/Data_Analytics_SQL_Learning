CREATE DATABASE campesx;

CREATE TABLE marks (
 student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    branch VARCHAR(255),
    marks INTEGER
);

INSERT INTO marks (name,branch,marks)VALUES 
('Nitish','EEE',82),
('Rishabh','EEE',91),
('Anukant','EEE',69),
('Rupesh','EEE',55),
('Shubham','CSE',78),
('Ved','CSE',43),
('Deepak','CSE',98),
('Arpan','CSE',95),
('Vinay','ECE',95),
('Ankit','ECE',88),
('Anand','ECE',81),
('Rohit','ECE',95),
('Prashant','MECH',75),
('Amit','MECH',69),
('Sunny','MECH',39),
('Gautam','MECH',51);

SELECT * FROM marks;

USE campesx;

## WINDOWS FUNCTIONS

## Rownumber, Rank, Dense rank, lag and Lead, Ntile

# ROW_NUMBER

SELECT *, ROW_NUMBER() OVER() FROM marks;

# ROW _NUMBER PARTITION BY branch

SELECT *, ROW_NUMBER() OVER(PARTITION BY branch) FROM marks;

# RANK()

# RANK() ORDER BY marks

SELECT *, RANK() OVER(ORDER BY marks DESC) FROM marks;

SELECT *, RANK() OVER(PARTITION BY branch ORDER BY marks DESC)
FROM marks;

# DENSE_RANK()

SELECT *, DENSE_RANK() OVER(PARTITION BY branch ORDER BY marks) FROM marks;

SELECT *, DENSE_RANK() OVER(ORDER BY marks DESC) FROM marks;

# -------------------------------------------------------------------

SELECT *, CONCAT( branch, '-', ROW_NUMBER() OVER(PARTITION BY branch ORDER BY marks DESC)) AS branch_wise_rank FROM marks;



