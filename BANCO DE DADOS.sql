create database ADEGA
default character set utf8
default collate utf8_general_ci;

create table login (
ID int auto_increment not null ,
EMAIL varchar (100) not null,
SENHA varchar (100) not null,
primary key (ID)
);

create table produtos(
Id int auto_increment primary key,
NOME varchar (100) NOT NULL, 
PRECO decimal (10,2) Not null,
Quantidade int Default 0
);

insert into produtos
(NOME, PRECO, QUANTIDADE)	
VALUES
('Brahma', 3.50, 10),
('Heineken', 4.50, 15),
('Corona', 5.00, 10),
('Amstel', 7.00, 10),
('Skol', 3.00, 20),
('Budweiser', 4.00, 12),
('Stella Artois', 5.50, 10),
('Bohemia', 4.50, 8),
('Eisenbahn', 6.00, 8),
('Jack Daniel''s', 89.90, 5),
('Johnnie Walker Red Label', 99.90, 5),
('Absolut', 59.90, 6),
('Smirnoff', 39.90, 8),
('Grey Goose', 119.90, 4),
('Bacardi', 49.90, 6),
('Havana Club 3 Anos', 55.00, 5),
('Velho Barreiro', 19.90, 10),
('51', 14.90, 10),
('Patrón Silver', 149.90, 4),
('Jose Cuervo', 79.90, 5),
('Martini Branco', 45.00, 6),
('Concha y Toro Cabernet', 39.90, 8),
('Santa Carolina Merlot', 34.90, 8),
('Chandon Brut', 69.90, 6),
('Salton Brut', 39.90, 6),
('Campari', 54.90, 5),
('Amarula', 49.90, 5),
('Red Bull', 12.90, 24),
('Monster', 9.90, 20),
('Água Tônica Schweppes', 5.50, 15),
('Refrigerante Coca-Cola 2L', 9.90, 20),
('Água com Gás', 4.50, 20);
 

select*from bebidas;
use adega;
alter table login
drop column NOME;
