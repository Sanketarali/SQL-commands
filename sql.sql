create database org;
use org;

create table worker(worker_id int primary key, fname varchar(255), lname varchar(255),salary int , joining_date date, department varchar(255));
desc worker;

insert into worker values(001,'sanket','arali',60000,'2022-02-22','HR');
insert into worker values(002,'chandan','k',70000,'2022-05-29','admin');
insert into worker values(003,'yatheesh','pateel',68000,'2022-09-23','hod');
insert into worker values(004,'yuvaraj','j',60600,'2022-02-14','dean');
insert into worker values(005,'vs','darshan',60000,'2022-03-28','Professor');
insert into worker values(006,'cs','darshan',67000,'2022-09-30','asst professor');
insert into worker values(007,'naveen','kumar',70000,'2022-02-10','dean');
insert into worker values(008,'ajay','sinchu',90000,'2022-01-18','Principal');

desc worker;

select * from worker;

create table title(worker_ref int , foreign key(worker_ref) references worker(worker_id) on delete cascade,
worker_title varchar(255), affected_from date);

desc title;

insert into title values(001,'manager','2022-05-23');
insert into title values(002,'dean','2022-06-02');
insert into title values(003,'principal','2022-07-13');
insert into title values(004,'hod','2022-08-23');
insert into title values(005,'lecture','2022-05-20');
insert into title values(006,'attender','2022-05-31');
insert into title values(007,'reception','2022-05-12');
insert into title values(008,'normal','2022-06-22');

select * from title;

delete  from title where worker_ref=001;

create table bonus(worker_ref int , foreign key(worker_ref) references worker(worker_id) on delete cascade,
bonus_amount int , bonus_date date);

desc bonus;

insert into bonus values(001,50000,'2022-08-23');
insert into bonus values(002,60000,'2022-07-29');
insert into bonus values(003,90000,'2022-05-25');
insert into bonus values(004,80000,'2022-04-26');
insert into bonus values(005,60000,'2022-03-23');
insert into bonus values(006,30000,'2022-02-23');
insert into bonus values(007,80000,'2022-01-22');
insert into bonus values(008,55000,'2022-06-13');

select *from bonus;
delete  from bonus where worker_ref=001;


select salary from worker;

select fname ,salary from worker

select now();

select ucase('sanket');

select * from worker;
select * from worker where salary>67000;

select * from worker where fname='sanket';

select * from worker where salary between 50000 and 80000;

select * from worker where department in('hr','dean');

select * from worker where department not in('hr','dean');