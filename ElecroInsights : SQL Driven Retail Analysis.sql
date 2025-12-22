# Assignment No.1
# ElecroInsights : SQL Driven Retail Analysis
# Electronic Store Data Analysis

Select * from ele_store1 limit 5;

# 1. What is total number of orders placed?
SELECT count(*) FROM ELE_STORE1;

# 2. What are the unique channels present and how many are there?
SELECT DISTINCT CHANNEL FROM ELE_STORE1;  # TO GET THE UNIQUE CHANNELS
SELECT COUNT(DISTINCT CHANNEL) FROM ELE_STORE1; # TO GET NUMBER OF UNIQUE CHANNELS

# 3. How many cities are there?
SELECT COUNT(DISTINCT CITY) FROM ELE_STORE1;

# 4. Query the total cities count by Country
SELECT COUNTRY, COUNT(DISTINCT CITY) AS TotalCities FROM ELE_STORE1 GROUP BY COUNTRY;

# 5. How many products are there?
SELECT COUNT(DISTINCT PRODUCTNAME) FROM ELE_STORE1;

# 6. Query the total sales and total profit?
SELECT SUM(SALES) TOTAL_SALES, SUM(PROFIT) TOTAL_PROFIT FROM ELE_STORE1;

# 7. Query the total sales by region and country?
SELECT REGION, COUNTRY, SUM(SALES) FROM ELE_STORE1 GROUP BY REGION, COUNTRY;

# 8. Query the total order qty by promotion name?
SELECT PROMOTIONNAME, SUM(ORDERQTY) TOTAL_ORDER_QTY FROM ELE_STORE1 GROUP BY PROMOTIONNAME; 

# 9. How much the total sales happened in Asia region?
SELECT SUM(SALES) TOTAL_SALES FROM ELE_STORE1 WHERE REGION="ASIA" ;

# 10. How much profit got in Asia region and India?
SELECT SUM(PROFIT) TOTAL_PROFIT FROM ELE_STORE1 WHERE REGION="ASIA" AND COUNTRY="INDIA";

# 11. Query the total order qty by Manufacturer and Product Name?
SELECT MANUFACTURER, PRODUCTNAME, SUM(ORDERQTY) TOTAL_ORDER_QTY FROM ELE_STORE1 GROUP BY MANUFACTURER, PRODUCTNAME;

# 12. Query the total order quantity greater than 27 by city?
SELECT CITY, SUM(ORDERQTY) TOTAL_ORDER_QTY FROM ELE_STORE1 GROUP BY CITY HAVING TOTAL_ORDER_QTY > 27;

# 13. How much total sales happened in China and Beijing?
SELECT SUM(SALES) TOTAL_SALES FROM ELE_STORE1 WHERE COUNTRY="CHINA" AND CITY="BEIJING";

# 14. How much total sales happened in Asian Holiday Promotion?
SELECT SUM(SALES) TOTAL_SALES FROM ELE_STORE1 WHERE PROMOTIONNAME="ASIAN HOLIDAY PROMOTION";

# 15. How much total profit value by Contoso, Ltd Manufacturer?
SELECT SUM(PROFIT) TOTAL_PROFIT FROM ELE_STORE1 WHERE MANUFACTURER = "CONTOSO, LTD";

# 16. Query the total sales and total order qty by productcategory?
SELECT PRODUCTCATEGORY, SUM(SALES) TOTAL_SALES, SUM(ORDERQTY) TOTAL_ORDER_QTY FROM ELE_STORE1 GROUP BY PRODUCTCATEGORY;

# 17. Query the total sales value in between 1057 and 26700 by Region?
SELECT REGION, SUM(SALES) TOTAL_SALES FROM ELE_STORE1 GROUP BY REGION HAVING TOTAL_SALES BETWEEN 1057 AND 26700;

# 18. How many orders placed in Pittsfield city?
SELECT COUNT(*) NO_OF_ORDERS FROM ELE_STORE1 WHERE CITY ="PITTSFIELD";

# 19. Query the total sales and total profit by region, country and city?
SELECT REGION,COUNTRY,CITY, SUM(SALES) TOTAL_SALES, SUM(PROFIT) TOTAL_PROFIT FROM ELE_STORE1 GROUP BY REGION,COUNTRY,CITY;

# 20. Query the total unit cost and total price by productcategory, productsubcategory and Manufacturer?
SELECT PRODUCTCATEGORY, PRODUCTSUBCATEGORY, MANUFACTURER, SUM(UNITCOST) TOTAL_UNIT_COST, SUM(PRICE) TOTAL_PRICE 
FROM ELE_STORE1 GROUP BY PRODUCTCATEGORY, PRODUCTSUBCATEGORY, MANUFACTURER;
