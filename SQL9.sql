# String Functions

# Concat, Length, Left, Right, Upper, Lower, Substring, Replace, Trim, Reverse

USE Sakila;

SELECT * FROM actor;

# CONCAT

SELECT first_name, last_name, CONCAT(first_name," ", last_name) AS Full_name FROM actor; 

# SUBSTRING

SELECT first_name, last_name, SUBSTRING(first_name, 1, 3) AS Pass FROM actor; 

SELECT first_name, last_name, CONCAT(SUBSTRING(first_name, -3, 3), SUBSTRING(last_name, 2, 4)) AS Pass FROM actor; 

# LENGTH

SELECT first_name, LENGTH(first_name) len FROM actor;

SELECT * FROM address;

SELECT UPPER(district) FROM address;

SELECT district, LOWER(district) as lower, UPPER(district) AS Upper FROM address;

## LEFT

SELECT first_name, LEFT(first_name, 2), last_name, RIGHT(last_name, 2) FROM actor;

SELECT TRIM('              ABHIJEET               ');


# REVERSE

SELECT REVERSE('ABHIJEET');

SELECT * FROM customers;