SELECT *
FROM bright.coffee.coffe_shop;

---describing the table
DESCRIBE EXTENDED bright.coffee.coffe_shop;

---checking missing values
SELECT*
FROM bright.coffee.coffe_shop
WHERE product_category IS NULL;

---checking unique values
SELECT DISTINCT product_category
FROM bright.coffee.coffe_shop
LIMIT 10;

---checking for duplicats
SELECT *, COUNT(*) AS duplicate_count
FROM bright.coffee.coffe_shop
GROUP BY ALL
HAVING COUNT(*) > 1;

----checking producttypeand category
SELECT DISTINCT
    product_type,
    product_category
FROM bright.coffee.coffe_shop
ORDER BY product_category, product_type
LIMIT 10;

--checking the total amount
SELECT
transaction_Qty,
unit_price,
(transaction_Qty * unit_price) AS total_amount
FROM bright.coffee.coffe_shop;

---checking total revenue
SELECT SUM(transaction_Qty * unit_price) AS total_revenue
FROM bright.coffee.coffe_shop;

---analyse revenue by product type
 SELECT
 product_type,
 SUM(transaction_Qty * unit_price) AS total_revenue
 FROM bright.coffee.coffe_shop
 GROUP BY product_type
 ORDER BY total_revenue DESC;


 
---analyse revenue by product category
 SELECT
 product_category,
 SUM(transaction_Qty * unit_price) AS total_revenue
 FROM bright.coffee.coffe_shop
 GROUP BY product_category
 ORDER BY total_revenue DESC;

----find the top 5 products by revenue
 SELECT
 product_detail,
 SUM(transaction_Qty * unit_price) AS total_revenue
 FROM bright.coffee.coffe_shop
 GROUP BY product_detail
 ORDER BY total_revenue DESC
 LIMIT 5;
 
 ----find highest & lowest transactions

 SELECT
 MAX (transaction_Qty * unit_price) AS `highest transaction`,
 MIN (transaction_Qty * unit_price) AS `lowest transaction`
 FROM bright.coffee.coffe_shop;

-----check the earliest & latest transaction date
 SELECT
 MIN(transaction_date) AS `earliest transaction`,
 MAX(transaction_date) AS `latest transaction`
 FROM bright.coffee.coffe_shop;

  ---checking transaction date format
 SELECT DISTINCT transaction_date
 FROM bright.coffee.coffe_shop;

  -----naming the month 
 SELECT DISTINCT DATE_FORMAT(transaction_date, 'MMMM') AS month_name
 FROM bright.coffee.coffe_shop;

-----counting the number of transactions per month
 SELECT DISTINCT DATE_FORMAT(transaction_date, 'MMMM') AS month_name,
 COUNT(*) AS transaction_count
 FROM bright.coffee.coffe_shop
 GROUP BY month_name
 ORDER BY transaction_count DESC;

 -----checking transaction time
 SELECT DISTINCT transaction_time
 FROM bright.coffee.coffe_shop;

 SELECT DISTINCT DATE_FORMAT(transaction_time, 'HH:mm:ss') AS transaction_time
 FROM bright.coffee.coffe_shop;

 ----create time buckets
 SELECT DISTINCT
   CASE
      WHEN HOUR(transaction_time) BETWEEN 6 AND 9 THEN 'early morning'
      WHEN HOUR(transaction_time) BETWEEN 9 AND 12 THEN 'morning'
      WHEN HOUR(transaction_time) BETWEEN 12 AND 15 THEN 'afternoon'
      WHEN HOUR(transaction_time) BETWEEN 15 AND 18 THEN 'evening'
      WHEN HOUR(transaction_time) >18 THEN 'night'
      ELSE 'late'
   END AS time_bucket
 FROM bright.coffee.coffe_shop;

 ----Analyze revenue by time bucket
 SELECT
   CASE
      WHEN HOUR(transaction_time) BETWEEN 7 AND 9 THEN 'morning'
      WHEN HOUR(transaction_time) BETWEEN 10 AND 12 THEN 'afternoon'
      WHEN HOUR(transaction_time) BETWEEN 13 AND 15 THEN 'evening'
      WHEN HOUR(transaction_time) BETWEEN 16 AND 18 THEN 'night'
      WHEN HOUR(transaction_time) BETWEEN 19 AND 20 THEN 'closing hours'
      ELSE 'invalid'
   END AS time_bucket,
   SUM(transaction_Qty * unit_price) AS total_revenue
 FROM bright.coffee.coffe_shop
 GROUP BY time_bucket
 ORDER BY total_revenue DESC; 

 ---analyze store_id
 SELECT DISTINCT store_id
 FROM bright.coffee.coffe_shop
 ORDER BY store_id;

 ---analyze revenue by store_id
 SELECT
 store_id,
 SUM(transaction_Qty * unit_price) AS total_revenue
 FROM bright.coffee.coffe_shop
 GROUP BY store_id
 ORDER BY total_revenue DESC; 

 ---check store id
SELECT DISTINCT store_id
FROM bright.coffee.coffe_shop
ORDER BY store_id;
 
----total units sold by product type
 SELECT
 product_type,
 SUM(transaction_Qty) AS total_units_sold
 FROM bright.coffee.coffe_shop
 GROUP BY product_type
 ORDER BY total_units_sold DESC;

 ----total units sold by product category
 SELECT
 product_category,
 SUM(transaction_Qty) AS total_units_sold
 FROM bright.coffee.coffe_shop
 GROUP BY product_category
 ORDER BY total_units_sold DESC;

 ----total units sold by product detail
 SELECT
 product_detail,
 SUM(transaction_Qty) AS total_units_sold
 FROM bright.coffee.coffe_shop
 GROUP BY product_detail
 ORDER BY total_units_sold DESC;

 ----total units sold by store location
 SELECT
 store_location,
 SUM(transaction_Qty) AS total_units_sold
 FROM bright.coffee.coffe_shop
 GROUP BY store_location
 ORDER BY total_units_sold DESC;

 ----analyze units sold by time interval & product type
 SELECT
    CASE
      WHEN HOUR(transaction_time) BETWEEN 7 AND 9 THEN 'morning'
      WHEN HOUR(transaction_time) BETWEEN 10 AND 12 THEN 'afternoon'
      WHEN HOUR(transaction_time) BETWEEN 13 AND 15 THEN 'evening'
      WHEN HOUR(transaction_time) BETWEEN 16 AND 18 THEN 'night'
      WHEN HOUR(transaction_time) BETWEEN 19 AND 20 THEN 'closing hours'
      ELSE 'invalid'
       END AS time_bucket,
          product_type,
          SUM(transaction_Qty) AS total_units_sold,
          SUM(transaction_Qty*unit_price) AS total_revenue
 FROM bright.coffee.coffe_shop
 GROUP BY time_bucket,
          product_type
 ORDER BY time_bucket,
          total_units_sold DESC;

  -----best selling product type
  SELECT
    product_type,
    SUM(transaction_Qty) AS total_units_sold
 FROM bright.coffee.coffe_shop
 GROUP BY product_type
 ORDER BY total_units_sold DESC
 LIMIT 1;


-----checkingthe day of the week
SELECT
   CASE
      WHEN DAYOFWEEK(transaction_date) = 1 THEN 'Sunday'
      WHEN DAYOFWEEK(transaction_date) = 2 THEN 'Monday'
      WHEN DAYOFWEEK(transaction_date) = 3 THEN 'Tuesday'
      WHEN DAYOFWEEK(transaction_date) = 4 THEN 'Wednesday'
      WHEN DAYOFWEEK(transaction_date) = 5 THEN 'Thursday'
      WHEN DAYOFWEEK(transaction_date) = 6 THEN 'Friday'
      WHEN DAYOFWEEK(transaction_date) = 7 THEN 'Saturday'
  END AS DayName
  FROM bright.coffee.coffe_shop; 

  ---analyze revenue by day of the week
 SELECT
   CASE
      WHEN DAYOFWEEK(transaction_date) = 1 THEN 'Sunday'
      WHEN DAYOFWEEK(transaction_date) = 2 THEN 'monday'
      WHEN DAYOFWEEK(transaction_date) = 3 THEN 'Tuesday'
      WHEN DAYOFWEEK(transaction_date) = 4 THEN 'Wednesday'
      WHEN DAYOFWEEK(transaction_date) = 5 THEN 'Thursday'
      WHEN DAYOFWEEK(transaction_date) = 6 THEN 'Friday'
      WHEN DAYOFWEEK(transaction_date) = 7 THEN 'Saturday'
  END AS DayName,
   SUM(transaction_Qty * unit_price) AS total_revenue
 FROM bright.coffee.coffe_shop
 GROUP BY DayName
 ORDER BY total_revenue DESC;

 ---analyze units sold by day of the week
 SELECT
   CASE
      WHEN DAYOFWEEK(transaction_date) = 1 THEN 'Sunday'
      WHEN DAYOFWEEK(transaction_date) = 2 THEN 'monday'
      WHEN DAYOFWEEK(transaction_date) = 3 THEN 'Tuesday'
      WHEN DAYOFWEEK(transaction_date) = 4 THEN 'Wednesday'
      WHEN DAYOFWEEK(transaction_date) = 5 THEN 'Thursday'
      WHEN DAYOFWEEK(transaction_date) = 6 THEN 'Friday'
      WHEN DAYOFWEEK(transaction_date) = 7 THEN 'Saturday'
  END AS DayName,
   SUM(transaction_Qty) AS total_units_sold
 FROM bright.coffee.coffe_shop
 GROUP BY DayName
 ORDER BY total_units_sold DESC;

 ---total units sold by date
 SELECT
   transaction_date,
   SUM(transaction_Qty) AS total_units_sold
 FROM bright.coffee.coffe_shop
 GROUP BY transaction_date
 ORDER BY total_units_sold DESC;


 ---check store id
SELECT DISTINCT store_id
FROM bright.coffee.coffe_shop
ORDER BY store_id;

----analyze each store
SELECT
 store_id,
 store_location,
 COUNT(DISTINCT transaction_id) AS total_transactions,
 SUM(transaction_Qty) AS total_units_sold,
 SUM(transaction_Qty * unit_price) AS total_revenue
 FROM bright.coffee.coffe_shop
 GROUP BY store_id, store_location
 ORDER BY total_revenue DESC;

 ---create sales category
 SELECT
 CASE
 WHEN (transaction_Qty * unit_price) > 10000 THEN 'High'
 WHEN (transaction_Qty * unit_price) BETWEEN 5000 AND 10000 THEN 'Medium'
 ELSE 'Low'
 END AS sales_category
 FROM bright.coffee.coffe_shop;


 -
