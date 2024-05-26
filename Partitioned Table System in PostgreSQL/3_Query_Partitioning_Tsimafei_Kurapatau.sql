-- 3
-- Retrieve all sales in a specific month (August)
SELECT * 
FROM sales_data 
WHERE sale_date >= '2021-03-05' 
  AND sale_date < '2024-06-07';

-- Calculate the total sale_amount for each month
SELECT 
    to_char(sale_date, 'YYYY-MM') AS month, 
    SUM(sale_amount) AS total_sale_amount
FROM sales_data
GROUP BY to_char(sale_date, 'YYYY-MM')
ORDER BY month;

-- Identify the top three salesperson_id values by sale_amount within a specific region (region_id = 1)
SELECT 
    salesperson_id, 
    SUM(sale_amount) AS total_sales
FROM sales_data
WHERE region_id = 2
GROUP BY salesperson_id
ORDER BY total_sales DESC
LIMIT 3;