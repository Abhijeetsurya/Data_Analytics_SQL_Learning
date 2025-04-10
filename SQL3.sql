USE pw;

DESCRIBE courses;

USE world;

##--------------------------------------------SELECT--------------------------------------

SELECT * FROM city;

SELECT * FROM country;

SELECT Country_Name, Continent, SurfaceArea, country_population FROM country;

SELECT Country_Name, country_population/SurfaceArea AS Population_density FROM country;


##---------------------------------------- ORDER BY -------------------------------------------------

SELECT Country_Name, country_population/SurfaceArea AS Population_density FROM country
ORDER BY Population_density DESC;


SELECT Country_Name, Continent, SurfaceArea, country_population, country_population/SurfaceArea AS Population_density FROM country
ORDER BY Continent ASC, Population_density DESC;


