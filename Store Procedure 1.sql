
USE my_company;

DELIMITER //

CREATE PROCEDURE AllData()
begin
SELECT * FROM Employees;

END //

DELIMITER ;

CALL ALLDATA;

USE WORLD;


DELIMITER //

CREATE PROCEDURE Asian_Country(IN Code CHAR(3))
begin
SELECT * FROM city
WHERE CountryCode IN (SELECT Code FROM country
WHERE Continent = 'Asia');

END //

DELIMITER ;

CALL Asian_Country;

SELECT * FROM Country;

DELIMITER //

CREATE PROCEDURE Independent_in_1947()
begin
SELECT * FROM country
WHERE Continent = 'Asia' AND IndepYear = 1947;

END //

DELIMITER ;

DROP PROCEDURE Asian_country;


CALL Independent_in_1947();

CALL Asian_country('AFG');

