### Exploring Weather Trends - Project 
My city – Nairobi, Kenya Other city – Johannesburg, South Africa 
##### Tools used
1. SQL – use of SQL queries (see below) to extract the data.
2. Excel – to load the data for visualisation 
3. PowerBI – to visualize the moving averages against each year 
##### Queries 
######  Global data 
```
SELECT year, avg_temp, avg(avg_temp) OVER (ORDER BY year ROWS BETWEEN 10 PRECEDING AND 10 FOLLOWING) AS moving_avg  FROM global_data  ORDER BY year
```
###### City data – Nairobi, Kenya
```
SELECT year, city, country, avg_temp, avg(avg_temp) OVER (ORDER BY year ROWS BETWEEN 10 PRECEDING AND 10 FOLLOWING) AS moving_avg  FROM city_data WHERE country = 'Kenya'  ORDER BY year
```
###### city data - Johannesburg, South Africa
```
SELECT year, city, country, avg_temp, avg(avg_temp) OVER (ORDER BY year ROWS BETWEEN 10 PRECEDING AND 10 FOLLOWING) AS moving_avg  FROM city_data WHERE country = 'South Africa' AND city = 'Johannesburg'  ORDER BY year 
```
**Moving average calculation** 
Using SQL query; see query above Moving average of 10 years preceding and following current year. 
 
Key considerations when deciding how to visualize the trends 
1. Creation of a new year table with a one to many relationship to both the city_data and global_data data sources hence use of one visual with a common X-axis 
2. Choice of the visual – Line chart with clearly distinguishable line colours. 

**Visual**
![alt text](https://github.com/ephraimmwai/Data-Analyst-ND-Exploring-Weather-Trends/blob/master/Weather%20trends%20v01_001.png "Weather Trends Visual ")

**At least four observations about the similarities and/or differences in the trends**
1. Nairobi and Johannesburg Cities are hotter on average compared to global average temperatures with a consistent difference of around 7℃ over the years. 
2. There is an increase of 1.38℃ in Nairobi City average temperature from 15.53℃ in 1850 to 16.91℃ in 2013. 3
3.  There is a similar consistent increase in temperatures over the years for Nairobi, Johannesburg and the global average.
4.  In General, there is an increase in global temperatures with a consistent rise of 2℃ over the last one hundred and fifty years. 
 