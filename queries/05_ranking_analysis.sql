-- Which is the TOP 5 Products generate the highest revenue 
SELECT TOP 5
	p.product_name,
	SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
	ON f.product_key=p.product_key
GROUP BY p.product_name
ORDER BY 2 ASC;
-- what are the 5 worst_performing products in terms of sales
SELECT TOP 5
	p.product_name,
	SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
	ON f.product_key=p.product_key
GROUP BY p.product_name
ORDER BY 2 ASC;

-- Which is the TOP 5 category generate the highest revenue 
SELECT TOP 5
	p.category,
	SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
	ON f.product_key=p.product_key
GROUP BY p.category
ORDER BY 2 DESC;

-- what are the 5 worst_performing category in terms of sales
SELECT TOP 5
	p.category,
	SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
	ON f.product_key=p.product_key
GROUP BY p.category
ORDER BY 2 ASC;

-- what are the 5 worst_performing subcategory in terms of sales
SELECT TOP 5
	p.subcategory,
	SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
	ON f.product_key=p.product_key
GROUP BY p.subcategory
ORDER BY 2 ASC;

-- Which is the TOP 5 subcategory generate the highest revenue 
SELECT TOP 5
	p.subcategory,
	SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
	ON f.product_key=p.product_key
GROUP BY p.subcategory
ORDER BY 2 DESC;

--Find the top 10 customers who have generated the highest revenue 
--And 3 customers with the fewest orders palced

SELECT TOP 10
	c.customer_key,
	c.first_name,
	c.last_name,
	SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
	ON f.customer_key=c.customer_key
GROUP BY c.customer_key,
	c.first_name,
	c.last_name
ORDER BY 4 DESC;

SELECT TOP 3
	c.first_name,
	c.last_name,
	COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales f
INNER JOIN gold.dim_customers c
	ON f.customer_key=c.customer_key
GROUP BY c.first_name,c.last_name
ORDER BY 3 ASC;
