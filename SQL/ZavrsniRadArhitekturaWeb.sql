
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
ulica varchar (50) not null,
oib varchar (50) not null
);


create table ponuda(
sifra int not null primary key identity(1,1),
naziv varchar (20) not null,
vrstacrtanja varchar (50) not null,
primjeri varchar (50) not null,
cijena decimal (18,2) not null,
tvrtka int not null references firme (sifra)
);


create table postignuca(
sifra int not null primary key identity (1,1),
naziv varchar (1000),
datum date not null,
URL varchar (1000) not null
);

INSERT INTO postignuca (naziv, datum, linkovi) VALUES
('ArhiBau.hr 2023 Sajam Kulture građenja i održivog razvoja', '2023-09-26', 'https://arhibau.d-a-z.hr/'),
('9th International Conference on Environmental Science and Technology (ICOEST)', '2023-05-17', 'https://www.icoest.eu/sites/default/files/2023_icoest_proceedings_v1.pdf (pg. 36-45) https://cnrpublishing.com/index.php/ejsdr/issue/view/4/9 (pg.23 - 32)'),
('CoNStruction 2023 - 20th Natural gas, heat and water conference', '2023-05-17', 'https://construction.org.rs/'),
('PLIN2022 - 20th Natural Gas, Heat and Water Conference', '2022-09-28', 'https://konferencija-plin.unisb.hr/wp-content/uploads/zbornici/PLIN2022-Zbornik-radova.pdf'),
('SKEI 2022 - 9th International Conference on Environmental Science and Technology', '2022-05-12', 'https://www.vevu.hr/skei2022/'),
('Creative Planet Project - Park of Glagolitic', '2023-04-25', 'http://milenijsko.efos.hr/en/results-2022/'),
('Baldini Studio Project', '2022', 'https://www.facebook.com/bimstudent.net/posts/pfbid0tjQC9Y7D3L6vFGPTypHpbExg1Rqg55edaHG1MPSfAgbirJA7LPDNMPKZnBP1hz2Xl');


INSERT INTO firme (naziv, ulica, oib) VALUES
('Urban Artis', 'Trg Ante Starčevića 10, 31000 Osijek', '12345678901'),
('Forma Studio', 'Vukovarska ulica 25, 31000 Osijek', '23456789012'),
('Skyline Architects', 'Ulica Svetog Leopolda Mandića 42, 31000 Osijek', '34567890123'),
('Nova Arhitektura', 'Ulica Don Franje Kuhača 11, 31000 Osijek', '45678901234'),
('Prostor i Vizija', 'Josipa Jurja Strossmayera 12, 31000 Osijek', '56789012345'),
('Arhitektonski Horizont', 'Ulica kneza Trpimira 7, 31000 Osijek', '67890123456'),
('Vezan Dizajn', 'Ulica Vladimira Nazora 5, 31000 Osijek', '78901234567'),
('Kreativni Prostor', 'Ulica Ivana Gundulića 8, 31000 Osijek', '89012345678'),
('Vertex Architecture', 'Ulica Antuna Mihanovića 20, 31000 Osijek', '90123456789'),
('Studio Forma', 'Ulica grada Vukovara 14, 31000 Osijek', '01234567890'),
('Elevate Design', 'Osječka 22, 31000 Osijek', '12345098765');


INSERT INTO ponuda (naziv, vrstacrtanja, primjeri, cijena, tvrtka) VALUES
('Projektiranje stambenih objekata', '2D crtanje, 3D modeli', 'Kuće, stanovi, vile', 5000.00, 1),
('Projektiranje komercijalnih objekata', 'BIM, 3D crtanje', 'Trgovine, uredi, restorani', 10000.00, 2),
('Renovacija interijera', '3D prikazi, CAD', 'Restauracija, modernizacija', 7000.00, 3),
('Urbanistički planovi', 'GIS, 2D kartografija', 'Gradilišta, razvojne zone', 12000.00, 4),
('Krajobrazni dizajn', '3D prikazi, vizualizacija', 'Parkovi, vrtovi, javne površine', 8000.00, 5),
('Projektiranje javnih objekata', 'BIM, CAD, 3D vizualizacije', 'Škole, bolnice, muzeji', 15000.00, 6),
('Inženjerski projekti', 'CAD, 2D crteži', 'Mostovi, ceste, infrastruktura', 13000.00, 7),
('Projektiranje interijera', '3D renderi, CAD', 'Kancelarije, restorani, kuhinje', 6000.00, 8),
('Obnova kulturnih spomenika', 'BIM, 3D modeli', 'Crkve, muzeji, spomenici', 11000.00, 9),
('Arhitektonsko savjetovanje', 'Analize, skice', 'Savjeti, idejni projekti', 3000.00, 10);



