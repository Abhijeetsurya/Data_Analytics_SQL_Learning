USE world;

SHOW tables;

SELECT * FROM Country;



# ORDER BY & GROUP BY 

SELECT 
Continent, country_Name, ROUND(SUM(SurfaceArea),2) AS Total_SurfaceArea, 
ROUND(AVG(SurfaceArea), 2) AS Avg_SurfaceArea,
ROUND(AVG(LifeExpectancy),2) AS Avg_LifeExpectancy,
SUM(country_Population),
ROUND(AVG(country_Population), 2)  FROM country
GROUP BY Continent,Country_Name
ORDER BY continent DESC;


#------------------------------------------------------------------

SELECT 
 Region, Continent, ROUND(SUM(SurfaceArea),2) AS Total_SurfaceArea, 
ROUND(AVG(SurfaceArea), 2) AS Avg_SurfaceArea,
ROUND(AVG(LifeExpectancy),2) AS Avg_LifeExpectancy,
SUM(country_Population),
ROUND(AVG(country_Population), 2)  FROM country
GROUP BY Region,continent
ORDER BY Region DESC;