-- Öğrenci şeması
CREATE TABLE ogrenci (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    counter INT,
    createdTime VARCHAR(100),
    updatedTime VARCHAR(100),
    gender VARCHAR(20),
    phoneNumber VARCHAR(20),
);

-- Bölüm şeması
CREATE TABLE bolum (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    createdTime VARCHAR(100),
    updatedTime VARCHAR(100),
    faculty VARCHAR(100)
);

CREATE TABLE Ogrenci_Sayac (
    counter int
);
----Admin Şeması

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(30),
    password VARCHAR(255),
    role varchar(20)
);

------------------------------------
ALTER TABLE
    bolum
ADD
    COLUMN dept_std_id INT UNIQUE,
ADD
    CONSTRAINT fk_dept_std_id FOREIGN KEY (dept_std_id) REFERENCES ogrenci(id);

ALTER TABLE ogrenci
ADD COLUMN deptid INT,
ADD CONSTRAINT fk_deptid FOREIGN KEY (deptid) REFERENCES bolum(id);