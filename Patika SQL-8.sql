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
