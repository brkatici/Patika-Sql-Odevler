--Patika SQL Ödev 3


--1. country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile baþlayýp 'a' karakteri ile sonlananlarý sýralayýnýz.

SELECT country FROM country WHERE country LIKE 'A%a'

--2. country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluþan ve sonu 'n' karakteri ile sonlananlarý sýralayýnýz.

SELECT country, LENGTH(country) FROM country WHERE LENGTH(country) >=6 AND country LIKE '%n'

--3. film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sýralayýnýz.

SELECT title FROM film WHERE LOWER(title) ILIKE '%t%t%t%t%'

--4. film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile baþlayan ve uzunluðu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sýralayýnýz.

SELECT * FROM film WHERE title LIKE 'C%' AND LENGTH(title) > 90 AND rental_rate = 2.99