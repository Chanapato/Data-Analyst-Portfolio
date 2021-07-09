-- View overall dataset
SELECT *
FROM B3route.dbo.Cafe

-- Fill blank cells with previous row value and create a new table
WITH Sales AS(
SELECT 
	NewID=MAX(ID) OVER (PARTITION BY c),
	NewDate=MAX(OrderDate) OVER (PARTITION BY d),
	NewTime=MAX(OrderTime) OVER (PARTITION BY e),
	Product,
	Category,
		Price,
		Qty,
		Total
FROM
(
    SELECT Number, ID, OrderDate, OrderTime
        ,c=COUNT(ID) OVER (ORDER BY Number),
		d=COUNT(OrderDate) OVER (ORDER BY Number),
		e=COUNT(OrderTime) OVER (ORDER BY Number),
		Product,
		Category,
		Price,
		Qty,
		Total
    FROM B3route.dbo.Cafe
) a)

-- View data from sales table
SELECT
	*
FROM 
	Sales

-- Total sales by month
SELECT
	CONCAT((YEAR(NewDate)),'/',(MONTH(NewDate))) AS YearMonth,
	SUM(total) AS Sales
FROM
	Sales
GROUP BY
	YEAR(NewDate), MONTH(NewDate)
ORDER BY
	YEAR(NewDate),MONTH(NewDate)

-- Average monthly sales
SELECT
	SUM(Total)/COUNT(distinct (MONTH(NewDate)))
FROM
	Sales
WHERE
	Price <> 0

-- Monthly sales by category
SELECT
	CONCAT((YEAR(NewDate)),'/',(MONTH(NewDate))) AS YearMonth,
	Category,
	SUM(total) AS TotalSales
FROM
	Sales
GROUP BY
	YEAR(NewDate),MONTH(NewDate), category
ORDER BY
	YEAR(NewDate),MONTH(NewDate),category

-- Coffee shop busy time in term of number of customers
SELECT
	DATEPART(hour,NewTime) AS Hours, COUNT(DISTINCT(NewID)) AS NumOfCust
FROM 
	Sales
GROUP BY
	DATEPART(hour,NewTime)

-- 5 Best seller products
SELECT
	TOP 5 Product, SUM(qty) AS Qtysold
FROM 
	Sales
GROUP BY
	Product
ORDER BY
	Qtysold DESC

-- 5 days with with lowest products sold
SELECT 
	TOP 5 DAY(NewDate) AS Date,
	SUM(Qty) AS ProductSold
FROM
	Sales
WHERE 
	DAY(NewDate) <> 31
GROUP BY 
	DAY(NewDate)
ORDER BY 
	ProductSold