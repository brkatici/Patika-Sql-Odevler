--Patika SQL �dev 1

--1. film tablosunda bulunan title ve description s�tunlar�ndaki verileri s�ralay�n�z.

SELECT title, description FROM film

--2. film tablosunda bulunan t�m s�tunlardaki verileri film uzunlu�u (length) 60 dan b�y�k VE 75 ten k���k olma ko�ullar�yla s�ralay�n�z.

SELECT * FROM film WHERE length > 60 AND length < 75

--3. film tablosunda bulunan t�m s�tunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma ko�ullar�yla s�ralay�n�z.

SELECT * FROM film Where rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99)

--4. customer tablosunda bulunan first_name s�tunundaki de�eri 'Mary' olan m��terinin last_name s�tunundaki de�eri nedir?

SELECT last_name FROM customer Where first_name = 'Mary'

--5. film tablosundaki uzunlu�u(length) 50 ten b�y�k OLMAYIP ayn� zamanda rental_rate de�eri 2.99 veya 4.99 OLMAYAN verileri s�ralay�n�z.

SELECT * FROM film WHERE length <= 50 AND (rental_rate <> 2.99 OR rental_rate <> 4.99 )





--Patika SQL �dev 2

--1. film tablosunda bulunan t�m s�tunlardaki verileri replacement cost de�eri 12.99 dan b�y�k e�it ve 16.99 k���k olma ko�uluyla s�ralay�n�z ( BETWEEN - AND yap�s�n� kullan�n�z.)

SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99

--2. actor tablosunda bulunan first_name ve last_name s�tunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' de�erleri olmas� ko�uluyla s�ralay�n�z. ( IN operat�r�n� kullan�n�z.)

SELECT * FROM actor WHERE first_name IN ('Penelope', 'Nick', 'Ed')

--3. film tablosunda bulunan t�m s�tunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma ko�ullar�yla s�ralay�n�z. ( IN operat�r�n� kullan�n�z.)

SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99)




--Patika SQL �dev 3


--1. country tablosunda bulunan country s�tunundaki �lke isimlerinden 'A' karakteri ile ba�lay�p 'a' karakteri ile sonlananlar� s�ralay�n�z.

SELECT country FROM country WHERE country LIKE 'A%a'

--2. country tablosunda bulunan country s�tunundaki �lke isimlerinden en az 6 karakterden olu�an ve sonu 'n' karakteri ile sonlananlar� s�ralay�n�z.

SELECT country, LENGTH(country) FROM country WHERE LENGTH(country) >=6 AND country LIKE '%n'

--3. film tablosunda bulunan title s�tunundaki film isimlerinden en az 4 adet b�y�k ya da k���k harf farketmesizin 'T' karakteri i�eren film isimlerini s�ralay�n�z.

SELECT title FROM film WHERE LOWER(title) ILIKE '%t%t%t%t%'

--4. film tablosunda bulunan t�m s�tunlardaki verilerden title 'C' karakteri ile ba�layan ve uzunlu�u (length) 90 dan b�y�k olan ve rental_rate 2.99 olan verileri s�ralay�n�z.

SELECT * FROM film WHERE title LIKE 'C%' AND LENGTH(title) > 90 AND rental_rate = 2.99


--Patika SQL �dev 4

--1. film tablosunda bulunan replacement_cost s�tununda bulunan birbirinden farkl� de�erleri s�ralay�n�z.

SELECT DISTINCT replacement_cost FROM film

--2. film tablosunda bulunan replacement_cost s�tununda birbirinden farkl� ka� tane veri vard�r?

SELECT COUNT(DISTINCT replacement_cost) FROM film

--3. film tablosunda bulunan film isimlerinde (title) ka� tanesini T karakteri ile ba�lar ve ayn� zamanda rating 'G' ye e�ittir?

SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND rating = 'G'

--4. country tablosunda bulunan �lke isimlerinden (country) ka� tanesi 5 karakterden olu�maktad�r?

SELECT COUNT(*) FROM country WHERE LENGTH(country) = 5

--5. city tablosundaki �ehir isimlerinin ka� tanesi 'R' veya r karakteri ile biter?

SELECT COUNT(*) FROM city WHERE LOWER(city) LIKE '%r'

--Patika SQL �dev 5

--1. film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi s�ralay�n�z.

SELECT title FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5

--2. film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en k�sa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) s�ralay�n�z.

SELECT title FROM film WHERE title LIKE '%n' ORDER BY length OFFSET 5 LIMIT 5

--3. customer tablosunda bulunan last_name s�tununa g�re azalan yap�lan s�ralamada store_id 1 olmak ko�uluyla ilk 4 veriyi s�ralay�n�z.

SELECT * FROM customer WHERE store_id = 1 ORDER BY last_name DESC LIMIT 4


--Patika SQL �dev 6

--1. film tablosunda bulunan rental_rate s�tunundaki de�erlerin ortalamas� nedir?

SELECT AVG(rental_rate) AS AVG FROM film

--2. film tablosunda bulunan filmlerden ka� tanesi 'C' karakteri ile ba�lar?

SELECT COUNT(title) FROM film WHERE title LIKE 'C%'

--3. film tablosunda bulunan filmlerden rental_rate de�eri 0.99 a e�it olan en uzun (length) film ka� dakikad�r?

SELECT MAX(length) FROM film WHERE rental_rate = 0.99

--4. film tablosunda bulunan filmlerin uzunlu�u 150 dakikadan b�y�k olanlar�na ait ka� farkl� replacement_cost de�eri vard�r?

SELECT COUNT(DISTINCT replacement_cost) FROM film WHERE length > 150


--Patika SQL �dev 7

--1. film tablosunda bulunan filmleri rating de�erlerine g�re gruplay�n�z.

SELECT rating, count(*) FROM film GROUP BY rating

--2. film tablosunda bulunan filmleri replacement_cost s�tununa g�re gruplad���m�zda film say�s� 50 den fazla olan replacement_cost de�erini ve kar��l�k gelen film say�s�n� s�ralay�n�z.

SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*) > 50

--3. customer tablosunda bulunan store_id de�erlerine kar��l�k gelen m��teri say�lar�n� nelerdir? 

SELECT store_id, COUNT(*) FROM customer  GROUP BY store_id

--4. city tablosunda bulunan �ehir verilerini country_id s�tununa g�re grupland�rd�ktan sonra en fazla �ehir say�s� bar�nd�ran country_id bilgisini ve �ehir say�s�n� payla��n�z.

SELECT country_id, COUNT(city) FROM city GROUP BY country_id ORDER BY COUNT(city) DESC LIMIT 1




--Patika SQL �dev 8

CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- �rnek 1: �sim g�ncelleme
UPDATE employee SET name = 'Yeni �sim' WHERE id = 1;

-- �rnek 2: Do�um tarihi g�ncelleme
UPDATE employee SET birthday = '1990-01-01' WHERE id = 2;

-- �rnek 3: E-posta g�ncelleme
UPDATE employee SET email = 'yeni@email.com' WHERE id = 3;

-- �rnek 4: �sim ve do�um tarihi g�ncelleme
UPDATE employee SET name = 'Yeni Ad', birthday = '1985-05-05' WHERE id = 4;

-- �rnek 5: �sim ve e-posta g�ncelleme
UPDATE employee SET name = 'Yeni �sim', email = 'yeni@email.com' WHERE id = 5;


-- �rnek 1: �lk sat�r� silme
DELETE FROM employee WHERE id = 1;

-- �rnek 2: Belirli bir do�um tarihine sahip sat�r� silme
DELETE FROM employee WHERE birthday = '1990-01-01';

-- �rnek 3: Belirli bir e-posta adresine sahip sat�r� silme
DELETE FROM employee WHERE email = 'silinecek@email.com';

-- �rnek 4: �sim ve do�um tarihine g�re sat�r silme
DELETE FROM employee WHERE name = 'Silinecek �sim' AND birthday = '1985-05-05';

-- �rnek 5: Belirli bir ID'ye sahip sat�r� silme
DELETE FROM employee WHERE id = 5;



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




--Patika SQL �dev 12

--film tablosunda film uzunlu�u (length) s�tununda g�sterilen filmlerin ortalama uzunlu�undan fazla ka� tane film vard�r?

SELECT COUNT(*) AS film_count
FROM film
WHERE length > (SELECT AVG(length) FROM film);

--film tablosunda en y�ksek rental_rate de�erine sahip ka� tane film vard�r?
SELECT COUNT(*) AS film_count
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

--film tablosunda en d���k rental_rate ve en d���k replacement_cost de�erlerine sahip filmleri s�ralay�n�z.
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

--payment tablosunda en fazla say�da al��veri� yapan m��terileri(customer) s�ralay�n�z.
  SELECT customer_id, COUNT(*) AS transaction_count
FROM payment
GROUP BY customer_id
ORDER BY transaction_count DESC
LIMIT 10; -- �rne�in, en fazla 10 al��veri� yapan m��terileri getiriyoruz.
