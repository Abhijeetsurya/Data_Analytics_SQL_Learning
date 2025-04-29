USE world;

SELECT * FROM country;

SELECT * FROM city;

# Subquery

SELECT ID, city_Name, CountryCode, District, City_Population,
(SELECT Country_Name FROM country AS C WHERE C.code = city.CountryCode)  AS Country_Name FROM city;