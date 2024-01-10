--Patika SQL Ödev 10

-- Örnek 1: 
SELECT city.city, country.country
FROM city
LEFT JOIN country ON city.countrycode = country.countrycode;



-- Örnek 2: 
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;



-- Örnek 3: 
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;
