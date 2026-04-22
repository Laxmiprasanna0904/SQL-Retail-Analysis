-- Total Revenue
SELECT SUM(Sales) AS total_revenue FROM orders;

-- Total Profit
SELECT SUM(Profit) AS total_profit FROM orders;

-- Sales by Category
SELECT Category, SUM(Sales) AS revenue
FROM orders
GROUP BY Category;

-- Top 5 Products by Sales
SELECT Product_Name, SUM(Sales) AS revenue
FROM orders
GROUP BY Product_Name
ORDER BY revenue DESC
LIMIT 5;

-- Sales by Region
SELECT Region, SUM(Sales) AS revenue
FROM orders
GROUP BY Region;

-- Monthly Sales Trend
SELECT DATE_TRUNC('month', Order_Date) AS month,
SUM(Sales) AS revenue
FROM orders
GROUP BY month
ORDER BY month;
