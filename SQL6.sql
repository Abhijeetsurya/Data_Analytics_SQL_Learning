USE world;


SELECT * FROM country;

SELECT Round(AVG(SurfaceArea),2) AS Avg_SurfaceArea FROM country;


# Total SurfaceArea, Avg SurfaceArea, Avg Life Expectancy, Total Population, Avg Population

SELECT ROUND(SUM(SurfaceArea),2) AS Total_SurfaceArea FROM country;

SELECT ROUND(AVG(SurfaceArea), 2) AS Avg_SurfaceArea FROM country;

SELECT ROUND(AVG(LifeExpectancy),2) FROM country;

SELECT SUM(country_Population) FROM country;

SELECT ROUND(AVG(country_Population), 2) FROM country;

