--create table Customer
create table Customer (
customer_id int primary key,
contactname varchar(50) not null,
city varchar(20))

--Insert records
insert into Customer(customer_id,contactname,city)
values(1,'Maria Anders','Berlin'),
(2,'Ana Trujillo','London'),
(3,'Antonio Moreno','Lulea'),
(4,'Thomas Hardy','Madrid'),
(5,'Hanna Moos','London'),
(6,'Yang Wang','Bern')

select * from Customer
GO

create table Orders(
order_id int primary key,
customer_id int,
order_date date,
country varchar(50))

insert into Orders(order_id,customer_id,order_date,country) 
values(10252,4,'1996-07-09 00:00:00.000','Belgium'),
(10253,3,'1996-07-10 00:00:00.000','Brazil'),
(10254,5,'1996-07-11 00:00:00.000','Switzerland'),
(10255,9,'1996-07-12 00:00:00.000','Switzerland'),
(10256,3,'1996-07-15 00:00:00.000','Brazil'),
(10257,4,'1996-07-16 00:00:00.000','Austria'),
(10258,1,'1996-07-17 00:00:00.000','Austria')

