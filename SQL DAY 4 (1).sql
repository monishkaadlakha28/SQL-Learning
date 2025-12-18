-- SCALER FUNCTIONS(SINGLE ROW FUNCTION-- )
-- function haar row => output
-- multi row functions(aggregate function)
use sakila;
select* from payment;
select amount,round(amount) from payment;
-- sum 
select sum(amount),sum(amount) from payment; -- total of rows
select sum(amount),sum(round(amount)) from payment;
-- count 
select sum(amount),count(amount) from payment; -- total of rows count

select amount from payment where amount>5;
select count(amount) from payment where amount>5;
-- MAX,, MIN ,SUM,COUNT 
select max(amount),min(amount),sum(amount),count(amount) from payment;
 -- DISTINCT
 select distinct amount from payment; -- for finding unique value 
select distinct amount,payment_id from payment;
select distinct amount,customer_id from payment;
select count(distinct amount)from payment;
select count(distinct amount),count(amount) from payment;

-- get the payment id and amount for year 2005 
-- get the unique customer who have done the payment in the month of june
-- get the maximum amount the average amount and the differnce between maximum and average amount where amount of payment is greater than 2 dollar 
-- for year 2006
select* from payment;
select payment_date,year(payment_date) from payment;
select payment_id ,amount,year(payment_date) from payment where year(payment_date)=2005;
select customer_id from payment;
select count(distinct(customer_id)) from payment where month(payment_date)=06;
select max(amount),avg(amount), max(amount)-avg(amount)
from payment where amount>2 and year(payment_date)=2006;

-- group by  (grouping similar values)
select count(payment_id) from payment where customer_id=5;
select count(payment_id) from payment where customer_id=92;
 -- group by  
select customer_id, count(payment_id)from payment group by customer_id;