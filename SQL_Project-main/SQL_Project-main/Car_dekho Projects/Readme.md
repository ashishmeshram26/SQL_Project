<h1>Car Dekho Dataset</h1>

<h2>Introduction:</h2>
Our Manager have some query reagrding data set we try to slove his all query by usng SQL.
The "Car Dekho" dataset contains information about various car models, including their specifications, pricing, and seller details. In this project, we will perform an exploratory data analysis to gain insights into the dataset. 
We will answer questions related to car availability, pricing, fuel types, transmissions, and more. By the end of this analysis, we aim to provide valuable information for potential car buyers and sellers.

Overview:
This project we will try to slve all query of manger and project will consist of several steps, each focusing on a specific aspect of the dataset. Here's a step-by-step breakdown of our analysis.

Query1: Read Cars data <br>
Result: select * from car_data;

Query2: Total Cars: To get a count of total records<br>
Result:  select count(Name) from car_dekho;

Query3: Find the total number of cars for each seller type.<br>
Result: select seller_type, count(*) from car_dekho group by seller_type;

Query4: The manager asked the employee How many cars will be available in 2023?<br>
Result: select * from car_dekho where year=2023;  or<br>
        select count(*) from car_dekho where year=2023;
        
Query5: The manager asked the employee How many cars is available in 2020,2021,2022?<br>
Result: select count(*) from car_dekho where year in (2020, 2021, 2022) group by year;

Query6: The manager asked print the total of all cars by year. I don't see all the details?<br>
Result: select year, count(*) from car_dekho group by year;

Query7: The manager asked which car has the highest mileage (Mileage) in the dataset?<br>
Result: select name, max(mileage) as highest_Mileage from car_dekho group by name order by highest_Mileage desc limit 5; 

Query8: The manager asked how many cars have manual transmission (Transmission_Type) in 2019?<br>
Result: select count(*) from car_dekho where transmission = "Manual" and year= 2019 ;

Query9: The manager asked to car dealer agent How many diesel cars will there be in 2020?<br>
Result: select count(*) from car_dekho where fuel= "diesel" and year=2020;

Query10: Clint requested how many petrol cars will there be in 2020?<br>
Result: select count(*) from car_dekho where fuel= "petrol" and year=2020;

Query11: The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year.<br>
Result: select year,fuel,count(*) from car_dekho where fuel= "diesel" group by year;<br>
        select year,fuel,count(*) from car_dekho where fuel= "petrol" group by year;<br>
        select year,fuel,count(*) from car_dekho where fuel= "CNG" group by year;
        
Query12: Manager said there were more than 100 cars in a given year, which year had more than 100 cars?<br>
Result:  select year ,(count(*) ) as total_car from car_dekho group by year having total_car > 100  ;

Query13: The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.<br>
Result:  select count(*) from car_dekho where year between 2015 and 2023 ;

Query14: The manager said to the employee All cars details between 2015 to 2023 we need complete list.<br>
Result: select * from car_dekho where year between 2015 and 2023;

Query15: The manager asked what is the average selling price of cars in 2022?<br>
Result: select avg(selling_price) from car_dekho where year=2022;

Query16: The manager said to the employee print list the top 5 car models with the highest selling prices? <br>
Result: select name,max(selling_price) as max_selling_price from car_dekho group by name order by max_selling_price desc limit 5 ;

Query17: The manager said to the employee print list the top 3 car models with the lowest selling prices in 2021. <br>
Result: select name, min(selling_price) as lowest_S_P from car_dekho where  year= 2021 group by name order by lowest_S_P ASC limit 5;

Query18: The manager asked how many cars with automatic transmission (Transmission_Type) have a mileage greater than 20 kmpl? <br>
Result: select count(*) from car_dekho where transmission="Automatic" and Mileage > 20 ;

Query19: The manager asked find the average selling price of cars for each seller type. <br>
Result: select seller_type ,avg(selling_price) as avg_Sp from car_dekho group by seller_type;

Query20: The manager asked list the car models and their respective years that have a mileage greater than 20 km/l. <br>
Result:  SELECT Name, year, mileage FROM car_dekho WHERE mileage > 20;

Query21: The manager asked how many cars are available for each brand (Brand_Name) in the dataset? <br>
Result: SELECT Name, COUNT(*) AS car_count FROM car_dekho GROUP BY Name order by car_count desc;


        
