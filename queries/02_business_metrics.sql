-- Find the Total Sales
SELECT SUM([sales_amount]) AS Total_sales
FROM [gold].[fact_sales];

-- Find How Many Items we Sold
SELECT SUM([quantity]) AS Total_Quantity
FROM [gold].[fact_sales];

-- Find The Average selling Price 
SELECT AVG([price]) AS AVG_price
FROM [gold].[fact_sales];

-- Find the total Number of Orders
SELECT COUNT([order_number]) AS Total_orders
FROM [gold].[fact_sales];

SELECT COUNT(DISTINCT[order_number]) AS Total_orders
FROM [gold].[fact_sales];
-- Find the total Number of Products
SELECT COUNT(product_name) AS Total_products
FROM  [gold].[dim_products];

SELECT COUNT(DISTINCT product_name) AS Total_products
FROM [gold].[dim_products];
-- Measure Exploration:

-- Find the total number of customers
	SELECT COUNT(customer_id) AS Total_custimers
	FROM [gold].[dim_customers];

-- Find the Total number of customers that has placed an order
	SELECT COUNT(DISTINCT customer_key) AS Total_custimers
	FROM [gold].[fact_sales];


-- Generate a Report that shows all key metrics of the Business
SELECT 'Total Sales' AS measure_name, SUM([sales_amount]) AS measure_value
FROM [gold].[fact_sales]
UNION ALL 
SELECT 'Total quantity' , SUM([quantity]) 
FROM [gold].[fact_sales]
UNION ALL 
SELECT 'Average price', AVG([price])
FROM [gold].[fact_sales]
UNION ALL 
SELECT 'Total number of Orders', COUNT(DISTINCT[order_number]) 
FROM [gold].[fact_sales]
UNION ALL 
SELECT 'Total number of product', COUNT(product_name) 
FROM  [gold].[dim_products]
UNION ALL 
SELECT 'Total number of customer',COUNT(customer_id) 
FROM [gold].[dim_customers];
