USE pw;




####-------------------DML - DATA MANIPULATION LANAGUAGE-----------------

CREATE TABLE courses
( CourseID CHAR(5),
CourseName VARCHAR(40),
Domain VARCHAR(40),
StudentInTake INT,
Faculty VARCHAR(40));

SELECT * FROM courses;

###-------------------------------------INSERT-------------------------

INSERT INTO courses VALUES('DS101', 'Data Science', 'AI', 100, 'saurabh');


###---------------------------------------ALTER---------------------------------------

ALTER TABLE courses CHANGE COLUMN CourseName Course VARCHAR(40);

ALTER TABLE courses CHANGE COLUMN StudentInTake Student_in_take INT;


###------------------------------INSERT MULTIPLE ROW--------------------------------

INSERT INTO courses VALUES
('DA101', 'Data Analytics', 'Data Science', 70, 'Saurabh'),
('ML101', 'Machine Learning', 'AI', 30, 'Manish'),
('DL101', 'Deep Learning', 'AI', 30, 'Vishal');


###---------------------------------------INSERT INTO SELECTED COLUMN----------------------

INSERT INTO courses(CourseID, Course, Domain) VALUES
('PB101', 'PowerBI', 'Data Science'),
('TB101', 'Tableau', 'Data Science');

SET SQL_SAFE_UPDATES = 0;


###--------------------------------------UPDATE DATA----------------------------------------

UPDATE courses
SET student_in_take = 25
WHERE CourseID = 'PB101';

UPDATE courses
SET Faculty = 'Krish'
WHERE CourseID = 'PB101';

UPDATE courses
SET student_in_take = 30, Faculty = 'Kris'
WHERE CourseID = 'TB101';


SELECT * FROM courses;

#--------------------------DROP TABLE------------------------

DROP TABLE courses;


###---------------------------------------DELETE ROW FROM TABLE----------------------------------------

DELETE FROM courses
WHERE CourseID = 'DL101';

INSERT INTO courses VALUES
('DL101', 'Deep Learning', 'AI', 30, 'Vishal');





#### --------------------------DDL - DATA DEFINITION LANGUAGE ------------------- 

CREATE TABLE courses
( CourseID CHAR(5) UNIQUE,
CourseName VARCHAR(40),
Domain VARCHAR(40),
StudentInTake INT CHECK(StudentInTake > 0),
Delivery_Mode VARCHAR(20) NOT NULL,
Faculty VARCHAR(40) DEFAULT('Abhijeet'));


SELECT * FROM courses;

INSERT INTO courses VALUES
('DA101', 'Data Analytics', 'Data Science', 70, 'Hybrid', 'Saurabh'),
('ML101', 'Machine Learning', 'AI', 30, 'Hybrid', 'Manish'),
('DL101', 'Deep Learning', 'AI', 30, 'Hybrid', 'Vishal');

INSERT INTO courses(CourseID, CourseName, Domain, StudentInTake, Delivery_Mode) VALUES
('ML102', 'Machine Modelling', 'Data Science', 20, 'OFFLINE');

UPDATE courses
SET Delivery_Mode = 'Online'
WHERE CourseID = 'ML102';

INSERT INTO courses(CourseID, CourseName, Domain, StudentInTake, Delivery_Mode) VALUES
('DA104', 'Data Cleaning', 'Data Science', 10, 'Hybrid');

CREATE TABLE courses
( CourseID CHAR(5) PRIMARY KEY,
CourseName VARCHAR(40),
Domain VARCHAR(40),
StudentInTake INT CHECK(StudentInTake > 0),
Delivery_Mode VARCHAR(20) NOT NULL,
Faculty VARCHAR(40) DEFAULT('Abhijeet'));

SELECT * FROM courses;

INSERT INTO courses VALUES
('DA101', 'Data Analytics', 'Data Science', 70, 'Hybrid', 'Saurabh'),
('ML101', 'Machine Learning', 'AI', 30, 'Hybrid', 'Manish'),
('DL101', 'Deep Learning', 'AI', 30, 'Hybrid', 'Vishal');


INSERT INTO courses(CourseID, CourseName, Domain, StudentInTake, Delivery_Mode) VALUES
('DA101', 'Data Cleaning', 'Data Science', 10, 'Hybrid');



