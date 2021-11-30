-- Show Database --
SHOW DATABASES;

-- Create Database --
CREATE DATABASE bookstore;

-- Use Database --
USE bookstore;

-- Show Table --
SHOW tables;

-- Create Table --
create table books ( id int auto_increment primary key, 
author1 varchar(100) not null, 
author2 varchar(100), 
author3 varchar(100), 
title varchar(100), 
description varchar(100), 
place_sell varchar(3), 
stock int default 0, 
creation_date datetime  default  current_timestamp  on update current_timestamp );

-- Update Table --
Alter table books 
add price int default 0,
status enum('available','out of stock','limited');

-- Delete Table --
alter table books drop place_sell;

-- Insert Table --
insert into books(author1, author2, author3, title, description, stock, creation_date, price, status)
 values('Frensia','Tanaga','ANA','Eat Teoppoki','Buku yang berisi Self Improvement',22,'2020/06/22 12:14:55',99000,'limited'),
 ('Tuk Dalang','Ipin','Upin','1001 Pantun Malaka','Buku yang berisi Pantun',200,'2009/11/13 15:16:22',88000,'available'),
('David','Hilman','Angga','Blog itu EASY','Buku yang berisi Panduan membuat Blog',40,'2010/07/21 14:22:11',77000,'limited');

-- Select Table --
select * from books;

-- Alias --
SELECT id as ID, author1 as A1, author2 as A2, author3 as A3
FROM books;

-- Select Where --
select * from books where ID = 1;

-- Operator AND --
select * from books where ID = 1 and author1 = 'Frensia' ;

-- Operator OR --
select * from books where ID = 1 or author2 = 'Kocinki' ;

-- Operator NOT --
select * from books where not ID = 1; 

--- Order By ---
select * from books order by id asc;

--- Limit ---
select * from books
    -> limit 2;

--- Update ---
update books
set author1 = 'Araso', price =21900
where id = 1;

--- Delete Row ---
delete from books where id = 2;