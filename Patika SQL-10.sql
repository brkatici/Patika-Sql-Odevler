--Patika SQL �dev 10

-- �rnek 1: 
SELECT city.city, country.country
FROM city
LEFT JOIN country ON city.countrycode = country.countrycode;



-- �rnek 2: 
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;



-- �rnek 3: 
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;
