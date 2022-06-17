create database six_db;
use six_db;
create table client (
id int auto_increment not null,
name varchar(20) not null,
phone_number int not null,
birth_date date not null,
primary key(id)
); 
insert into client (name, phone_number, birth_date)
values ('Andy Knol', 564578, '2000-08-09');
insert into client (name, phone_number, birth_date)
values ('Ameli Gol', 578567, '1999-08-09');
insert into client (name, phone_number, birth_date)
values ('Renata T', 567490, '1984-12-12');
insert into client (name, phone_number, birth_date)
values ('Paty Moll', 368978, '1986-07-08');
insert into client (name, phone_number, birth_date)
values ('Anton Drew', 589008, '1978-01-09');
insert into client (name, phone_number, birth_date)
values ('Pol Kart', 583478, '1977-06-11');
insert into client (name, phone_number, birth_date)
values ('Mery Gold', 545632, '1976-02-10');
insert into client (name, phone_number, birth_date)
values ('Lary Yard', 567882, '1979-12-10');
insert into client (name, phone_number, birth_date)
values ('Anna L', 500032, '1996-02-10');
insert into client (name, phone_number, birth_date)
values ('Ola K', 588832, '2001-01-11');
insert into client (name, phone_number, birth_date)
values ('Jarry Hot', 578932, '1975-02-10');
insert into client (name, phone_number, birth_date)
values ('Tom Lin', 567832, '2000-07-03');
insert into client (name, phone_number, birth_date)
values ('John Krew', 598932, '1988-04-10');
insert into client (name, phone_number, birth_date)
values ('Lin Lop', 589002, '1976-02-10');
insert into client (name, phone_number, birth_date)
values ('Lana Ren', 577732, '1987-10-10');

select* from client;

create table shop(
id int auto_increment not null,
client_id int not null,
product_name varchar(15),
product_price int,
foreign key (client_id) references client(id),
primary key(id)
);

insert into shop (client_id, product_name, product_price)
values (1, 'beauty cleanser', 56);
insert into shop (client_id, product_name, product_price)
values (2, 'tonic', 46);
insert into shop (client_id, product_name, product_price)
values (3, 'beauty cleanser', 56);
insert into shop (client_id, product_name, product_price)
values (4, 'parfume', 156);
insert into shop (client_id, product_name, product_price)
values (5, 'beauty lipstick', 48);
insert into shop (client_id, product_name, product_price)
values (1, 'parfume', 156);
insert into shop (client_id, product_name, product_price)
values (1, 'beauty lipstick', 48);
insert into shop (client_id, product_name, product_price)
values (8, 'beauty lipstick', 48);
insert into shop (client_id, product_name, product_price)
values (9, 'parfume', 156);

select name AS client, SUM(product_price) AS sum, product_name AS product
from shop
INNER Join client
On shop.client_id= client.id
group by name
order by sum;





