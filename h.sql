SELECT * FROM data.data;
-- 1  Shows likelihood of a person would be died in case of she has been infected?
SELECT location, SUM(dead), SUM(infected), (SUM(dead)/SUM(infected) * 100) AS dead_infected_likelihood
FROM data.data
GROUP BY location
ORDER BY dead_infected_likelihood desc;

-- 2 Shows likelihood of a person would be died in case of she has been vaccinated?
select location, sum(vaccinated), sum(dead), (sum(dead)/sum(vaccinated)*100) as vaccinated_death_propotion
from  data.data
group by 1
order by 4;

-- 3  Shows likelihood of a person would be infected in case of she has been vaccinated?
select location, sum(vaccinated), sum(infected), (sum(infected)/sum(vaccinated)*100) as infected_vaccinated_propotion
from  data.data
group by 1
order by 4;

-- Which country does have the highest death rate compare to population?
select location, sum(dead) deaths, population, (sum(dead)/population *100) death_rate
from data.data
group by 1,3
order by 4 desc
limit 1;



