USE world;

SELECT * FROM countrylanguage;

#-----------------------LIMIT-----------------------------------------------

SELECT * FROM country
LIMIT 5;


# ------------------------------- OFFSET --------------------------------------

## Fetch data from Row 22 to 31

SELECT * FROM country
LIMIT 10
OFFSET 21;

#-----------------------------------------------------------------------------------

SELECT Code, Country_Name, country_Population FROM country
ORDER BY Country_Population DESC
LIMIT 5;

SELECT country_name, Continent, round((country_Population/SurfaceArea),2) AS Pop_density FROM country
ORDER BY Pop_density DESC
LIMIT 5
OFFSET 12;

## CHECK MEDIAN 

SELECT country_name, Continent, round((country_Population/SurfaceArea),2) AS Pop_density FROM country
ORDER BY Pop_density DESC
LIMIT 1
OFFSET 139;

SELECT country_name, Continent, round((country_Population/SurfaceArea),2) AS Pop_density FROM country
ORDER BY Pop_density DESC
LIMIT 5
OFFSET 137;

