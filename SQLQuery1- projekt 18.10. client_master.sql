--TABLE: client_master
CREATE TABLE client_master
(client_no varchar(6) not null primary key,
name varchar(20) not null,
city varchar(15),
pincode numeric(6),
state varchar(10),
bal_due numeric(10,2) );

EXEC sp_help client_master;

--TABLE: Product_Master

Create table Product_Master
(product_no varchar(6) not null primary key,
description varchar(20) not null,
profit_percentage numeric(4,2),
unit_measure varchar(10),
qty_on_hand numeric (8),
reordered_level numeric (8,2),
sell_price numeric (8,2),
cost_price numeric (8,2),
)

EXEC sp_help Product_Master;

--TABLE: SALESMAN_MASTER

create Table Salesman_Master
(
salesman_no varchar(6) not null primary key,
salesman_name varchar (35) not null,
address1 varchar (15),
address2 varchar(15),
S_city varchar (15),
pincode numeric(6),
state varchar (15),
sal_amt numeric (8,2),
tgt_to_get numeric (8,2),
ytd_sales numeric (8,2),
remarks varchar(15)
)

--INSERT: CLIENT_MASTER

insert into client_master Values ('C0001', 'John Henderson' , 'London' , 400054, 'England', 15000),
('C0002' , 'Jann Meier' , 'München' , 600025, 'Germany', 8500);

insert into client_master Values ('C0003', 'Steven Peterson' , 'New York' , 200134, 'USA', 22750);

select *
from client_master;

--INSERT: PRODUCT_MASTER

insert into Product_Master Values ('P00001', 'BALL BEARING 2R INOX', 5.00, 'Piece' , 127 , 35 , 525 , 500 ),
('P00002', 'SAE 6b SPLINE ', 1.14, 'Piece' , 322 , 70 , 125 , 110 ),
('P00003', 'FASTENER 4MM', 1.12, 'Piece' , 405 , 150 , 280 , 250 );

select *
from Product_Master;

--select functions

select name from client_master;
select * from Salesman_Master;
select description from product_Master;
select name from client_master where city='New York'

--update
update client_master set city='Paris' where client_no= 'C0001'
update Product_Master set sell_price=310 where product_no='P00003'

--delete function
delete from Product_Master where profit_percentage=1.14
delete from client_master where pincode=600025

--alter
alter table client_master add telephone numeric (15);

alter table SALESMAN_MASTER 
alter column salesman_name varchar(40);

exec sp_rename 'client_master' , 'CLIENTS_MASTER1';

select * from clients_master1;