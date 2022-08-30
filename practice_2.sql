CREATE TABLE workers
(
  id int,
  name varchar(20),
  title varchar(60),
  manager_id int
);
INSERT INTO workers VALUES(1, 'Ali Can', 'Dev', 2);
INSERT INTO workers VALUES(2, 'John Davis', 'QA', 3);
INSERT INTO workers VALUES(3, 'Angie Star', 'Dev Lead', 4);
INSERT INTO workers VALUES(4, 'Amy Sky', 'CEO', 5);

select * from workers

-- 1)Tabloya company_industry isminde sütun ekleyiniz
alter table workers  add company_industry varchar(20);

-- TABLOYA worker_address sütunu ve defaullt olarakta 'Miami, FL, USA' adresini ekleyiniz.
alter table workers add worker_address varchar(100) default 'Miami, FL, USA'


-- tablodaki worker_address sütununu siliniz
alter table workers drop column  worker_address;

-- Tablodaki company_industry sütununu, company_profession olarak değiştiriniz.
alter table workers rename column  company_industry  to company_profession;

select * from employees;

-- Tablonun ismini employees olarak değişitiriniz.
alter table workers rename to  employees;

-- Tablodaki title sütununa data tipini VARCHAR(50) olarak değiştiriniz.
alter table employees alter column type varchar(50); 

-- Tablodaki title sütununa "UNIQUE" kıstlaması ekleyiniz.
alter table employees add constraint title unique (id); -- olmaz

