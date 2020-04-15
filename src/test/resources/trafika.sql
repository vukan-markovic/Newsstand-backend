-- Kreiranje šeme ako prethodno ne postoji

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE NAME = 'trafika')
BEGIN
EXEC('CREATE SCHEMA trafika')
END

-- Brisanje tabela ako prethodno postoje

IF OBJECT_ID ('trafika.StavkaRacuna', 'U') IS NOT NULL
DROP TABLE trafika.StavkaRacuna;

IF OBJECT_ID ('trafika.StavkaPorudzbine', 'U') IS NOT NULL
DROP TABLE trafika.StavkaPorudzbine;

IF OBJECT_ID ('trafika.Izvestaj', 'U') IS NOT NULL
DROP TABLE trafika.Izvestaj;

IF OBJECT_ID ('trafika.Porudzbina', 'U') IS NOT NULL
DROP TABLE trafika.Porudzbina;

IF OBJECT_ID ('trafika.Menadzer', 'U') IS NOT NULL
DROP TABLE trafika.Menadzer;

IF OBJECT_ID ('trafika.Racun', 'U') IS NOT NULL
DROP TABLE trafika.Racun;

IF OBJECT_ID ('trafika.Proizvod', 'U') IS NOT NULL
DROP TABLE trafika.Proizvod;

IF OBJECT_ID ('trafika.VrstaProizvoda', 'U') IS NOT NULL
DROP TABLE trafika.VrstaProizvoda;

IF OBJECT_ID ('trafika.Proizvodjac', 'U') IS NOT NULL
DROP TABLE trafika.Proizvodjac;

IF OBJECT_ID ('trafika.Prodavac', 'U') IS NOT NULL
DROP TABLE trafika.Prodavac;

IF OBJECT_ID ('trafika.Dobavljac', 'U') IS NOT NULL
DROP TABLE trafika.Dobavljac;

IF OBJECT_ID ('trafika.Korisnik', 'U') IS NOT NULL
DROP TABLE trafika.Korisnik;

-- Kreiranje tabela

CREATE TABLE trafika.Korisnik (
	korisnikID INT, 
	email NVARCHAR(30) NOT NULL,
	lozinka NVARCHAR(20) NOT NULL,
	autentifikacioniToken NVARCHAR(50),
	uloga NVARCHAR(15) NOT NULL,
	CONSTRAINT PK_Korisnik_korisnikID primary key (korisnikID), 
	CONSTRAINT CHK_Korisnik_uloga CHECK (lower(uloga) in ('prodavac', 'dobavljac', 'menadzer'))
);

CREATE TABLE trafika.Dobavljac (
	dobavljacID INT,
	skraceniNaziv NVARCHAR(10) NOT NULL, 
	punNaziv NVARCHAR(50), 
	kontaktDobavljaca NVARCHAR(20) NOT NULL,
	adresaDobavljaca NVARCHAR(50) NOT NULL,
	grad NVARCHAR(20),
	drzava NVARCHAR(30), 
	postanskiBroj NVARCHAR(20) NOT NULL,
	PIB NUMERIC(9) NOT NULL, 
	kontaktOsoba NVARCHAR(50), 
	brojZiroRacuna NVARCHAR(30),
	CONSTRAINT PK_Dobavljac_dobavljacID PRIMARY KEY (dobavljacID),
	CONSTRAINT FK_Dobavljac_Korisnik FOREIGN KEY (dobavljacID) REFERENCES trafika.Korisnik (korisnikID) ON DELETE CASCADE, 
	CONSTRAINT UQ_Dobavljac_PIB UNIQUE (PIB),
	CONSTRAINT CHK_Dobavljac_PIB CHECK (PIB BETWEEN 100000010 AND 999999999)
);

CREATE TABLE trafika.Prodavac (
	prodavacID INT,
	ime NVARCHAR(20) NOT NULL,
	prezime NVARCHAR(30) NOT NULL, 
	pol NVARCHAR(10) NOT NULL, 
	datumRodjenja DATE NOT NULL,
	adresaStanovanja NVARCHAR(50),
	telefon NVARCHAR(20),
	JMBG NCHAR(13) NOT NULL,
	datumZaposlenja DATE,
	strucnaSprema NVARCHAR(20) NOT NULL,
	CONSTRAINT PK_Prodavac_prodavacID PRIMARY KEY (prodavacID),
	CONSTRAINT FK_Prodavac_Korisnik FOREIGN KEY (prodavacID) REFERENCES trafika.Korisnik (korisnikID) ON DELETE CASCADE,
	CONSTRAINT UQ_Prodavac_JMBG UNIQUE (JMBG),
	CONSTRAINT CHK_Prodavac_datumRodjenja_datumZaposlenja CHECK (datumRodjenja < datumZaposlenja)
);

CREATE TABLE trafika.Proizvodjac (
	proizvodjacID INT,
	nazivProizvodjaca NVARCHAR(50) NOT NULL, 
	kontaktProizvodjaca NVARCHAR(20), 
	adresaProizvodjaca NVARCHAR(50),
	CONSTRAINT PK_Proizvodjac_proizvodjacID PRIMARY KEY (proizvodjacID)
);

CREATE TABLE trafika.VrstaProizvoda (
	vrstaProizvodaID INT,
	nazivVrsteProizvoda NVARCHAR(30) NOT NULL,
	opisVrsteProizvoda NVARCHAR(100),
	CONSTRAINT PK_VrstaProizvoda_vrstaProizvodaID PRIMARY KEY (vrstaProizvodaID)
);

CREATE TABLE trafika.Proizvod (
	proizvodID INT,
	nazivProizvoda NVARCHAR(30) NOT NULL,
	opisProizvoda NVARCHAR(100),
	cena NUMERIC(10, 2) NOT NULL,
	tipPakovanja NVARCHAR(20),
	velicinaPakovanja NVARCHAR(20),
	barKod NVARCHAR(20) NOT NULL,
	masa NUMERIC(10, 2),
	raspolozivaKolicina INT NOT NULL CONSTRAINT DFT_Proizvod_raspolozivaKolicina DEFAULT(0),
	proizvodjacID INT NOT NULL,
	vrstaProizvodaID INT NOT NULL,
	CONSTRAINT PK_Proizvod_proizvodID PRIMARY KEY (proizvodID),
	CONSTRAINT FK_Proizvod_Proizvodjac FOREIGN KEY (proizvodjacID) REFERENCES trafika.Proizvodjac (proizvodjacID),
	CONSTRAINT FK_Proizvod_VrstaProizvoda FOREIGN KEY (vrstaProizvodaID) REFERENCES trafika.VrstaProizvoda (vrstaProizvodaID),
	CONSTRAINT CHK_Proizvod_cena CHECK (cena > 0),
	CONSTRAINT CHK_Proizvod_masa CHECK (masa > 0),
	CONSTRAINT CHK_Proizvod_raspolozivaKolicina CHECK (raspolozivaKolicina >= 0)
);

CREATE TABLE trafika.Racun (
	racunID INT,
	vremeIzdavanja SMALLDATETIME NOT NULL CONSTRAINT DFT_Racun_vremeIzdavanja DEFAULT(CAST(GETDATE() AS SMALLDATETIME)),
	mestoIzdavanja NVARCHAR(20),
	ukupanIznosRacuna NUMERIC(10, 2) CONSTRAINT DFT_Racun_ukupanIznosRacuna DEFAULT(0),
	nazivProdavnice NVARCHAR(50) NOT NULL,
	nacinPlacanja NVARCHAR(20) NOT NULL,
	brojRacuna NVARCHAR(20) NOT NULL, 
	tipRacuna NVARCHAR(30),
	prodavacID INT NOT NULL,
	CONSTRAINT PK_Racun_racunID PRIMARY KEY (racunID),
	CONSTRAINT FK_Racun_Prodavac FOREIGN KEY (prodavacID) REFERENCES trafika.Prodavac (prodavacID),
	CONSTRAINT UQ_Racun_brojRacuna UNIQUE (brojRacuna),
	CONSTRAINT CHK_Racun_ukupanIznosRacuna CHECK (ukupanIznosRacuna >= 0),
	CONSTRAINT CHK_Racun_nacinPlacanja CHECK (lower(nacinPlacanja) in ('gotovina', 'kartica'))
);

CREATE TABLE trafika.Menadzer (
	menadzerID INT, 
	adresaKancelarije NVARCHAR(50) NOT NULL,
	brojKanclarije NVARCHAR(5),
	CONSTRAINT PK_Menadzer_menadzerID PRIMARY KEY (menadzerID),
	CONSTRAINT FK_Menadzer_Korisnik FOREIGN KEY (menadzerID) REFERENCES trafika.Korisnik (korisnikID) ON DELETE CASCADE
);

CREATE TABLE trafika.Porudzbina (
	porudzbinaID INT, 
	datumPorucivanja SMALLDATETIME NOT NULL CONSTRAINT DFT_Porudzbina_datumPorucivanja DEFAULT(CAST(GETDATE() AS SMALLDATETIME)), 
	datumIsporuke SMALLDATETIME, 
	ukupanIznosPorudzbine NUMERIC(10, 2) CONSTRAINT DFT_Porudzbina_ukupanIznosPorudzbine DEFAULT(0), 
	statusPorudzbine NVARCHAR(15) NOT NULL CONSTRAINT DFT_Porudzbina_statusPorudzbine DEFAULT('poruceno'),
	dobavljacID INT NOT NULL,
	menadzerID INT NOT NULL,
	prodavacID INT NOT NULL,
	CONSTRAINT PK_Porudzbina_porudzbinaID PRIMARY KEY (porudzbinaID),
	CONSTRAINT FK_Porudzbina_Dobavljac FOREIGN KEY (dobavljacID) REFERENCES trafika.Dobavljac (dobavljacID),
	CONSTRAINT FK_Porudzbina_Menadzer FOREIGN KEY (menadzerID) REFERENCES trafika.Menadzer (menadzerID),
	CONSTRAINT FK_Porudzbina_Prodavac FOREIGN KEY (prodavacID) REFERENCES trafika.Prodavac (prodavacID),
	CONSTRAINT CHK_Porudzbina_ukupanIznosPorudzbine CHECK (ukupanIznosPorudzbine >= 0),
	CONSTRAINT CHK_Porudzbina_datumPorucivanja_datumIsporuke CHECK (datumPorucivanja <= datumIsporuke),
	CONSTRAINT CHK_Porudzbina_statusPorudzbine CHECK (lower(statusPorudzbine) in ('poruceno', 'kompletirano', 'reklamacija'))
);

CREATE TABLE trafika.Izvestaj (
	izvestajID INT, 
	promet NUMERIC(10, 2) CONSTRAINT DFT_Izvestaj_promet DEFAULT(0), 
	brojKupovina INT CONSTRAINT DFT_Izvestaj_brojKupovina DEFAULT(0), 
	datumOd DATE NOT NULL CONSTRAINT DFT_Izvestaj_datumOd DEFAULT(CAST(GETDATE() AS DATE)),
	datumDo DATE NOT NULL,
	menadzerID INT NOT NULL,
	CONSTRAINT PK_Izvestaj_izvestajID PRIMARY KEY (izvestajID),
	CONSTRAINT FK_Izvestaj_Menadzer FOREIGN KEY (menadzerID) REFERENCES trafika.Menadzer (menadzerID),
	CONSTRAINT CHK_Izvestaj_promet CHECK (promet >= 0),
	CONSTRAINT CHK_Izvestaj_brojKupovina CHECK (brojKupovina >= 0),
	CONSTRAINT CHK_Izvestaj_datumOd_datumDo CHECK (datumOd <= datumDo)
);

CREATE TABLE trafika.StavkaPorudzbine (
	porudzbinaID INT, 
	proizvodID INT,
	kolicina INT NOT NULL, 
	nabavnaCena NUMERIC(10, 2) CONSTRAINT DFT_StavkaPorudzbine_nabavnaCena DEFAULT(0),
	CONSTRAINT PK_StavkaPorudzbine_porudzbinaID_proizvodID PRIMARY KEY (porudzbinaID, proizvodID),
	CONSTRAINT FK_StavkaPorudzbine_Porudzbina FOREIGN KEY (porudzbinaID) REFERENCES trafika.Porudzbina (porudzbinaID),
	CONSTRAINT FK_StavkaPorudzbine_Proizvod FOREIGN KEY (proizvodID) REFERENCES trafika.Proizvod (proizvodID),
	CONSTRAINT CHK_StavkaPorudzbine_kolicina CHECK (kolicina > 0),
	CONSTRAINT CHK_StavkaPorudzbine_nabavnaCena CHECK (nabavnaCena >= 0)
);

CREATE TABLE trafika.StavkaRacuna (
	racunID INT, 
	proizvodID INT, 
	kolicinaProizvoda INT NOT NULL, 
	prodajnaCena NUMERIC(10, 2) CONSTRAINT DFT_StavkaRacuna_prodajnaCena DEFAULT(0),
	CONSTRAINT PK_StavkaRacuna_racunID_proizvodID PRIMARY KEY (racunID, proizvodID),
	CONSTRAINT FK_StavkaRacuna_Racun FOREIGN KEY (racunID) REFERENCES trafika.Racun (racunID),
	CONSTRAINT FK_StavkaRacuna_Proizvod FOREIGN KEY (proizvodID) REFERENCES trafika.Proizvod (proizvodID),
	CONSTRAINT CHK_StavkaRacuna_kolicinaProizvoda CHECK (kolicinaProizvoda > 0),
	CONSTRAINT CHK_StavkaRacuna_prodajnaCena CHECK (prodajnaCena >= 0)
);

-- Brisanje sekvenci ako prethodno postoje

IF OBJECT_ID ('trafika.Korisnik_seq', 'SO') IS NOT NULL
DROP SEQUENCE trafika.Korisnik_seq;

IF OBJECT_ID ('trafika.Proizvodjac_seq', 'SO') IS NOT NULL
DROP SEQUENCE trafika.Proizvodjac_seq;

IF OBJECT_ID ('trafika.VrstaProizvoda_seq', 'SO') IS NOT NULL
DROP SEQUENCE trafika.VrstaProizvoda_seq;

IF OBJECT_ID ('trafika.Proizvod_seq', 'SO') IS NOT NULL
DROP SEQUENCE trafika.Proizvod_seq;

IF OBJECT_ID ('trafika.Racun_seq', 'SO') IS NOT NULL
DROP SEQUENCE trafika.Racun_seq;

IF OBJECT_ID ('trafika.Porudzbina_seq', 'SO') IS NOT NULL
DROP SEQUENCE trafika.Porudzbina_seq;

IF OBJECT_ID ('trafika.Izvestaj_seq', 'SO') IS NOT NULL
DROP SEQUENCE trafika.Izvestaj_seq;

-- Kreiranje sekvenci

CREATE SEQUENCE trafika.Korisnik_seq AS INT
START WITH 1 
MINVALUE 1 
INCREMENT BY 1 
CYCLE;

CREATE SEQUENCE trafika.Proizvodjac_seq AS INT
START WITH 1 
MINVALUE 1 
INCREMENT BY 1 
CYCLE;

CREATE SEQUENCE trafika.VrstaProizvoda_seq AS INT
START WITH 1 
MINVALUE 1 
INCREMENT BY 1 
CYCLE;

CREATE SEQUENCE trafika.Proizvod_seq AS INT
START WITH 1 
MINVALUE 1 
INCREMENT BY 1 
CYCLE;

CREATE SEQUENCE trafika.Racun_seq AS INT
START WITH 1 
MINVALUE 1 
INCREMENT BY 1 
CYCLE;

CREATE SEQUENCE trafika.Porudzbina_seq AS INT
START WITH 1 
MINVALUE 1 
INCREMENT BY 1 
CYCLE;

CREATE SEQUENCE trafika.Izvestaj_seq AS INT
START WITH 1 
MINVALUE 1 
INCREMENT BY 1 
CYCLE;

-- Dodavanje sekvenci za generisanje vrednosti primarnog ključa tabela

ALTER TABLE trafika.Korisnik
ADD CONSTRAINT DFT_Korisnik_korisnikID DEFAULT (NEXT VALUE FOR trafika.Korisnik_seq) FOR korisnikID;

ALTER TABLE trafika.Proizvodjac
ADD CONSTRAINT DFT_Proizvodjac_proizvodjacID DEFAULT (NEXT VALUE FOR trafika.Proizvodjac_seq) FOR proizvodjacID;

ALTER TABLE trafika.VrstaProizvoda 
ADD CONSTRAINT DFT_VrstaProizvoda_vrstaProizvodaID DEFAULT (NEXT VALUE FOR trafika.VrstaProizvoda_seq) FOR vrstaProizvodaID;

ALTER TABLE trafika.Proizvod
ADD CONSTRAINT DFT_Proizvod_proizvodID DEFAULT (NEXT VALUE FOR trafika.Proizvod_seq) FOR proizvodID;

ALTER TABLE trafika.Racun
ADD CONSTRAINT DFT_Racun_racunID DEFAULT (NEXT VALUE FOR trafika.Racun_seq) FOR racunID;

ALTER TABLE trafika.Porudzbina
ADD CONSTRAINT DFT_Porudzbina_porudzbinaID DEFAULT (NEXT VALUE FOR trafika.Porudzbina_seq) FOR porudzbinaID;

ALTER TABLE trafika.Izvestaj
ADD CONSTRAINT DFT_Izvestaj_izvestajID DEFAULT (NEXT VALUE FOR trafika.Izvestaj_seq) FOR izvestajID;

-- TRIGERI

/* Ovim trigerom se nakon dodavanja nove stavke računa ažurira ukupan iznos računa tako što se on uvećava za cenu te stavke,
i smanjuje se raspoloživa količina kupljenog proizvoda za količinu koja je specificirana u toj stavci. */

IF OBJECT_ID('trafika.tr_after_StavkaRacuna') IS NOT NULL 
DROP TRIGGER trafika.tr_after_StavkaRacuna
GO
CREATE TRIGGER trafika.tr_after_StavkaRacuna
ON trafika.StavkaRacuna
AFTER INSERT
AS 
BEGIN
	IF @@ROWCOUNT = 0 RETURN;
	SET NOCOUNT ON;

	DECLARE @racunID INT = (SELECT racunID FROM inserted);
	DECLARE @proizvodID INT = (SELECT proizvodID FROM inserted);
	DECLARE @kolicinaProizvoda INT = (SELECT kolicinaProizvoda FROM inserted);
	DECLARE @prodajnaCena NUMERIC(10, 2) = (SELECT prodajnaCena FROM inserted);

	UPDATE trafika.Racun
	SET ukupanIznosRacuna += @prodajnaCena
	WHERE racunID=@racunID;

	UPDATE trafika.Proizvod
	SET raspolozivaKolicina -= @kolicinaProizvoda
	WHERE proizvodID=@proizvodID;
END

/* Ovim trigerom se nakon dodavanja nove stavke porudžbine ažurira ukupan iznos porudžbine tako što se on uvećava za cenu te 
stavke, i uvećava se raspoloživa količina naručenog proizvoda za količinu koja je specificirana u toj stavci. */

IF OBJECT_ID('trafika.tr_after_StavkaPorudzbine') IS NOT NULL 
DROP TRIGGER trafika.tr_after_StavkaPorudzbine
GO
CREATE TRIGGER trafika.tr_after_StavkaPorudzbine
ON trafika.StavkaPorudzbine
AFTER INSERT
AS 
BEGIN
	IF @@ROWCOUNT = 0 RETURN;
	SET NOCOUNT ON;

	DECLARE @porudzbinaID INT = (SELECT porudzbinaID FROM inserted);
	DECLARE @proizvodID INT = (SELECT proizvodID FROM inserted);
	DECLARE @kolicina INT = (SELECT kolicina FROM inserted);
	DECLARE @nabavnaCena NUMERIC(10, 2) = (SELECT nabavnaCena FROM inserted);

	UPDATE trafika.Porudzbina
	SET ukupanIznosPorudzbine += @nabavnaCena
	WHERE porudzbinaID=@porudzbinaID;

	UPDATE trafika.Proizvod
	SET raspolozivaKolicina += @kolicina
	WHERE proizvodID=@proizvodID;
END

/* Ovim trigerom se računa broj kupovina i promet između dva unešena datuma. */

IF OBJECT_ID('trafika.tr_Izvestaj') IS NOT NULL 
DROP TRIGGER trafika.tr_Izvestaj
GO
CREATE TRIGGER trafika.tr_Izvestaj 
ON trafika.Izvestaj
INSTEAD OF INSERT
AS 
BEGIN
	IF @@ROWCOUNT = 0 RETURN;
	SET NOCOUNT ON;

	DECLARE @datumOd DATE = (SELECT datumOd FROM inserted);
	DECLARE @datumDo DATE = (SELECT datumDo FROM inserted);
	DECLARE @brojKupovina INT = (SELECT COUNT(*) FROM trafika.Racun WHERE vremeIzdavanja >= @datumOd AND vremeIzdavanja <= @datumDo); 
	DECLARE @promet NUMERIC(10, 2) = (SELECT SUM(ukupanIznosRacuna) FROM trafika.Racun WHERE vremeIzdavanja BETWEEN @datumOd AND @datumDo);
	
	INSERT INTO trafika.Izvestaj VALUES ((SELECT izvestajID FROM inserted), @promet, @brojKupovina, @datumOd, @datumDo, (SELECT menadzerID FROM inserted));
END

/* Ovim trigerom se računa cena stavke računa na osnovu cene kupljenog proizvoda i kupljene količine. */

IF OBJECT_ID('trafika.tr_instead_StavkaRacuna') IS NOT NULL 
DROP TRIGGER trafika.tr_instead_StavkaRacuna
GO
CREATE TRIGGER trafika.tr_instead_StavkaRacuna
ON trafika.StavkaRacuna
INSTEAD OF INSERT
AS 
BEGIN
	SET NOCOUNT ON;

	DECLARE @proizvodID INT = (SELECT proizvodID FROM inserted);
	DECLARE @kolicinaProizvoda INT = (SELECT kolicinaProizvoda FROM inserted);

	IF @kolicinaProizvoda > (SELECT raspolozivaKolicina FROM trafika.Proizvod WHERE proizvodID=@proizvodID)
	BEGIN 
		RAISERROR('Greška u %s trigeru, količina kupljenog proizvoda ne može biti veća od količine njegove dostupnosti!', 16, 0, 'tr_instead_StavkaRacuna');
		RETURN;
	END
	ELSE 
	BEGIN
		DECLARE @cena NUMERIC(10, 2) = (SELECT cena FROM trafika.Proizvod WHERE proizvodID=@proizvodID);

		INSERT INTO trafika.StavkaRacuna
		VALUES ((SELECT racunID FROM inserted), @proizvodID, @kolicinaProizvoda, @kolicinaProizvoda * @cena);
	END
END

/* Ovim trigerom se računa cena stavke porudžbine na osnovu cene poručenog proizvoda i poručene količine. */

IF OBJECT_ID('trafika.tr_instead_StavkaPorudzbine') IS NOT NULL 
DROP TRIGGER trafika.tr_instead_StavkaPorudzbine
GO
CREATE TRIGGER trafika.tr_instead_StavkaPorudzbine
ON trafika.StavkaPorudzbine
INSTEAD OF INSERT
AS 
BEGIN
	SET NOCOUNT ON;

	DECLARE @proizvodID INT = (SELECT proizvodID FROM inserted);
	DECLARE @kolicina INT = (SELECT kolicina FROM inserted);
	DECLARE @cena NUMERIC(10, 2) = (SELECT cena FROM trafika.Proizvod WHERE proizvodID=@proizvodID);

	INSERT INTO trafika.StavkaPorudzbine
	VALUES ((SELECT porudzbinaID FROM inserted), @proizvodID, @kolicina, @kolicina * @cena);
END


