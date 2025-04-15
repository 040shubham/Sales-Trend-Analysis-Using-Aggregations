CREATE DATABASE online_sales_ob;
USE online_sales_ob;

select * from online_sales_data

SELECT * from online_sales_data LIMIT 10;

SELECT
  EXTRACT(YEAR FROM Date) AS order_year,
  EXTRACT(MONTH FROM Date) AS order_month,
  SUM(`Total Revenue`) AS total_revenue,
  COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM online_sales_data
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

