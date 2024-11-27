
use master;
go
drop database if exists Arhitektura;
go
create database Arhitektura collate Croatian_CI_AS;
go
use Arhitektura;
go


create table osobnipodatcivlasnika(
sifra int not null primary key identity(1,1),
ime varchar (100),
prezime varchar(100),
email varchar(100),
oib  varchar (11) 
);


create table kontakt(
sifra int not null primary key identity(1,1),
naziv varchar (50),
email varchar (100),
Btelefona int not null
);

create table ponuda(
sifra int not null primary key identity(1,1),
naziv varchar (20) not null,
vrstacrtanja varchar (50) not null,
primjeri varchar (50) not null,
cijena int not null
);


create table nazivfirme(
sifra int not null primary key identity (1,1),
naziv varchar (50) not null,
datumotvorenja datetime not null,
ulica varchar (50) not null,
oib varchar (50) not null
);

create table postignuča(
sifra int not null primary key identity (1,1),
Natjecanja varchar (50) null,
Nagrade varchar (50) null,
Izradeniprojekti varchar (50) null,
Zavrsenoskolovanj varchar (50) null
);
