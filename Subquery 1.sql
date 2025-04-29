USE world;

SELECT * FROM country;

SELECT * FROM city;

# Subquery

SELECT Code, Country_name, Continent FROM 
(SELECT * FROM country
WHERE Continent = 'Asia') AS Asian_country;

# fetch data of country where the population is more than global average

SELECT * FROM country
WHERE country_Population > (SELECT AVG(country_Population) FROM country);

SELECT * FROM city
WHERE CountryCode IN (SELECT Code FROM country
WHERE Continent = 'Asia');

##

SELECT * FROM city
WHERE countryCode IN (SELECT code FROM Country
WHERE Continent = (SELECT Continent FROM country
WHERE Country_Name = 'Andorra'));


