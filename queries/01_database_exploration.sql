-- Database Exploration:

-- Explore All Objects in the Database
SELECT *
FROM INFORMATION_SCHEMA.TABLES

-- Explore All Columns in the Database
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS

-- Explore All Columns for a specific Table in the Database
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'fact_sales'
