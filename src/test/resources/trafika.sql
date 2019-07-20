use trafika;

create table Proizvod (
	proizvodID int unsigned auto_increment primary key, 
	cena numeric(10, 2) not null, 
	sifra varchar(20) not null, 
	naziv varchar(20) not null, 
    active tinyint not null
);

create table Racun (
	racunID int unsigned auto_increment primary key, 
	vremeIzdavanja varchar(50) not null,
	mestoIzdavanja varchar(10) not null, 
	iznos numeric(10, 2) not null, 
	kolicina int not null, 
    proizvodID int unsigned not null,
	active tinyint not null,
	foreign key (proizvodID) references Proizvod (proizvodID) 
);

insert into Proizvod (cena, sifra, naziv, active) 
values (35, '234235', 'Smoki', 1);

insert into Proizvod (cena, sifra, naziv, active) 
values (90, '234564', 'Fanta', 0);

insert into Proizvod (cena, sifra, naziv, active) 
values (25, '454342', 'Blic', 1);

insert into Proizvod (cena, sifra, naziv, active) 
values (120, '343123', 'Milka', 0);

insert into Proizvod (cena, sifra, naziv, active) 
values (50, '213453', 'Snesko', 1);

insert into Racun (vremeIzdavanja, mestoIzdavanja, iznos, kolicina, proizvodID, active) 
values ('2018-12-11 12:23:21', 'Novi Sad', 35, 1, 1, 0);

insert into Racun (vremeIzdavanja, mestoIzdavanja, iznos, kolicina, proizvodID, active) 
values ('2017-05-05 21:31:44', 'Beograd', 180, 2, 2, 1);

insert into Racun (vremeIzdavanja, mestoIzdavanja, iznos, kolicina, proizvodID, active) 
values ('2019-06-08 14:12:23', 'Sombor', 75, 3, 3, 0);

insert into Racun (vremeIzdavanja, mestoIzdavanja, iznos, kolicina, proizvodID, active) 
values ('2014-02-03 21:32:25', 'Novi Sad', 120, 1, 4, 1);

insert into Racun (vremeIzdavanja, mestoIzdavanja, iznos, kolicina, proizvodID, active) 
values ('2019-06-08 16:31:11', 'Novi Sad', 250, 5, 5, 0);