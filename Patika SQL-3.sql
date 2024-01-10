--Patika SQL �dev 3


--1. country tablosunda bulunan country s�tunundaki �lke isimlerinden 'A' karakteri ile ba�lay�p 'a' karakteri ile sonlananlar� s�ralay�n�z.

SELECT country FROM country WHERE country LIKE 'A%a'

--2. country tablosunda bulunan country s�tunundaki �lke isimlerinden en az 6 karakterden olu�an ve sonu 'n' karakteri ile sonlananlar� s�ralay�n�z.

SELECT country, LENGTH(country) FROM country WHERE LENGTH(country) >=6 AND country LIKE '%n'

--3. film tablosunda bulunan title s�tunundaki film isimlerinden en az 4 adet b�y�k ya da k���k harf farketmesizin 'T' karakteri i�eren film isimlerini s�ralay�n�z.

SELECT title FROM film WHERE LOWER(title) ILIKE '%t%t%t%t%'

--4. film tablosunda bulunan t�m s�tunlardaki verilerden title 'C' karakteri ile ba�layan ve uzunlu�u (length) 90 dan b�y�k olan ve rental_rate 2.99 olan verileri s�ralay�n�z.

SELECT * FROM film WHERE title LIKE 'C%' AND LENGTH(title) > 90 AND rental_rate = 2.99