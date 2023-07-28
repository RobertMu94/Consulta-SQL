
SELECT * FROM actor WHERE first_name='Julia'

SELECT * FROM actor WHERE first_name='Cuba' OR first_name='Cameron' OR first_name='Chris'

SELECT * FROM customer WHERE first_name='Jamie' AND last_name='Rice'

SELECT amount, payment_date FROM payment WHERE amount<1 

SELECT * FROM customer ORDER BY customer_id DESC limit 3 

SELECT rating, COUNT(rating) FROM film WHERE rating='PG' OR rating='PG-13' 
OR rating='NC-17' GROUP BY rating; 

SELECT film_id, title FROM film

SELECT * FROM film LIMIT 5

SELECT * FROM film WHERE film_id<4

SELECT * FROM film WHERE rating='PG' OR rating='G'

SELECT * FROM actor WHERE first_name IN ('Angela','Angelina','Audrey')

SELECT country_id,city FROM city ORDER BY country_id, city

SELECT COUNT (customer_id) FROM rental GROUP BY customer_id;

SELECT COUNT(customer_id) AS total_clientes FROM rental;

SELECT count(*) AS total_duplicados 
FROM (SELECT last_name FROM customer GROUP BY last_name HAVING COUNT(last_name) > 1) AS ver

SELECT film_id, COUNT (film_id) FROM film_actor GROUP BY film_id ORDER BY count DESC LIMIT 1;

SELECT actor_id, COUNT (actor_id) FROM film_actor GROUP BY actor_id ORDER BY count DESC LIMIT 1;

SELECT country_id, COUNT (country_id) FROM city GROUP BY country_id ORDER BY count;

SELECT ROUND(AVG (amount),2) FROM payment ; 

SELECT actor_id, first_name, last_name, LENGTH(first_name) + LENGTH(last_name) AS letras FROM actor ORDER BY letras DESC LIMIT 10;