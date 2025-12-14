show databases;  -- will show all database in sql
use sakila; -- use sakila as a database
 -- show tables to see all table in the sakila
show tables;
-- select statement(DQL) * star access all column
select * from actor;
describe actor; -- will give the table info(column,datatype,relationships and more)
select actor_id,first_name from actor;
select ACTOR_ID,FIRST_NAME from ACTOR; -- select statement table it can be in any case format
select last_update,last_name from actor;
select * from customer;
select first_name,last_name from customer;
-- dont create a new column in original data-- 
select actor_id,first_name,actor_id*5 from actor;
select * from actor where actor_id=5;
select * from actor where first_name='NICK';  -- data should be case sensitive
select * from actor where last_name ='STAllONE';
-- select actor_id, last_name, first_name from actor where last_name='DAVIS';
select* from actor where actor_id!=5;
select* from actor where actor_id<>5;
select * from actor where first_name='NICK' and actor_id=44;
select actor_id, last_name, first_name from actor where last_name='DAVIS';
select* from actor where first_name='NICK' or actor_id!=46;
select* from actor where actor_id>2 and actor_id<6;
select* from actor where actor_id between 2 and 6;  -- lower to higher(not higher to lower)
select* from actor where actor_id not between 2 and 6;  
select* from actor where actor_id>2 or actor_id>6;
select* from actor where actor_id=2 or actor_id=5 or actor_id=12;
select* from actor where actor_id in (2,5,45); 
select* from actor where first_name in ('NICK','JOHNNY'); 

-- FROM THE ACTOR TABLE GET THE FIRST NAME AND ACTOR ID WHOSE LAST NAME IS GENIUS
-- GET THE ACTOR ID AND FIRST NAME  WHERE THE ACTOR ID IS FROM VALUE 3 TO 18 OR THE NAME SHOULD NOT BE ED
-- GET THE LAST NAME ACTOR ID FIRST NAME WHERE THE FIRST NAME IS EITHER NICK OR GRACE
-- GET ALL THE COLUMNS WHERE ACTOR ID IS FROM 2 TO 6 OR ACTOR ID GREATER THAN 5
select first_name, actor_id from actor where last_name='GENIUS';
select* from actor where actor_id between 3 and 18 and first_name!='ED';
select* from actor where actor_id between 3 and 18 and first_name!='ED';
select last_name,actor_id,first_name from actor where first_name ='NICK' OR 'GRACE';					