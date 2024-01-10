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