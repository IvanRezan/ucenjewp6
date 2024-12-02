-- Ovo je SQL skripta
-- prebacujem se na master bazi
use master;
go -- dajemo mu vremena da se prebaci prije nego što ide dalje
-- brišem postojeću bazu ako postoji
drop database if exists sport;
go
-- kreiram novu bazu
create database sport;
go
-- pozicioniram se na bazu
use sport;

go
-- kreiram tablice
create table igrac(
sifra int not null primary key identity(1,1),
ime varchar(50) null,
prezimess varchar(50) not null,
datum_rodenja varchar(50) null,
pozicija varchar(50) null,
broj_dresa varchar(50) null,
klub varchar(50) null,
);

create table trener(
sifra int not null primary key identity(1,1),
ime varchar(50) null,
prezime varchar(50) not null,
klub varchar(50) null,
nacionalnost varchar(50) null,
iskustvo varchar(50) not null,
);

-- razlika varchar i char
-- varchar(10)
-- 'Ana'
-- char(10)
-- 'Ana       '

create table utakmica(
sifra int not null primary key identity(1,1),
datum varchar(50) not null,
vrijeme varchar(50) not null,
lokacija varchar(100) not null,
stadion varchar(50) not null,
domaci_klub varchar(50) not null,
gostujuci_klub varchar(50) not null,
);

create table klub(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
osnovan varchar(50) not null,
stadion varchar(50) not null,
predsjednik varchar(50) not null,
drzava varchar(50) not null,
liga varchar(50) not null,
);

