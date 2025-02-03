use car_data;

-- Read Cars data
select * from car_data;
-- Total Cars: To get a count of total records--
select count(Name) from car_dekho;

-- Find the total number of cars for each seller type.
select seller_type, count(*) from car_dekho group by seller_type;

-- The manager asked the employee How many cars will be available in 2023?--
select * from car_dekho where year=2023;
select count(*) from car_dekho where year=2023;

-- The manager asked the employee How many cars is available in 2020,2021,2022--
select count(*) from car_dekho where year in (2020, 2021, 2022) group by year;

-- Clint asked me to print the total of all cars by year. I don't see all the details.--
select year, count(*) from car_dekho group by year;

-- Which car has the highest mileage (Mileage) in the dataset?
select name, max(mileage) as highest_Mileage from car_dekho group by name order by highest_Mileage desc limit 5; 

-- How many cars have manual transmission (Transmission_Type) in 2019?
select count(*) from car_dekho where transmission = "Manual" and year= 2019 ;

-- Clint asked to car dealer agent How many diesel cars will there be in 2020?--
select count(*) from car_dekho where fuel= "diesel" and year=2020;

-- Clint requested a car dealer agent How many petrol cars will there be in 2020?--
select count(*) from car_dekho where fuel= "petrol" and year=2020;

-- The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year.--
select year,fuel,count(*) from car_dekho where fuel= "diesel" group by year;
select year,fuel,count(*) from car_dekho where fuel= "petrol" group by year;
select year,fuel,count(*) from car_dekho where fuel= "CNG" group by year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
select year ,(count(*) ) as total_car from car_dekho group by year having total_car > 100  ;

-- The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.
select count(*) from car_dekho where year between 2015 and 2023 ;

-- The manager said to the employee All cars details between 2015 to 2023 we need complete list--

select * from car_dekho where year between 2015 and 2023;

-- What is the average selling price of cars in 2022?--
select avg(selling_price) from car_dekho where year=2022;

-- List the top 5 car models with the highest selling prices--
select name,max(selling_price) as max_selling_price from car_dekho group by name order by max_selling_price desc limit 5 ;

-- List the top 3 car models with the lowest selling prices in 2021. -- 
select name, min(selling_price) as lowest_S_P from car_dekho where  year= 2021 group by name order by lowest_S_P ASC limit 5;

-- How many cars with automatic transmission (Transmission_Type) have a mileage greater than 20 kmpl?
select count(*) from car_dekho where transmission="Automatic" and Mileage > 20   ;

-- Find the average selling price of cars for each seller type.--
select seller_type ,avg(selling_price) as avg_Sp from car_dekho group by seller_type;

  -- List the car models and their respective years that have a mileage greater than 20 km/l.
  SELECT Name, year, mileage FROM car_dekho WHERE mileage > 20;
  
  -- How many cars are available for each brand (Brand_Name) in the dataset?
  SELECT Name, COUNT(*) AS car_count FROM car_dekho GROUP BY Name order by car_count desc;

