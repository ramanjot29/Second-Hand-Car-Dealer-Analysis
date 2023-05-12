/*--------1)Read Cars Data----------*/

select * from car_dekho;

/*--2)Total Cars: To get a count of total reconds--*/

select count(*) Total_Cars from car_dekho;

/*--3)The Manager asked the employee how many cars will be available in 2023?--*/

select count(*) Total_Cars_2023  from car_dekho
where year=2023;

/*--4)The Manager asked the employee  How many cars is available in 2020,2021,2022--*/

select year,count(*)Available_cars from car_dekho
where year in (2020,2021,2022)
group by year order by year asc;

/*--5)Clint asked me to print the total of all cars by year.I don't see all the details.--*/

select year,count(*) Total_Cars from car_dekho
group by year order by year asc;

/*--6)Clint asked to car dealer agent how many diesel cars will there be in 2020.--*/

select count(*)  diesel_cars_2020 from car_dekho
where fuel='Diesel' and year=2020;

/*--7)Clint requested a car dealer agent how many petrol cars will there be in 2020?--*/

select count(*)  Petrol_cars_2020 from car_dekho
where fuel='Petrol' and year=2020;

/*--8)The manager told the employee to give a print all the fuel cars(petrol,diesel,and CNG)come by all year.--*/

select year,count(*) Petrol_cars from car_dekho where fuel='petrol'  group by year;
select year,count(*) diesel_cars from car_dekho where fuel='Diesel'  group by year;
select year,count(*) CNG_cars from car_dekho where fuel='CNG'  group by year;

/*--9)Manager said there were more the 100 cars in a given year,which year had more than 100 cars?--*/

select year,count(*) More_than_100  from car_dekho
group by year 
having More_than_100>100
order by year asc;

/*--10)The manager said to the employee all cars count details between 2015 and 2023;we need a complete list.--*/

select count(*) from car_dekho
where year between 2015 and 2023;

/*--11)The manager saif to the employee All cars details between 2015 to 2023 we need complete list.--*/

select * from car_dekho
where year between 2015 and 2023;

/*--12)Retrieve all cars that have a selling price between 5,00000 and 10,00000:--*/

select * from car_dekho
where selling_price between 300000 and 500000;

/*--13)Retrieve all cars that have been driven less than 50,000 kilometers and are being sold by dealers:--*/

select * from car_dekho
where km_driven<50000 and seller_type='dealer';

/*--14)Retrieve the average mileage, engine displacement, and maximum power output for all cars:--*/

select round(avg(mileage),2) AVG_MILEAGE,round(avg(engine),2) AVG_ENGINE,round(avg(max_power),2) AVG_MAX_POWER from car_dekho;


/*--15)Retrieve the number of cars for each type of fuel:--*/

select fuel,count(*) Total_cars from car_dekho
group by fuel;

/*--16)Retrieve the top 10 most expensive cars, along with their selling prices, years, and fuel types.--*/

select * from car_dekho
order by selling_price desc limit 10;

/*--17)Retrieve the average selling price of cars for each type of fuel, ordered from highest to lowest average selling price.--*/

select fuel,avg(selling_price) AVG_SELL_PRICE from car_dekho
group by fuel order by AVG_SELL_PRICE desc;

/*--18)Retrieve all cars that have been driven less than 10,000 kilometers, have a selling price between 500000 and 1000000 dollars, 
and are being sold by individual sellers.--*/

select * from car_dekho
where km_driven<10000 and selling_price between 500000 and 1000000;

/*--19)Retrieve the top 5 cars with the highest mileage and their corresponding fuel types.--*/

select distinct(name),fuel,mileage from car_dekho
order by mileage desc limit 5;


/*--20)Retrieve the total number of cars sold by dealers and the total number of cars sold by individual sellers.--*/

select seller_type,count(*)  TOTAL_CARS from car_dekho
where seller_type in ('dealer','individual')
group by seller_type;

/*--21)Retrieve the average selling price of cars for each type of transmission, ordered from highest to lowest average selling price.--*/

select transmission,avg(selling_price) AVG_PRICE from car_dekho
group by transmission order by AVG_PRICE desc;

/*--22)Retrieve the top 10 cars with the highest maximum power output and their corresponding fuel types.--*/

select distinct name,max_power,fuel from car_dekho
order by max_power desc limit 10;

/*--23)Retrieve the number of cars for each year of manufacture, ordered from oldest to newest year.--*/

select year,count(*) from car_dekho
group by year order by year asc;

/*--24)Retrieve all cars that have an engine displacement greater than or equal to 2000 cc, have been 
driven less than 100,000 kilometers, and are being sold by individual sellers.--*/

select name,seller_type,km_driven,engine from car_dekho
where SUBSTRING_INDEX(engine, ' ', 1)>=2000 and seller_type='individual' and km_driven<100000;

/*--25)Retrieve the average mileage, engine displacement, and maximum power output for all cars for each type of fuel, 
ordered by fuel type.--*/

select fuel,round(avg(mileage),2) AVG_MILEAGE,round(avg(engine),2) AVG_ENGINE,round(avg(max_power),2) AVG_MAX_POWER from car_dekho
group by fuel order by fuel;