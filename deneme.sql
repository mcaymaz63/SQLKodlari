--personel isminde bir tablo olusturma
create table personel(
pers_id int,
	isim varchar(30),
brans varchar(30),
maas int,
hastahane varchar(20),
adres varchar(50)	
);

--var olan personel tablosunda pers_id, isim, hastahane,brans fieldlerine sahip
--personel_hastahane adinda yeni bir tablo olusturalim
create table personel_hastahane
as
select pers_id, isim, hastahane, brans from personel
select * from personel

-- DML --> Data Manupulation Lang.
-- INSERT - UPDATE - DELETE
--Tabloya veri ekleme, tablodan veri güncelleme ve silme işlemlerinde kullanılan komutlar
--INSERT
create table doctor
(
id varchar(4),
st_name varchar(30),
age int
);
INSERT into doctor VALUES ('1001','Ali Can',25);
INSERT into doctor VALUES ('1002','Veli Can',35);
INSERT into doctor VALUES ('1003','Ayse Can',45);
INSERT into doctor VALUES ('1004','Derya Can',55);
--Tabloya parcali veri ekleme
insert into doctor(st_name,age) values('Murat Can',65);
insert into doctor(st_name,age) values('Azra Can',15);


--DQL --> Data Query Lang.
--SELECT

select * from doctor;
select st_name from doctor;
select id from doctor;
select age from doctor;
-- SELECT KOMUTU WHERE KOSULU
select * from doctor WHERE age>35;
select * from doctor WHERE age<35;

--TCL - Transaction Control Lang.
-- Begin - Savepoint - rollback - commit
-- Transaction veritabani sistemlerinde bir islem basladiginda baslar ve islem bitince sona erer
-- Bu islemler veri tabani olusturma, veri silme, veri guncellenme, veriyi geri getirme gibi islemler olabilir
CREATE TABLE doctor2(
id serial,
isim VARCHAR (50),
hasta_isim VARCHAR(50),
muane_tarihi real
);
insert into doctor2 VALUES (default,'Ali Can','Hasan Can',24/08/2022);
insert into doctor2 VALUES (default,'Ahmet Can','Ayse Sen',25/08/2022);

select * from doctor2