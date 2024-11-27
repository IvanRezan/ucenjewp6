 select * from smjerovi
-- Update

update smjerovi set cijena=1100
where sifra=2; --ako mijenjamo po PK tada mijenjamo 1 red 

update smjerovi set 
izvodiseod='2024-12-05', 
vaucer=0
where sifra=2

select * from polaznici where sifra=16;

update polaznici set prezime='Franjić' where sifra=16;

select * from polaznici where sifra=16;


select * from smjerovi 

insert into smjerovi (naziv, cijena, izvodiseod, vaucer)
values ('Web programiranje',1225.48,'2024-11-06 17:00',1);

insert into smjerovi(naziv, cijena, izvodiseod, vaucer)
values
('sadasd',123,'2020-01-01',0);
insert into smjerovi(naziv, cijena, izvodiseod, vaucer)
values
('trsdf',533,'2020-01-01',0);
insert into smjerovi(naziv, cijena, izvodiseod, vaucer)
values
('ztut',800,'2020-01-01',0);
insert into smjerovi(naziv, cijena, izvodiseod, vaucer)
values
('asdaf',431,'2020-01-01',0);
insert into smjerovi(naziv, cijena, izvodiseod, vaucer)
values
('sadg',657,'2020-01-01',0);

select * from smjerovi 
update smjerovi set cijena = cijena * 0.9;
select * from smjerovi 

-- uvecajte sve ccijene za 35%
select * from smjerovi 
update smjerovi set cijena = cijena * 1.35;
select * from smjerovi

-- smanjite svim smjerovima cijenu za 10 eura

select * from smjerovi 
update smjerovi set cijena = cijena-10;
select * from smjerovi


-- uvijet vanjskog kljuca
update grupe set smjer=2 where sifra=1;


-- DELETE naredba 

select * from smjerovi;
delete from smjerovi where sifra>7;
select * from smjerovi;

select * from grupe;
update grupe set smjer=1 where sifra=1;

delete grupe where sifra=1;

select * from clanovi;

update clanovi set grupa=2 where grupa=1;

delete grupe where sifra=1;