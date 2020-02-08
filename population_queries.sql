-- How many entries in the database are from Africa?
select Count(*)
from countries
where continent = 'Africa';

56



-- What was the total population of Oceania in 2005?
select Round(sum(population_years.population),2)
from countries
join population_years
on countries.id = population_years.country_id
where countries.continent = 'Oceania' 
	and population_years.year = 2005;

32.66 million


-- What is the average population of countries in South America in 2003?
select Round(avg(population_years.population),2)
from countries
join population_years
on countries.id = population_years.country_id
where countries.continent = 'South America' 
	and population_years.year = 2003;
	
25.89 million

-- What country had the smallest population in 2007?
select countries.name, min(population_years.population)
from countries
join population_years
on countries.id = population_years.country_id
where population_years.year = 2007;

Niue .00216 million


-- What is the average population of Poland during the time period covered by this dataset?
select countries.name, Round(avg(population_years.population),2)count
from countries
join  population_years
on countries.id = population_years.country_id
where countries.name = 'Poland';

38.56068


-- How many countries have the word "The" in their name?
select Count(*)
from countries
where name like '%The%';

4



-- What was the total population of each continent in 2010?
select countries.continent, sum(population_years.population)
from countries
join population_years
on countries.id =population_years.country_id
where population_years.year=2010
group by 1;

Africa	1015.47846
Asia	4133.09148
Europe	723.06044
North America	539.79456
Oceania	34.95696
South America	396.58235


