--Patika SQL �dev 9

-- �rnek 1: 

SELECT city.city, country.country
FROM city
INNER JOIN country ON city.countrycode = country.countrycode;

-- �rnek 2:

SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id;

-- �rnek 3:

SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id;
