--     CONSTRAINT
-- constraint are basically rule and regulation which donot allowed data entry in the table 
-- types of constraint
create database regexdb;
use regexdb;
create table test(id int);
insert into test values (10),(11),(10),(null);
select * from test;
select count(*) id from test;
create table test2(id int not null);
insert into test2 values(10),(11),(10);
insert into test2 values(null),(12);  -- this will give error 

create table test3(id int  unique);
insert into test3 values(10),(11),(10); -- duplicate values


create table test4(id int,gender varchar(20));
insert into test4 values(10);
select * from test4;

create table test5(id int,gender varchar(20) default 'male');  -- default
insert into test5(id) values(10);
select * from test5
