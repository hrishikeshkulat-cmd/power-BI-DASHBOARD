use pizzadb;
SELECT 
    *
FROM
    pizza_sales;
    
##key performance indicator part (kpi)->
#1) Total Revenue:
SELECT 
    SUM(total_price) AS Total_Revenue
FROM
    pizza_sales;

#2) Average Order Value
SELECT 
    (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value
FROM
    pizza_sales;

#3) Total Pizzas Sold
SELECT 
    SUM(quantity) AS Total_pizza_sold
FROM
    pizza_sales;

#4) Total Orders
SELECT 
    COUNT(DISTINCT order_id) AS Total_Orders
FROM
    pizza_sales;

# 5)Average Pizzas Per Order
SELECT 
    ROUND(SUM(quantity) / COUNT(DISTINCT order_id),
            2) AS Avg_Pizzas_per_order
FROM
    pizza_sales;

#kpi part end.<-

#chart requirement starts.->

# 6)Daily Trend for Total Orders
SELECT 
    DAYNAME(order_date) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    pizza_sales
GROUP BY DAYNAME(order_date);


#7) monthly Trend for total Orders
SELECT 
    MONTHNAME(order_date) AS Month_Name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM
    pizza_sales
GROUP BY MONTHNAME(order_date);

#8) percentage of Sales by Pizza Category

SELECT
  pizza_category,
  ROUND(SUM(total_price), 2) AS total_revenue,
  ROUND(
    SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales), 2
  ) AS percentage
FROM
  pizza_sales
GROUP BY
  pizza_category
ORDER BY
  total_revenue DESC;

#9) percentage of Sales by Pizza Size
  SELECT
  pizza_size,
  ROUND(SUM(total_price), 2) AS total_revenue,
  ROUND(
    SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales), 2
  ) AS percentage
FROM
  pizza_sales
GROUP BY
  pizza_size
ORDER BY
  pizza_size;
  
# 10)Total Pizzas Sold by Pizza Category
SELECT 
    pizza_category, SUM(quantity) AS Total_Quantity_Sold
FROM
    pizza_sales
WHERE
    MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;

#11) Top 5 Pizzas by Revenue
SELECT 
    pizza_name, SUM(total_price) AS Total_Revenue
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5;

#12) Bottom 5 pizzas by revenue
SELECT 
    pizza_name, SUM(total_price) AS Total_Revenue
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
LIMIT 5;

#13) Top 5 Pizzas by Quantity
SELECT 
    pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC
LIMIT 5;

#14) Bottom 5 Pizzas by Quantity
SELECT 
    pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC
LIMIT 5;

#15) Top 5 Pizzas by Total Orders
SELECT 
    pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC
LIMIT 5;


#16) Bottom 5 Pizzas by Total Orders
SELECT 
    pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM
    pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC
LIMIT 5;












