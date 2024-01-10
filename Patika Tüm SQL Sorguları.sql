--Patika SQL Ödev 1

--1. film tablosunda bulunan title ve description sütunlarýndaki verileri sýralayýnýz.

SELECT title, description FROM film

--2. film tablosunda bulunan tüm sütunlardaki verileri film uzunluðu (length) 60 dan büyük VE 75 ten küçük olma koþullarýyla sýralayýnýz.

SELECT * FROM film WHERE length > 60 AND length < 75

--3. film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koþullarýyla sýralayýnýz.

SELECT * FROM film Where rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99)

--4. customer tablosunda bulunan first_name sütunundaki deðeri 'Mary' olan müþterinin last_name sütunundaki deðeri nedir?

SELECT last_name FROM customer Where first_name = 'Mary'

--5. film tablosundaki uzunluðu(length) 50 ten büyük OLMAYIP ayný zamanda rental_rate deðeri 2.99 veya 4.99 OLMAYAN verileri sýralayýnýz.

SELECT * FROM film WHERE length <= 50 AND (rental_rate <> 2.99 OR rental_rate <> 4.99 )





--Patika SQL Ödev 2

--1. film tablosunda bulunan tüm sütunlardaki verileri replacement cost deðeri 12.99 dan büyük eþit ve 16.99 küçük olma koþuluyla sýralayýnýz ( BETWEEN - AND yapýsýný kullanýnýz.)

SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99

--2. actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' deðerleri olmasý koþuluyla sýralayýnýz. ( IN operatörünü kullanýnýz.)

SELECT * FROM actor WHERE first_name IN ('Penelope', 'Nick', 'Ed')

--3. film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koþullarýyla sýralayýnýz. ( IN operatörünü kullanýnýz.)

SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99)




--Patika SQL Ödev 3


--1. country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile baþlayýp 'a' karakteri ile sonlananlarý sýralayýnýz.

SELECT country FROM country WHERE country LIKE 'A%a'

--2. country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluþan ve sonu 'n' karakteri ile sonlananlarý sýralayýnýz.

SELECT country, LENGTH(country) FROM country WHERE LENGTH(country) >=6 AND country LIKE '%n'

--3. film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sýralayýnýz.

SELECT title FROM film WHERE LOWER(title) ILIKE '%t%t%t%t%'

--4. film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile baþlayan ve uzunluðu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sýralayýnýz.

SELECT * FROM film WHERE title LIKE 'C%' AND LENGTH(title) > 90 AND rental_rate = 2.99


--Patika SQL Ödev 4

--1. film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklý deðerleri sýralayýnýz.

SELECT DISTINCT replacement_cost FROM film

--2. film tablosunda bulunan replacement_cost sütununda birbirinden farklý kaç tane veri vardýr?

SELECT COUNT(DISTINCT replacement_cost) FROM film

--3. film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile baþlar ve ayný zamanda rating 'G' ye eþittir?

SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND rating = 'G'

--4. country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluþmaktadýr?

SELECT COUNT(*) FROM country WHERE LENGTH(country) = 5

--5. city tablosundaki þehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?

SELECT COUNT(*) FROM city WHERE LOWER(city) LIKE '%r'

--Patika SQL Ödev 5

--1. film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sýralayýnýz.

SELECT title FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5

--2. film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kýsa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sýralayýnýz.

SELECT title FROM film WHERE title LIKE '%n' ORDER BY length OFFSET 5 LIMIT 5

--3. customer tablosunda bulunan last_name sütununa göre azalan yapýlan sýralamada store_id 1 olmak koþuluyla ilk 4 veriyi sýralayýnýz.

SELECT * FROM customer WHERE store_id = 1 ORDER BY last_name DESC LIMIT 4


--Patika SQL Ödev 6

--1. film tablosunda bulunan rental_rate sütunundaki deðerlerin ortalamasý nedir?

SELECT AVG(rental_rate) AS AVG FROM film

--2. film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile baþlar?

SELECT COUNT(title) FROM film WHERE title LIKE 'C%'

--3. film tablosunda bulunan filmlerden rental_rate deðeri 0.99 a eþit olan en uzun (length) film kaç dakikadýr?

SELECT MAX(length) FROM film WHERE rental_rate = 0.99

--4. film tablosunda bulunan filmlerin uzunluðu 150 dakikadan büyük olanlarýna ait kaç farklý replacement_cost deðeri vardýr?

SELECT COUNT(DISTINCT replacement_cost) FROM film WHERE length > 150


--Patika SQL Ödev 7

--1. film tablosunda bulunan filmleri rating deðerlerine göre gruplayýnýz.

SELECT rating, count(*) FROM film GROUP BY rating

--2. film tablosunda bulunan filmleri replacement_cost sütununa göre grupladýðýmýzda film sayýsý 50 den fazla olan replacement_cost deðerini ve karþýlýk gelen film sayýsýný sýralayýnýz.

SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*) > 50

--3. customer tablosunda bulunan store_id deðerlerine karþýlýk gelen müþteri sayýlarýný nelerdir? 

SELECT store_id, COUNT(*) FROM customer  GROUP BY store_id

--4. city tablosunda bulunan þehir verilerini country_id sütununa göre gruplandýrdýktan sonra en fazla þehir sayýsý barýndýran country_id bilgisini ve þehir sayýsýný paylaþýnýz.

SELECT country_id, COUNT(city) FROM city GROUP BY country_id ORDER BY COUNT(city) DESC LIMIT 1




--Patika SQL Ödev 8

CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- Örnek 1: Ýsim güncelleme
UPDATE employee SET name = 'Yeni Ýsim' WHERE id = 1;

-- Örnek 2: Doðum tarihi güncelleme
UPDATE employee SET birthday = '1990-01-01' WHERE id = 2;

-- Örnek 3: E-posta güncelleme
UPDATE employee SET email = 'yeni@email.com' WHERE id = 3;

-- Örnek 4: Ýsim ve doðum tarihi güncelleme
UPDATE employee SET name = 'Yeni Ad', birthday = '1985-05-05' WHERE id = 4;

-- Örnek 5: Ýsim ve e-posta güncelleme
UPDATE employee SET name = 'Yeni Ýsim', email = 'yeni@email.com' WHERE id = 5;


-- Örnek 1: Ýlk satýrý silme
DELETE FROM employee WHERE id = 1;

-- Örnek 2: Belirli bir doðum tarihine sahip satýrý silme
DELETE FROM employee WHERE birthday = '1990-01-01';

-- Örnek 3: Belirli bir e-posta adresine sahip satýrý silme
DELETE FROM employee WHERE email = 'silinecek@email.com';

-- Örnek 4: Ýsim ve doðum tarihine göre satýr silme
DELETE FROM employee WHERE name = 'Silinecek Ýsim' AND birthday = '1985-05-05';

-- Örnek 5: Belirli bir ID'ye sahip satýrý silme
DELETE FROM employee WHERE id = 5;



--Patika SQL Ödev 9

-- Örnek 1: 

SELECT city.city, country.country
FROM city
INNER JOIN country ON city.countrycode = country.countrycode;

-- Örnek 2:

SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id;

-- Örnek 3:

SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id;



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





--Patika SQL Ödev 11

--actor ve customer tablolarýnda bulunan "first_name" sütunlarý için tüm verileri sýralama:
-- actor tablosu için
SELECT first_name FROM actor;

-- customer tablosu için
SELECT first_name FROM customer;

--actor ve customer tablolarýnda bulunan "first_name" sütunlarý için kesiþen verileri sýralama:
SELECT actor.first_name
FROM actor
JOIN customer ON actor.first_name = customer.first_name;


--actor ve customer tablolarýnda bulunan "first_name" sütunlarý için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sýralama:
-- actor tablosunda, customer tablosunda olmayan first_name'leri sýralama
SELECT actor.first_name
FROM actor
LEFT JOIN customer ON actor.first_name = customer.first_name
WHERE customer.first_name IS NULL;

-- customer tablosunda, actor tablosunda olmayan first_name'leri sýralama
SELECT customer.first_name
FROM customer
LEFT JOIN actor ON customer.first_name = actor.first_name
WHERE actor.first_name IS NULL;


--Ýlk 3 sorguyu tekrar eden veriler için:
-- actor tablosu için tüm verileri sýralama
SELECT first_name FROM actor;

-- customer tablosu için tüm verileri sýralama
SELECT first_name FROM customer;

-- actor ve customer tablolarýnda bulunan first_name sütunlarý için kesiþen verileri sýralama
SELECT actor.first_name
FROM actor
JOIN customer ON actor.first_name = customer.first_name;

-- actor tablosunda, customer tablosunda olmayan first_name'leri sýralama
SELECT actor.first_name
FROM actor
LEFT JOIN customer ON actor.first_name = customer.first_name
WHERE customer.first_name IS NULL;

-- customer tablosunda, actor tablosunda olmayan first_name'leri sýralama
SELECT customer.first_name
FROM customer
LEFT JOIN actor ON customer.first_name = actor.first_name
WHERE actor.first_name IS NULL;




--Patika SQL Ödev 12

--film tablosunda film uzunluðu (length) sütununda gösterilen filmlerin ortalama uzunluðundan fazla kaç tane film vardýr?

SELECT COUNT(*) AS film_count
FROM film
WHERE length > (SELECT AVG(length) FROM film);

--film tablosunda en yüksek rental_rate deðerine sahip kaç tane film vardýr?
SELECT COUNT(*) AS film_count
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

--film tablosunda en düþük rental_rate ve en düþük replacement_cost deðerlerine sahip filmleri sýralayýnýz.
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

--payment tablosunda en fazla sayýda alýþveriþ yapan müþterileri(customer) sýralayýnýz.
  SELECT customer_id, COUNT(*) AS transaction_count
FROM payment
GROUP BY customer_id
ORDER BY transaction_count DESC
LIMIT 10; -- Örneðin, en fazla 10 alýþveriþ yapan müþterileri getiriyoruz.
