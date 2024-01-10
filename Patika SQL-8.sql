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
