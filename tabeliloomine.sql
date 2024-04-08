SQL SERVER MANAGEMENT STUUDIO

CREATE DATABASE LoginovLogitpv22;
--ab loomine

USE LoginovLogitpv22;
--tabeli loomine
CREATE TABLE opilane(
id int Primary key identity (1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date
);
--primary key - primaarne võti mis annab unikaalsus
--identity(1,1) - määrab: ingaühele oma numbri

SELECT * FROM opilane;

--andmete lisamine
INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp)
VALUES
('Kiki','Trub','5853201','Tallinn','2023-08-26'),
('Lame','Hekko','5878321','Tallinn','2023-08-26');
SELECT * FROM opilane;

---------------------------------------------

CREATE TABLE language
(
ID int NOT NULL PRIMARY KEY,
Code char NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
Percentage decimal(5, 2)
);

--tabeliandmete lisamine
Select * FROM language;
INSERT INTO language (ID, Code, Language, IsOfficial, Percentage)
VALUES (100, 'EST','Eesti', 1, 80.5);

--tabeli struktuuri muutmine
ALTER TABLE Language ADD Capital varchar(20);

--veergu kustutamine
ALTER TABLE Language DROP COLUMN Capital;

INSERT INTO language (ID, Code, Language, IsOfficial, Percentage, Capital)
VALUES (101, 'FIN','Soome', 1, 96.5,'Helsingi');

--uuendamine
UPDATE language SET Capital= 'Tallinn'
WHERE ID=100;

--tabeli kustutamine
DROP TABLE language;