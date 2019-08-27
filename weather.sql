--global data
SELECT year, avg_temp, avg(avg_temp) OVER (ORDER BY year ROWS BETWEEN 10 PRECEDING AND 10 FOLLOWING) AS moving_avg 
FROM global_data order by year

--city data - Nairobi
SELECT year, city, country, avg_temp, avg(avg_temp) OVER (ORDER BY year ROWS BETWEEN 10 PRECEDING AND 10 FOLLOWING) AS moving_avg 
FROM city_data WHERE country = 'Kenya' ORDER BY year

--city data - Johannesburg, South Africa

SELECT year, city, country, avg_temp, avg(avg_temp) OVER (ORDER BY year ROWS BETWEEN 10 PRECEDING AND 10 FOLLOWING) AS moving_avg 
FROM city_data WHERE country = 'South Africa' AND city = 'Johannesburg' ORDER BY year