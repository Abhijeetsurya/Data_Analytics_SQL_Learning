## Windows Function

## Row_Number, RANK, Desnse_Rank, Lag, Lead, Ntile

USE world;


SHOW TABLES;

SELECT * FROM country;


# ROW_NUMBER

SELECT *, ROW_NUMBER() OVER(ORDER BY Code) AS Row_num FROM country;

SELECT *, ROW_NUMBER() OVER(ORDER BY LifeExpectancy DESC) AS Row_num_LE,
ROW_NUMBER() OVER(ORDER BY Code) AS Row_num FROM country;


# RANK()

SELECT * FROM city;


SELECT *, RANK() OVER(ORDER BY District DESC) AS Rank_
 FROM city;

SELECT *, RANK() OVER(ORDER BY City_Population DESC) AS City_Pop,
ROW_NUMBER() OVER(ORDER BY CountryCode) AS Row_num FROM city;

# City Population of Madhya Pradeh

SELECT *, RANK() OVER(ORDER BY City_Population DESC) AS City_Pop FROM city
WHERE CountryCode ='IND' AND District = 'Madhya Pradesh';

SELECT *, RANK() OVER(ORDER BY District DESC) AS Rank_,
ROW_NUMBER() OVER(ORDER BY District DESC) AS Row_num
FROM city;
 
 SELECT *, RANK() OVER(ORDER BY City_Population DESC) AS City_Rank FROM city;
 
 
 
 # DENSE_RANK()
 
 SELECT *, DENSE_RANK() OVER(ORDER BY District DESC) AS Dense_rank_ FROM city;

SELECT *, RANK() OVER(ORDER BY District DESC) AS Rank_,
ROW_NUMBER() OVER(ORDER BY District DESC) AS Row_num,
DENSE_RANK() OVER(ORDER BY District DESC) AS Dense_r
 FROM city;
 
 
 # NTILE
 
 USE world;

SHOW TABLES;

SELECT * FROM country;

SELECT Country_Name, Continent, Country_Population,
NTILE(4) OVER(ORDER BY Continent) FROM country;

SELECT Country_Name, Continent, Country_Population,
NTILE(4) OVER(ORDER BY Country_Population DESC) FROM country
WHERE Continent ='Asia';


# LAG & LEAD

USE campesx;

SHOW TABLES;

SELECT * FROM marks;

SELECT *, LAG(marks, 1, 0) OVER(ORDER BY marks) AS 'Previous Value',
LEAD(marks, 1, 0) OVER(ORDER BY marks) AS 'Next Value' FROM marks;


# FIRST_VALUE & LAST_VALUE




