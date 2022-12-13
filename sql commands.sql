create database ujire;
show databases;
use ujire;
create table employee(personid int, fname varchar(100), lname varchar(100), city varchar(100), salary int);
desc employee;
select * from employee;
insert into employee values(1,'sanket','arali','gulbarga',60000);
insert into employee values(2,'prajwal','patil','bidar',70000);
insert into employee values(3,'vishwanath','patil','bangalore',67000);

select * from employee;

insert into employee values(4,'putru','bhogundi','shahabad',69000);
insert into employee values(4,'siddu','meti','ashok nagar',97000);

select * from employee;

select * from employee where fname='sanket' and lname='arali';

select * from employee where fname='putru' or lname='patil';
select * from employee;

select *from employee where personid=4;
select * from employee;

select *from employee order by salary desc;
select *from employee order by salary;

select distinct(lname) from employee;

use ujire;

select now(), curdate(),curtime();
select * from employee;

select avg(salary) from employee;
select max(salary) from employee;

select min(salary) from employee;
select sum(salary) from employee;

select ucase(fname) from employee;
select ucase(lname) from employee;

