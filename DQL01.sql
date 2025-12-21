use flipkart_db;
select * from car_data;

use flipkart_db;

select * from car_data; # to display all rows and columns

select Car_Name, Year, Selling_Price, Kms_driven, Fuel_Type, Transmission from car_data; #seleted columns

select * from car_data where year= 2014;  # where - filter condition (single filter)

select * from car_data where year = 2014 and fuel_type ="Petrol"; # where - filter condition (double filter)

select * from car_data where year= 2014 and fuel_type ="Petrol" and Transmission = "Automatic";

select * from car_data where Year =2014 or year =2015;

select * from car_data where Year in (2014,2015,2016);  #multiple values of year () brackets is important 

select * from car_data where kms_driven < 15000;

select * from car_data where kms_driven >= 10000 and kms_driven <=15000;

select * from car_data where kms_driven between 10000 and 15000;    # most effective

# sort ascending and descending

select * from car_data order by selling_price ;  # ORDER BY ----will sort in ascending by default

select * from car_data order by selling_price desc ; # desc to order it descending and asc is default