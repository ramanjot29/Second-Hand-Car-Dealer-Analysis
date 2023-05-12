-----Second Hand Car Dealer Analysis-----

This repository contains an analysis of a second hand car dealer database using MySQL. 
The analysis includes a variety of queries to extract insights from the data, such as the top cars with the highest mileage and 
their corresponding fuel types, the average selling price of cars by transmission type, and the number of cars for each year of manufacture.

-----Data
The database used in this analysis is called car_dekho and contains the following columns:

   1.name
   2.year
   3.selling_price
   4.km_driven
   5.fuel
   6.seller_type
   7.transmission
   8.owner
   9.mileage
  10.engine
  11.max_power
  12.torque
  13.seats

-----Queries
The analysis is performed through SQL queries, which are available as 'queries_on_car_dekho.sql' files in this repository. The queries include:

--top_mileage_cars.sql - retrieves the top 5 cars with the highest mileage and their corresponding fuel types.
--avg_selling_price_by_transmission.sql - retrieves the average selling price of cars by transmission type, ordered from highest to lowest average selling price.
--top_max_power_cars.sql - retrieves the top 10 cars with the highest maximum power output and their corresponding fuel types.
--car_count_by_year.sql - retrieves the number of cars for each year of manufacture, ordered from oldest to newest year.

-----Results

The results of each query are presented in the form of tables, available in this repository as sql files 'solutions_queries_on_car_dekho'.

-----Usage
To run the queries and reproduce the analysis, follow these steps:

Download the car_dekho_data.csv file and import the database into your MySQL environment.
Run the SQL queries located in the sql file 'solutions_queries_on_car_dekho' .

-----Credits
This analysis was performed by Ramanjot. The dataset was obtained from Youtube.




