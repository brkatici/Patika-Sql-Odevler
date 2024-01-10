--Patika SQL Ödev 7

--1. film tablosunda bulunan filmleri rating deðerlerine göre gruplayýnýz.

SELECT rating, count(*) FROM film GROUP BY rating

--2. film tablosunda bulunan filmleri replacement_cost sütununa göre grupladýðýmýzda film sayýsý 50 den fazla olan replacement_cost deðerini ve karþýlýk gelen film sayýsýný sýralayýnýz.

SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*) > 50

--3. customer tablosunda bulunan store_id deðerlerine karþýlýk gelen müþteri sayýlarýný nelerdir? 

SELECT store_id, COUNT(*) FROM customer  GROUP BY store_id

--4. city tablosunda bulunan þehir verilerini country_id sütununa göre gruplandýrdýktan sonra en fazla þehir sayýsý barýndýran country_id bilgisini ve þehir sayýsýný paylaþýnýz.

SELECT country_id, COUNT(city) FROM city GROUP BY country_id ORDER BY COUNT(city) DESC LIMIT 1