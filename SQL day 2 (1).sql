
use sakila;
show tables;
select* from actor;
select* from actor where actor_id=4 or actor_id=10;
select* from actor where actor_id in (4,10);

-- Like Operator (pattern ke according data filter)
-- % (Wildcard character): Zero or more character 
select* from actor where first_name like 'N%'; -- N should be first chracter 
select* from actor where first_name like 'S%';
select* from actor where first_name like '%N'; -- it will check last charcter where n comes
select* from actor where first_name like 'S%t'; -- start from s and ends with t
select* from actor where first_name like '%S%'; -- S can be from starting or end or middle 

-- (_) underscore : exactly 1 character
select* from actor where first_name like 'S_'; -- for finding two characters
select* from actor where first_name like 'E_';
select* from actor where first_name like 'S____';
select* from actor where first_name like '_A%'; -- second character should be A 

-- get the actor_id and first name where the last word should be TE
-- get the actor_id where the double nn should be present in the middle
-- get the first_name nad last name where the last name column the first word B and second the second last word is R
-- get all the user information where the first name will have minimum 4 charactrs 
-- get all the columns where the actor_id from 2 to 90 and the first name S sholud present in middle and A should be the second last charcter
  
  select * from actor where first_name like '%TE';
  select* from actor where first_name like '_%NN%_';
  select first_name, last_name from actor where last_name like 'B%R_';
  select* from actor where first_name like '____%';
  select* from actor where actor_id between 2 and 90 and first_name like '_%S%A_';
  
  -- operator Functions --
  -- function ---> Block of code
  -- inbuilt funtions
  -- scaler function(row function)  2) multi row function
  -- apply on each row  and return the output for each row
   
   select first_name,char_length(first_name) from actor;  -- counts total charcater in each first name
   select first_name,char_length(first_name), lower(first_name) from actor; 
   select first_name,last_name , concat(first_name, '-regex') from actor;
   select first_name,last_name , concat(first_name, ' ',last_name) from actor;
   select first_name,last_name , concat('MR/MRS',first_name, ' ',last_name) from actor;
   select first_name,last_name , concat('MR/MRS',' ',first_name, ' ',last_name) from actor;
   select first_name,last_name , concat_ws('MR/MRS',first_name, ' ',last_name) from actor;
	select first_name,last_name , concat_ws(' ','MR/MRS',first_name,last_name) from actor;
  