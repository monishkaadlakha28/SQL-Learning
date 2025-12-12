use world;
select* from country;
select name,continent,concat(continent, '' , code ) from country;
select name,continent,concat(continent, '' , code,'regex' ) from country;
select name,continent,concat(continent, '' , code,' ','regex' ) from country; -- inverted comma are used for wide space 

-- concat with seperator
select name,continent,concat_ws('-',continent,code,'regex') from country;

-- concat
-- substr,(substring) ==> character extract based on the position
select name,substr(name,1) from country; 
select name,substr(name,3) from country; -- the name of the country will start from third letter
select name,substr(name,3,2) from country;
select name,substr(name,1),substr(name,3,2) from country;

select name,substr(name,-2) from country; -- it will start from back side as it is negative value
select name,substr(name,-5) from country; 
select name,substr(name,-5,3) from country; 