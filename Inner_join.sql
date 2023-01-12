show databases;
use customer;
create table customer_details(cus_id int , cust_name varchar(25));
desc customer_details;
create table order_details(cus_id int , ord_id int );
desc order_details;
select * from order_details;
select * from customer_details;




insert into customer_details values(1, 'sanket');
insert into customer_details values(2, 'yatheesh');
insert into customer_details values(3,' chandan');
insert into customer_details values(4, 'yuvaraj');
insert into customer_details values(5, 'naveen');


insert into 
