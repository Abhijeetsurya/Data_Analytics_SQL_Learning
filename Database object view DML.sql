USE WORLD;

SHOW TABLES;

SELECT * FROM country;

CREATE VIEW Country_wise AS
SELECT Continent, ROUND(SUM(SurfaceArea)) AS Total_surface_area,
ROUND(AVG(SurfaceArea)) As _avg_surface_area,
ROUND(AVG(LifeExpectancy)) AS Avg_LE, 
ROUND(SUM(country_Population)) AS Total_Pop,
ROUND(AVG(Country_Population)) AS Avg_Population
 FROM Country
GROUP BY Region, Continent; 

SELECT * FROM Country_wise;


CREATE VIEW Country_Data AS
SELECT Code, Country_Name, Continent, Country_Population, GNP FROM country
WHERE continent = 'Africa';


SELECT * FROM Country_Data;

UPDATE country_Data
SET GNP = 3257
WHERE Code = 'BEN';

