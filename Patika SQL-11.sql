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
