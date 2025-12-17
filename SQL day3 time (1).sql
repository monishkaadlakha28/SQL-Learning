use sakila;
select* from actor;
-- trim function
select  char_length(first_name) from actor;
select trim('  hey  ');
select char_length(trim("   hey  "));
select char_length (rtrim('   hey    '));
select char_length (ltrim('hey   '));

select first_name,replace(first_name,'E','#') from actor;
select first_name,lpad(first_name,5,'#') from actor; -- to make five charater in evey row whose character are less then 5

-- numeric function 
-- round 
select round(11.5); -- round off the value 
select round(11.6,   1); -- only decimal part
select round(11.68,   1);
select round(11.62,   1);
select round(11.687, 2); -- the value will be check from the right side if it is greater thsn 5
select round(11.6,   -1); -- only decimal part; -- only the integer round off 
select round(2.685,   -1); -- only decimal part
select round(36.627,   -1); -- only decimal
select round(36.657,   -2); 
select round(246.627,   -3);
-- truncate only extract the value 
select round(6546.637,2),truncate(6546.637,2);
-- other divison
select mod(10,2), floor(6.999999), ceil(4.00002);

-- DATE FUNCTIONS [IMPORTANT]
-- data pr kaam krna
select current_date(); -- it will show the current date
select current_time(); -- it will show the curent time
select current_timestamp(); -- it will show both the current time and date
select now(); -- it is same like timestamp
-- add date
select now(),adddate(now(),5);  -- it increase the days from cuurent to 5 
select now(),adddate(now(),interval 2 month);  -- it helps in increasing the month
select now(),adddate(now(),interval 2 hour); -- it helps in increasing the hour
select now(),adddate(now(),interval -2 day); -- it willd decrease the 2 days from current date
select now(),addtime(now(), '02:01:02');
select now(),year(now()),last_day(now()); -- show month last date

-- extract
select now(),extract(month from now());
select now(),extract(Quarter from now());
select now(),date_format(now(),'Year is %y, my month is %M');
-- addtime,now,curtime,extract,year,month,dateformat

use sakila;
