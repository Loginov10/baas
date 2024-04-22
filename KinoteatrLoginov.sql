CREATE DATABASE KinoteatrLoginov;
Use KinoteatrLoginov;

---Tabeli loomine zanr .
CREATE TABLE zanr(
	zanrId int Primary Key identity(1,1),
	zanrNimi varchar(25),
	zanrKirjeldus TEXT)
INSERT INTO zanr (zanrNimi, zanrKirjeldus)
VALUES ('komöödia', 'naeruväärne'), ('perekonna', 'väga ilus'), ('õudus', 'väga hirmutav'), ('Ilukirjandus', 'Põnev'), ('Cartoon', 'Põnev')
SELECT * FROM zanr

---Tabeli loomine filmType.
CREATE TABLE filmType(
	filmTypeId int Primary Key identity(1,1),
	filmType varchar(25),
	kirjeldus TEXT)
INSERT INTO filmType (filmType, kirjeldus)
VALUES ('3D', 'väga põnev 3D efekt'), ('2D', 'väSga põnev 2D efekt'), ('1D', 'väga põnev 1D efekt'), ('4D', 'väga põnev 4D efekt'), ('5D', 'väga põnev 5D efekt')
SELECT * FROM filmType

---Tabeli loomine rezisor.
CREATE TABLE rezisor(
	resizorId int Primary Key identity(1,1),
	eesnimi varchar(25),
	perenimi varchar(25))
INSERT INTO rezisor (eesnimi, perenimi)
VALUES ('Artjom', 'loginov'), ('Ahmed', 'Kojev'), ('Geor', 'Kain'), ('Stas', 'Aladin')
SELECT * FROM rezisor

---Tabeli loomine piletiMyyk.
CREATE TABLE piletiMyyk(
	piletiMyykId int Primary Key identity(1,1),
	kogus int,
	kinokavaId int)
INSERT INTO piletiMyyk (kogus, kinokavaId)
VALUES (11, 3)
SELECT * FROM piletiMyyk


---Tabeli loomine kinokava.
CREATE TABLE kinokava(
	kinokavaId int Primary Key identity(1,1),
	kuupaev varchar(40),
	filmNimetus int,
	piletihind int)
INSERT INTO kinokava (kuupaev, filmNimetus, piletihind)
VALUES ('september',  1, 10)
SELECT * FROM kinokava
drop table kinokava

---Tabeli loomine film.
CREATE TABLE film(
	filmId int Primary Key identity(1,1),
	filmNimetus varchar(25),
	zanrId int,
	pikkus int,
	rezisorId int,
	filmTypeId int,
	reklaam image)
INSERT INTO film (filmNimetus, pikkus, zanrId, rezisorId, filmTypeId)
VALUES ('Aladina', 12, 1, 1, 5)
SELECT * FROM film

---FK: film-->filmType
ALTER TABLE film ADD FOREIGN KEY (filmTypeId) REFERENCES filmType(filmTypeId);

---FK: film-->rezisorId
ALTER TABLE film ADD FOREIGN KEY (rezisorId) REFERENCES rezisor(resizorId);

---FK: film-->zanrId
ALTER TABLE film ADD FOREIGN KEY (zanrId) REFERENCES zanr(zanrId);

---FK: kinokava-->filmId
ALTER TABLE kinokava ADD FOREIGN KEY (filmNimetus) REFERENCES film(filmId);

---FK: piletiMyyk-->kinokavaId
ALTER TABLE piletiMyyk ADD FOREIGN KEY (kinokavaId) REFERENCES kinokava(kinokavaId);
