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
--identity(1,1) - määrab: ingaühele oma numbri --väli täidetakse automaatselt

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
-----------

--tabeli rühm loomine
CREATE TABLE ryhm(
ryhmId int Primary key identity (1,1),
ryhmNimetus varchar(20) UNIQUE,
osakond char(3));

Select * from ryhm;
SELECT * FROM opilane;

INSERT INTO ryhm (ryhmNimetus,osakond,juhatajaID)
VALUES ('TARpv23','IT',2);


--FOREIGN KEY --> PK teises tabelis
ALTER TABLE opilane ADD ryhmID int;

--tabeli opilane uuendamine
Update opilane SET ryhmId=2;

--Fk lisamine opilane tabelisse
ALTER TABLE opilane
ADD FOREIGN KEY (ryhmID) REFERENCES ryhm(ryhmID);

INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumis_kp,ryhmId)
VALUES
('Test','Test','5855301','Tallinn','2023-08-26',1);
SELECT * FROM opilane;

--Drop table nazvanie, Alter table.... drop column....
--telefon varchar(15)
--tabeli ryhmajuhataja loomine
CREATE TABLE ryhmajuhataja(
juhatajaId int Primary key identity (1,1),
eesnimi varchar(20),
perenimi varchar(20),
telefon varchar(20),
);
SELECT * FROM ryhmajuhataja;

INSERT INTO ryhmajuhataja(eesnimi, perenimi, telefon)
VALUES ('Art','Log','621092');
SELECT * FROM ryhmajuhataja;
select * from ryhm

--veergu lisamine tabelisse
ALTER TABLE ryhm add juhatajaID int;
--tabeli ryhm uuendamine
Update ryhm SET juhatajaID=1;

ALTER TABLE ryhm
ADD FOREIGN KEY (juhatajaID) REFERENCES ryhmajuhataja(juhatajaID);

INSERT INTO ryhm (ryhmNimetus,osakond,juhatajaID)
VALUES ('TARpv22','IT',1);

--tabeli hinnad loomine
CREATE TABLE hinnad(
hinnangID int Primary key identity (1,1),
kuupaeb date,
id int,
juhatajaID int,
hinnang text
);

SELECT * FROM hinnad

INSERT INTO hinnad(kuupaeb,id,juhatajaID,hinnang)
VALUES('2023-08-26',1,1,'4');

ALTER TABLE hinnad
ADD FOREIGN KEY (id) REFERENCES opilane(id);

ALTER TABLE hinnad
ADD FOREIGN KEY (juhatajaid) REFERENCES ryhmajuhataja(juhatajaid);

