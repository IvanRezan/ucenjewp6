
use master;
go
drop database if exists Arhitektura;
go
create database Arhitektura collate Croatian_CI_AS;
go
use Arhitektura;
go

create table firme(
sifra int not null primary key identity (1,1),
naziv varchar (50) not null,
datumotvorenja datetime not null,
ulica varchar (50) not null,
oib varchar (50) not null
);

create table ponuda(
sifra int not null primary key identity(1,1),
naziv varchar (20) not null,
vrstacrtanja varchar (50) not null,
primjeri varchar (50) not null,
cijena dec (18,2) not null,
tvrtka int not null references firme (sifra)
);


create table postignuca(
sifra int not null primary key identity (1,1),
naziv varchar (1000),
datum date not null
);
--insert into postignuca(natjecanja,nagrade,izradeniprojekti) values

