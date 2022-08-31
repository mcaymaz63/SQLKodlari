============================================================
interview questions 
CREATE TABLE personel6
(
id int, 
isim varchar(50), 
sehir varchar(50), 
maas int, 
sirket varchar(20)
);
INSERT INTO personel6 VALUES(123456789, 'Johnny Walk', 'New Hampshire', 2500, 'IBM');
INSERT INTO personel6 VALUES(234567891, 'Brian Pitt', 'Florida', 1500, 'LINUX');
INSERT INTO personel6 VALUES(245678901, 'Eddie Murphy', 'Texas', 3000, 'WELLS FARGO');
INSERT INTO personel6 VALUES(456789012, 'Teddy Murphy', 'Virginia', 1000, 'GOOGLE');  
INSERT INTO personel6 VALUES(567890124, 'Eddie Murphy', 'Massachuset', 7000, 'MICROSOFT');
INSERT INTO personel6 VALUES(456789012, 'Brad Pitt', 'Texas', 1500, 'TD BANK');
INSERT INTO personel6 VALUES(123456719, 'Adem Stone', 'New Jersey', 2500, 'IBM');
SELECT *
FROM personel6;
CREATE TABLE isciler 
(
id int,
isim varchar(50), 
sehir varchar(50), 
maas int, 
sirket varchar(20)
);
INSERT INTO isciler VALUES(123456789, 'John Walker', 'Florida', 2500, 'IBM');
INSERT INTO isciler VALUES(234567890, 'Brad Pitt', 'Florida', 1500, 'APPLE');
INSERT INTO isciler VALUES(345678901, 'Eddie Murphy', 'Texas', 3000, 'IBM');
INSERT INTO isciler VALUES(456789012, 'Eddie Murphy', 'Virginia', 1000, 'GOOGLE');
INSERT INTO isciler VALUES(567890123, 'Eddie Murphy', 'Texas', 7000, 'MICROSOFT');
INSERT INTO isciler VALUES(456789012, 'Brad Pitt', 'Texas', 1500, 'GOOGLE');
INSERT INTO isciler VALUES(123456710, 'Mark Stone', 'texas', 2500, 'IBM');

SELECT * FROM isciler;

-- 1) Her iki tablodaki ortak id’leri ve 
--personel6 tablosunda bu id’ye sahip isimleri
-- isme gore sirali olarak listeleyen query yaziniz
  select * from personel6, isciler where personel6.id=isciler.id order by personel6.isim, isciler.isim;


-- 2) Personel6 tablosunda kac tane kayit oldugunu gosteren query yazin
select * from personel6 order by isim 

-- 3)Isciler tablosunda en yuksek maasi alan kisinin tum bilgilerini gosteren query yazin
select * from isciler order by maas desc limit 1;

-- 4) Isciler tablosunda ikinci en yuksek maasi maasi gosteren query yazin
select * from isciler order by maas desc limit 2 offset 2;
                            
                            
--5) Isciler tablosunda ikinci en yuksek maasi alan kisinin tum bilgilerini listeleyen sorgu yaziniz
     select * from isciler order by maas desc limit 2 offset 1;
	            
--Kisiler tablosundan ilk 5 veriyi listeleyiniz
select * from isciler limit 5;

--ilk 2 veriden sonra 5 veriyi listeleyin
select * from isciler limit 5 offset 2

SELECT *
FROM isciler;

-- id değeri 5 den büyük olan ilk iki veriyi listeleyiniz
select * from isciler where id>5 limit 2

--  MAAŞ'ı en yüksek 3 kişinin bilgilerini listeleyiniz
select * from isciler order by maas desc limit 3;

-- En yüksek maaşı alan 4. 5.  6. kişilerin bilgilerini listeleyiniz
select * from isciler order by maas desc limit 3 offset 3;




