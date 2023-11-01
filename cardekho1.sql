SELECT * FROM car.car_dekho;

-- READ DATA--  
select COUNT(*) FROM car_dekho;
-- total cars to get a count of total records--  

-- cars available in 2023--
select count(*) from car_dekho where year = 2023;

-- cars available in 2020,2021,2022--  
select count(*) from car_dekho where year in(2020,2021,2022) group by year;

-- client asked me to print the total of all the cars by year,i don't see the details--  
select year, count(*) from car_dekho group by year;

-- client asked the dealer ,how many diesel cars were available in 2020-- 
 select count(*) from car_dekho where year =2020 and fuel="Disel"; #20

-- client requested a car dealer agent how many petrol cars will be there in 2020-- 
select count(*) from car_dekho where year = 2020 and fuel="Petrol"; #51

-- Manager told employee to print all the fuel cars(Petrol,Diesel,Cng)-- 
select year,count(*) from car_dekho where fuel ="Petrol" group by year;
select year,count(*) from car_dekho where fuel ="Diesel" group by year;
select year,count(*) from car_dekho where fuel ="CNG" group by year;

-- Manager said there were more than 100 cars in a given year,which year had more than 100 cars?-- 
select year,count(*)from car_dekho group by year having count(*)>100;

-- Manager asked for all the car details between 2015 ans 2023 ; Complete list-- 
select count(*) from car_dekho where year between 2015 and 2023 ;

-- The manager said to the employee all car between 2015 to 2023 we need complete list in details-- 
select* from car_dekho where year between 2015 and 2023;
