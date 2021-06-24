-- A customer wants to know films about "astronauts". 
-- How many recommendations could you give for him ?

SELECT * FROM film where lower(description) like '%astronaut%'