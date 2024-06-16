create table users (
id serial,
username varchar(255),
address varchar(255),
birthday_date date,
status_user integer,
gender char,
created_at timestamp,
updated_at timestamp,

primary key (id)
)

select * from product p 

create table product (
id serial,
user_id serial,
product_name varchar(255),
product_type_id integer,
merk_id integer,
product_description varchar(255),
created_at timestamp,
updated_at timestamp,

primary key (id),
foreign key(product_type_id) references type_product(id)
)

create table type_product (
id serial,
type_name varchar(255),
created_at timestamp,
updated_at timestamp,

primary key(id)
)

create table product_description (
id serial,
product_id serial,
description text,
created_at timestamp,
updated_at timestamp,

primary key (id),
foreign key (product_id) references product(id)
)	

select * from product_description
select * from product_description

create table payment_method(
id serial,
product_description_id serial,
payment_method_name vx``archar(255),
created_at timestamp,
updated_at timestamp,

primary key (id),
foreign key (product_description_id) references product_description(id)
)

create table transaction (
id serial,
user_id serial,
transaction_date date,
total_mount decimal,
created_at timestamp,
updated_at timestamp,

primary key (id),
foreign key (user_id) references users(id)
)

create table transaction_detail (
id serial,
transaction_id integer,
product_id integer,
unit_price integer,
created_at timestamp,
updated_at timestamp,

primary key (id),
foreign key (transaction_id) references transaction(id),
foreign key (product_id) references product(id)
);

create table kurir (
id serial,
nama_kurir varchar(255),
created_at timestamp,
updated_at timestamp,

primary key (id)
)

create table alamat (
id serial,
user_id serial,
address varchar(255),
city varchar(255),
posttal_code integer,
country varchar(255),

primary key(id),
foreign key (user_id) references users(id)
)

create table user_payment_method_detail (
user_id integer,
payment_method_id integer,
registration_date timestamp,
created_at timestamp,
updated_at timestamp,
notes text,

primary key(user_id,payment_method_id),
foreign key(user_id) references users(id),
foreign key(payment_method_id) references payment_method(id)
)

alter table kurir add column ongkos_dasar integer;

select * from kurir k

alter table kurir rename to shipping;

drop table if exists shipping

drop table if exists payment_method
drop table if exists transaction
drop table if exists transaction_detail

drop table if exists product_description

drop table if exists product
drop table if exists users
drop table if exists type_product


select * from type_product tp 

select * from users u 

select * from product_description pd

select * from payment_method pm 

select * from product p 

insert into type_product (type_name,created_at,updated_at)
values('Elektronik',now(),now())

insert into type_product (type_name,created_at,updated_at)
values('Pakaian',now(),now())

insert into type_product (type_name,created_at,updated_at)
values('Makanan',now(),now())

insert into product (user_id,product_name,product_type_id,merk_id,product_description,created_at,updated_at)
values(1,'Samsung S23', 1, 1,'Kamera sangat jernih',now(),now())

insert into product (user_id,product_name,product_type_id,merk_id,product_description,created_at,updated_at)
values(1,'Realme 7', 1, 1,'Barang sangat baik digunakan',now(),now())

insert into product (user_id,product_name,product_type_id,merk_id,product_description,created_at,updated_at)
values(2,'Jaket Jeans', 2, 2,'Jaketnya sangat keren untuk dipakai jalan jauh',now(),now())

insert into product (user_id,product_name,product_type_id,merk_id,product_description,created_at,updated_at)
values(3,'Celana Jeans', 2, 3,'kain celana sangat jangan digunakan',now(),now())

insert into product (user_id,product_name,product_type_id,merk_id,product_description,created_at,updated_at)
values(1,'Kaos Denim', 2, 4,'kain baju lembut dan warna hitam netral untuk digunakan',now(),now())

insert into product (user_id,product_name,product_type_id,merk_id,product_description,created_at,updated_at)
values(2,'Iphone 15', 3, 5,'Hp yang lagi viral',now(),now())

insert into product (user_id,product_name,product_type_id,merk_id,product_description,created_at,updated_at)
values(3,'Iphone 13', 3, 5,'Penympanan 128 GB ramnya 4GB',now(),now())

insert into product (user_id,product_name,product_type_id,merk_id,product_description,created_at,updated_at)
values(1,'Sweater Hitam polos', 3, 3,'kainnya lembut nyaman digunakan',now(),now())

insert into product_description (product_id,description,created_at,updated_at)
values(2,'Kain lembut, jahitan rapi', now(),now())

insert into product_description (product_id,description,created_at,updated_at)
values(1,'Hp dengan kualitas terbaik di jaman sekarang', now(),now())

insert into product_description (product_id,description,created_at,updated_at)
values(3,'barang yang serba bisa dipesan', now(),now())

insert into payment_method (product_description_id ,payment_method_name,created_at,updated_at)
values(1,'Kartu Kredit', now(),now())

insert into payment_method (product_description_id ,payment_method_name,created_at,updated_at)
values(2,'Paypal', now(),now())

insert into payment_method (product_description_id ,payment_method_name,created_at,updated_at)
values(3,'Cash', now(),now())

insert into users (username,address,birthday_date,status_user,gender,created_at,updated_at)
values('willysihombing','Muara Badak', '1999-12-13',1,'P',now(),now())

insert into users (username,address,birthday_date,status_user,gender,created_at,updated_at)
values('jenifergunardi','Makassar', '1999-01-09',1,'W',now(),now())

insert into users (username,address,birthday_date,status_user,gender,created_at,updated_at)
values('jasonvonpeng','Muara Badak', '2017-11-10',1,'P',now(),now())

insert into users (username,address,birthday_date,status_user,gender,created_at,updated_at)
values('Arib','samarinda', '1998-09-13',1,'P',now(),now())

insert into users (username,address,birthday_date,status_user,gender,created_at,updated_at)
values('tes nama','Muara Badak', '1997-12-13',1,'W',now(),now())

select * from transaction t 

select * from transaction_detail td

insert into transaction (user_id,transaction_date,total_mount,created_at,updated_at)
values('1',now(),'2.0',now(),now())

insert into transaction (user_id,transaction_date,total_mount,created_at,updated_at)
values('2',now(),'1.0',now(),now())

insert into transaction (user_id,transaction_date,total_mount,created_at,updated_at)
values('3',now(),'5.0',now(),now())

insert into transaction_detail (transaction_id,product_id,unit_price,created_at,updated_at)
values(2,2,3,now(),now())

insert into transaction_detail (transaction_id,product_id,unit_price,created_at,updated_at)
values(3,1,2,now(),now())

insert into transaction_detail (transaction_id,product_id,unit_price,created_at,updated_at)
values(1,3,2,now(),now())

insert into transaction_detail (transaction_id,product_id,unit_price,created_at,updated_at)
values(2,3,3,now(),now())

insert into transaction_detail (transaction_id,product_id,unit_price,created_at,updated_at)
values(3,3,3,now(),now())

select * from "transaction" t 

select * from product p 

select * from transaction_detail td 

select users.username from users where gender = 'P'

select * from product where id = 3

select * from "transaction" t where t.user_id = 1

union

select * from "transaction" t where t.user_id = 2

select sum(total_mount) from "transaction" t 
where id = 1

select sum(transaction_id) from transaction_detail td 
where td.product_id = 2 











