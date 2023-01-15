show databases;
use customer;
create table customer_details(cus_id int , cust_name varchar(25));
desc customer_details;
create table order_details(cus_id int , ord_id int );
desc order_details;
select * from order_details;
select * from customer_details;

select 


insert into customer_details values(1, 'sanket');
insert into customer_details values(2, 'yatheesh');
insert into customer_details values(3,' chandan');
insert into customer_details values(4, 'yuvaraj');
insert into customer_details values(5, 'naveen');


insert into order_details values  ('1', 21);
insert into order_details values (2,22);
insert into order_details values (3,45);
insert into order_details values (4,32);
insert into order_details values (5,35);

select a.cus_id , a.cust_name , o.ord_id from customer_details a inner join order_details o on a.cus_id=o.cus_id;

select * from customer_details cross join order_details;

select c.cus_id as customer_id , c. cust_name as customer_name , o.ord_id as order_id from customer_details c cross join order_details o;
