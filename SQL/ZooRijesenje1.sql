-- Ovo je SQL skripta
-- prebacujem se na master bazi
use master;
go -- dajemo mu vremena da se prebaci prije nego što ide dalje
-- brišem postojeću bazu ako postoji
drop database if exists zoo;
go
-- kreiram novu bazu
create database zoo;
go
-- pozicioniram se na bazu
use zoo;
go
-- kreiram tablice
create table Dijelatnik(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
Iban varchar(50)
);

create table Datum(

sifra int not null primary key identity(1,1),
D_Rodenja datetime(50),
D_Dolaska datetime(50),
D_smrti datetime(50),
);

-- razlika varchar i char
-- varchar(10)
-- 'Ana'
-- char(10)
-- 'Ana       '

create table Prostorija(
sifra int not null primary key identity(1,1),
dimenzije varchar(50) not null,
mak_broj int(100) not null,
mjesto varchar(50) not null,
);

create table Zivotinja(
sifra int not null primary key identity(1,1),
Vrsta varchar(50),
ime varchar(50),
djelatnik int, 
prostorija int,
datum int,
);