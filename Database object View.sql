# Database Objects

USE world;

CREATE VIEW All_data AS
SELECT * FROM city;

SELECT * FROM All_data;

SELECT * FROM Country;

CREATE VIEW Continent_Sumaary AS
SELECT 
	Continent,
    Region,
	SUM(SurfaceArea) Total_SurafaceArea,
	ROUND(AVG(SurfaceArea), 0) Avg_SurafaceArea,
	round(AVG(LifeExpectancy),0) AS Avg_LE,
	SUM(Country_Population) AS Total_Pop,
	ROUND(avg(Country_Population),0) Avg_pop
FROM Country
GROUP BY Region, Continent
ORDER BY Region DESC;

