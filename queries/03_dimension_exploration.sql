
-- Explore all the countries our customers come from 
SELECT DISTINCT country
FROM [gold].[dim_customers];


-- Explore customers' ages, gender, and marital status 
SELECT DISTINCT 
	DATEDIFF(YEAR,[birthdate],GETDATE())AS age,
	[gender],
	[marital_status]
FROM [gold].[dim_customers]
ORDER BY 1;

-- Explore All Categories, subcategories, product line, and product name
SELECT DISTINCT
	[category],
	[product_line],
	[subcategory],
	[product_number]
FROM [gold].[dim_products];
