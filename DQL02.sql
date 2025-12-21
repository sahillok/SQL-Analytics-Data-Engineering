use flipkart_db;

select * from car_data;

select distinct Fuel_Type from car_data;  # to get unique records of the column  #DISTINCT - remove duplicate

select distinct Year from car_data order by year;   # get the distinct/unique year for which cars are avaialble also order it ascending based on year

select count(*) from car_data ;    # no of unique value
select count(Car_Name) from car_data;

select count(*) from car_data where year =2014;  # no of unique values in given filter

select distinct car_name  from car_data where year = 2014;

select  count(car_name) from car_data where year =2014;

#oldest model

select min(year) from car_data;
select max(year) from car_data; #minimum and maximum

select min(selling_price), max(selling_price) from car_data;

select min(kms_driven), max(kms_driven) from car_data;

select count(*) from car_data;   #total records count

select count(*) from car_data where fuel_type = "Petrol";
select count(*) from car_data where fuel_type = "Diesel";
select count(*) from car_data where fuel_type = "CNG";

# how many cars in year

select count(*) from car_data where year=2014;
select count(*) from car_data where year=2016;
select count(*) from car_data where year = 2012;

#generalize now:

select year, count(*) from car_data group by year order by year;

select Fuel_Type, count(*) from car_data group by Fuel_Type;
select count(*) from car_data where fuel_type= "Petrol" and Transmission = "Automatic";
select Fuel_Type, Transmission ,count(*) from car_data group by Fuel_Type, Transmission order by fuel_type;

select Fuel_type, Transmission , count(Fuel_Type) from car_data group by fuel_type, Transmission order by Fuel_Type;


#######################################################################################################################################
                                               # electronic Store 

use amazon_db;

select * from ele_store1;

select count(*) from ele_store1;

select sum(sales) from ele_store1;

select sum(sales) from ele_store1 where country ="Russia";
select sum(sales) from ele_store1 where country ="India";
select sum(sales) from ele_store1 where Country ="China";

#Generalize now:

Select count(distinct Country) from ele_store1;

select country, sum(sales) from ele_store1 group by country;

select distinct channel from ele_store1;

select channel, sum(sales) from ele_store1 group by channel;

select distinct region from ele_store1;

select region ,channel, sum(sales) from ele_store1
group by region, channel 
order by region;

# i need all countries online sales

select country,sum(sales),sum(profit), sum(orderqty) from ele_store1 
where channel ="Online"
group by country;







################################################################################################

# i need count of automatic petrol cards and manual petrol cars

use flipkart_db;

select transmission ,fuel_Type, count(*) from car_data
where fuel_type = "Petrol"
group by transmission , fuel_type;

#give me all year's car count but include only years which has alteast 25 cars

select year,count(*) from car_data
where year in(2014.2013,2017,2015,2016)

# above solution is correct but what if we have data for 100 years ?
# where clause can filter existing column of table  #################importtant######################

select * from car_data;





























										











