USE world;

SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM countrylanguage;


SELECT Name, District, Population FROM city;

ALTER TABLE city CHANGE COLUMN Name City_Name VARCHAR(40);

ALTER TABLE country CHANGE COLUMN Name Country_Name CHAR(52);

ALTER TABLE city CHANGE COLUMN Population City_Population INT;

ALTER TABLE country CHANGE COLUMN Population country_Population INT;

SELECT Code, Country_Name FROM country;

SELECT Country_Name, Region, SurfaceArea, Country_Population, LifeExpectancy, GNP, 
Country_Population/1000000 AS Population_In_Million, GNP/1000 AS GNP_in_Billon,
ROUND(GNP*1000000/Country_Population, 0) AS Per_cap_GNP FROM country;

SELECT * FROM country;

SELECT * FROM country
WHERE Continent = 'Asia';

SELECT * FROM country
WHERE IndepYear = 1947;

SELECT * FROM country
WHERE LifeExpectancy = 77.4;

SELECT * FROM country
WHERE LifeExpectancy > 80;

SELECT * FROM country
ORDER BY GNP DESC;


SELECT * FROM country
ORDER BY Country_Name, Region DESC;
