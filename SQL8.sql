USE Sakila;

## Built-in-function

## Data and Time

SHOW TABLES;

SELECT * FROM rental;


# YEAR
SELECT rental_id, rental_date,
YEAR(rental_date) AS Rental_Year FROM rental;


# MONTH
SELECT rental_id, rental_date,
MONTH(rental_date) AS Rental_Month FROM rental;


# DATE
SELECT rental_id, rental_date,
DAY(rental_date) AS Rental_Date FROM rental;


## Hours who has more rentals

SELECT MONTH(rental_date) AS Rental_Hour,
COUNT(rental_id) AS total_rents
FROM rental
GROUP BY Rental_Hour
ORDER BY total_rents DESC;

## DateAdd/DateSub

SELECT rental_id, rental_date,
 DATE(date_add(rental_date, interval 5 day)) Target_date,
 DATE(date_sub(return_date, interval 5 day)) Date
 FROM rental;
 
 ##Datediff
 
 SELECT HOUR(rental_date) AS rental_date, AVG(datediff(return_date, rental_date)) AS Avg_Rent_Period 
 FROM rental
 GROUP BY HOUR(rental_date)
 ORDER BY Avg_rent_Period DESC;
 
 SELECT Rental_Date, DAYNAME(rental_date) FROM rental;
 
 SELECT NOW();
 
 SELECT current_time();