SELECT * FROM cars.`car dekho`;
use cars;

#read car data & Total cars : to  get a count of total records
SELECT count(*) FROM cars.`car dekho`;

-- Manager ask to employee " how many cars will be available in 2023"--
select count(*) from cars.`car dekho` where year=2023;

-- Manager ask to employee " how many cars will be available in 2020,2021,20222"--
select year,count(*) from cars.`car dekho` where year in (2020,2021,2022) group by year;

#print the Total of all cars by year, don't see all the details--
select year, count(*) from cars.`car dekho` group by year;

-- how many diesel cars will be there in 2020--
select count(*) from cars.`car dekho` where year=2020 and fuel="diesel";

-- how many petrol cars will be there in 2020--
select count(*) from cars.`car dekho` where year=2020 and fuel="petrol";

# print all the fuel cars (patrol, deisel and CNG) come by all year--
select year, count(*) from cars.`car dekho` where fuel in("petrol","deisel","CNG") group by year;

#Which year had more then 100 cars--
select year, count(*) from cars.`car dekho` group by year having count(*)>100;

#All cars count detail between 2015 and 2023--
select count(*) from cars.`car dekho` where year between 2015 and 2023;

#All cars detail between 2015 and 2023--
select year, count(*) from cars.`car dekho` where year between 2015 and 2023 group by year;

