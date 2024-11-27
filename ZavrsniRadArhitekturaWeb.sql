
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
datum date not null,
linkovi varchar (100) not null
);

INSERT INTO postignuca (naziv, datum, linkovi) VALUES
('ArhiBau.hr 2023 Sajam Kulture građenja i održivog razvoja', '2023-09-26', 'https://arhibau.d-a-z.hr/'),
('9th International Conference on Environmental Science and Technology (ICOEST)', '2023-05-17', 'https://www.icoest.eu/sites/default/files/2023_icoest_proceedings_v1.pdf (pg. 36-45) https://cnrpublishing.com/index.php/ejsdr/issue/view/4/9 (pg.23 - 32)'),
('CoNStruction 2023 - 20th Natural gas, heat and water conference', '2023-05-17', 'https://construction.org.rs/'),
('PLIN2022 - 20th Natural Gas, Heat and Water Conference', '2022-09-28', 'https://konferencija-plin.unisb.hr/wp-content/uploads/zbornici/PLIN2022-Zbornik-radova.pdf'),
('SKEI 2022 - 9th International Conference on Environmental Science and Technology', '2022-05-12', 'https://www.vevu.hr/skei2022/'),
('Creative Planet Project - Park of Glagolitic', '2023-04-25', 'http://milenijsko.efos.hr/en/results-2022/'),
('Baldini Studio Project', '2022', 'https://www.facebook.com/bimstudent.net/posts/pfbid0tjQC9Y7D3L6vFGPTypHpbExg1Rqg55edaHG1MPSfAgbirJA7LPDNMPKZnBP1hz2Xl');
