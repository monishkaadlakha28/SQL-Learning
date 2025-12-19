use world;
select * from country;
select lifeexpectancy, round(lifeexpectancy) from country;
select 83.62,round(83.68,1);
select 83.62,round(53.687,-1);
select (456.23), round(76.23,-2);
select (456.23), round(276.23,-2);
select (456.23), round(76.23,-1);

-- truncate  ==> just to  extract the decimal value

select 456.67, round(456.68,1),truncate(456.67,1);
select 456.67, round(456.68,1),truncate(456.67,1),mod(43.6,3);

