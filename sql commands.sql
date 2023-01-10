show databases;
use sanket;
show tables;
select * from employee;
drop database ujire;

create database customer;

use customer;
create table customer_info(id int, fname varchar(10), lname varchar(10));

show tables;

select * from customer_info; 

delete from customer_info where id=5;
 drop table  customer_info;

create table customer_info(id integer  , fname varchar(10), lname varchar(10) , salary int , primary key(id));

insert into customer_info values(1, 'sanket','arali', 60000 );
insert into customer_info values(2, 'shagun','patil', 90000 );
insert into customer_info values(3, 'riyaz','sharma', 80000 );
insert into customer_info values(4, 'naveen','durga', 70000 );
insert into customer_info values(5, 'chandan','kp', NULL );


select * from customer_info where salary is null;
select * from customer_info where salary is not null;

update customer_info set salary =55000 where id=5;

alter table customer_info add email varchar(35);

alter table customer_info drop email;


create table student( id int not null, fname varchar(30) not null , lname varchar(30) not null , age int);
desc student;



alter table student  modify age int not null;

alter table student add unique (fname);
desc student;




alter table student add constraint uc_student unique( age , fname);
alter table student 
drop index uc_student;
