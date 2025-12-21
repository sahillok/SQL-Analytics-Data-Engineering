use flipkart_db;

SELECT * FROM car_data;

select year, count(*) from car_data
group by year
having count(*) > 25;

######################################################################################

use amazon_db;

# i want all countries store sales ( give me only the countries which has made 5L of sales)

select * from ele_store1;

select country , sum(sales) from ele_store1
where channel = "Store"
group by country
having sum(sales) >= 500000;

# Order of writing the code (Reference)
# SELECT COLUMNS
# FROM TABLE
# WHERE CLAUSE (FOR APPLYING CONDITIONS IN EXISTING TABLES)
# GROUP BY 
# HAVING CLAUSE (FOR APPLYING CONDITIONS ON AGGREGATED TABLES)
# ORDER BY  (FOR SORTING ASCENDING AND DESCENDING)
# LIMIT 


# I WANT TOTAL SALES AVG PROFIT FOR EACH PRODUCT CATEGORY OF STORE AND GIVE ME ONLY THOSE PRODUCTS WHICH IS MORE THAN 1 LAKH SALES SORT BASED ON PROFIT HIGHEST TO LOWEST

SELECT ProductCategory, sum(Sales), avg(Profit) from ele_store1
WHERE Channel ="Store"
GROUP BY productCategory
HAVING sum(Sales) > 100000
ORDER BY avg(Profit) DESC;

# there is no having clause without group by....that too after group by
# group by ----> parent
# having -------> kid

#Where is used to filter existing columns and having is used to filetr aggregated columns

# dont test the depth of river with both feets

#while using select know the record count first

select * from ele_store1 limit 5;

# i need top 5 countries with highest sales

select Country, sum(Sales) from ele_store1
group by Country
order by sum(Sales) desc 
limit 5;








