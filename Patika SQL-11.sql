--Patika SQL �dev 11

--actor ve customer tablolar�nda bulunan "first_name" s�tunlar� i�in t�m verileri s�ralama:
-- actor tablosu i�in
SELECT first_name FROM actor;

-- customer tablosu i�in
SELECT first_name FROM customer;

--actor ve customer tablolar�nda bulunan "first_name" s�tunlar� i�in kesi�en verileri s�ralama:
SELECT actor.first_name
FROM actor
JOIN customer ON actor.first_name = customer.first_name;


--actor ve customer tablolar�nda bulunan "first_name" s�tunlar� i�in ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri s�ralama:
-- actor tablosunda, customer tablosunda olmayan first_name'leri s�ralama
SELECT actor.first_name
FROM actor
LEFT JOIN customer ON actor.first_name = customer.first_name
WHERE customer.first_name IS NULL;

-- customer tablosunda, actor tablosunda olmayan first_name'leri s�ralama
SELECT customer.first_name
FROM customer
LEFT JOIN actor ON customer.first_name = actor.first_name
WHERE actor.first_name IS NULL;


--�lk 3 sorguyu tekrar eden veriler i�in:
-- actor tablosu i�in t�m verileri s�ralama
SELECT first_name FROM actor;

-- customer tablosu i�in t�m verileri s�ralama
SELECT first_name FROM customer;

-- actor ve customer tablolar�nda bulunan first_name s�tunlar� i�in kesi�en verileri s�ralama
SELECT actor.first_name
FROM actor
JOIN customer ON actor.first_name = customer.first_name;

-- actor tablosunda, customer tablosunda olmayan first_name'leri s�ralama
SELECT actor.first_name
FROM actor
LEFT JOIN customer ON actor.first_name = customer.first_name
WHERE customer.first_name IS NULL;

-- customer tablosunda, actor tablosunda olmayan first_name'leri s�ralama
SELECT customer.first_name
FROM customer
LEFT JOIN actor ON customer.first_name = actor.first_name
WHERE actor.first_name IS NULL;
