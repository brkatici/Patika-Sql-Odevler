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