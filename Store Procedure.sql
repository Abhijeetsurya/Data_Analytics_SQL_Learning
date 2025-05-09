# Stroe Procedure

USE world;

delimiter //

CREATE PROCEDURE AllData()
begin 
SELECT * FROM city;
END //

Delimiter ;

Call AllData;

