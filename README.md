# 🍕 Pizza Sales Analysis Project

## 📊 Overview

This project is a comprehensive sales analysis of a fictional pizza chain using **Power BI** and **MySQL**. It focuses on deriving actionable business insights such as revenue trends, customer ordering behavior, and pizza category performance. The dashboard is designed to assist stakeholders in making data-driven decisions to optimize sales and operations.

---

## 🛠️ Tools Used

- **Power BI**: For building interactive data visualizations and dashboards.
- **MySQL**: For data querying and analysis.
- **SQL**: Used for business logic, aggregations, trends, and KPIs.
- **Excel/CSV**: As the base data source (imported into Power BI).

---

## 🧩 Dataset Overview

**Table: `pizza_sales`**

| Column Name     | Description                              |
|------------------|------------------------------------------|
| `order_id`       | Unique identifier for each order         |
| `pizza_id`       | Unique identifier for each pizza         |
| `pizza_name`     | Name of the pizza ordered                |
| `pizza_size`     | Size of the pizza (S, M, L, XL, XXL)     |
| `pizza_category` | Pizza category (Classic, Veggie, etc.)   |
| `quantity`       | Number of pizzas ordered                 |
| `order_date`     | Date of the order                        |
| `total_price`    | Total price of the pizza(s) ordered      |

---

## 📌 Key Business Questions Answered

- What is the **total revenue** and **average order value**?
- How many pizzas are sold in total?
- What are the **monthly** and **daily trends** of orders?
- Which **pizza size** and **category** perform best?
- What are the **top and bottom pizzas** by:
  - Revenue
  - Quantity sold
  - Number of orders
- How many pizzas are sold **on average per order**?

---

## 📈 KPIs and Metrics

| Metric                         | Description                                      |
|-------------------------------|--------------------------------------------------|
| **Total Revenue**             | Total earnings from pizza sales                 |
| **Average Order Value**       | Revenue per order                                |
| **Total Pizzas Sold**         | Sum of all pizzas sold                          |
| **Total Orders**              | Count of distinct orders                        |
| **Avg. Pizzas Per Order**     | Pizzas per order on average                     |
| **Sales by Category/Size**    | Revenue distribution by category/size           |
| **Trend Analysis**            | Monthly & weekday order volume                  |
| **Top & Bottom Performers**   | Best & worst performing pizzas by revenue, quantity, and orders |

---

## 📂 Project Structure

```
📁 Pizza Sales Analysis Project
├── 📊 pizza_sales_report.pbix         # Power BI Dashboard File
├── 🧮 pizza_sales mysql script2.sql   # SQL Queries for Analysis
├── 📁 README.md                       # Project Documentation (You are here)
```

---

## 📌 SQL Techniques Used

- Aggregation (`SUM`, `COUNT`, `AVG`)
- Filtering (`WHERE`, `HAVING`)
- Date functions (`MONTHNAME()`, `DAYNAME()`, `CURDATE()`)
- Grouping (`GROUP BY`)
- Ranking (`ORDER BY`, `LIMIT`)
- Window Functions (optional for advanced insights)

---

## 📊 Sample Visuals (from Power BI)

- **KPI Cards**: Total Revenue, Orders, Pizzas Sold
- **Bar Charts**: Top 5 Pizzas by Sales/Orders
- **Pie Charts**: Sales Distribution by Pizza Size & Category
- **Line Charts**: Monthly Order Trends
- **Heatmaps**: Weekday Performance

---

## 🧠 Insights & Recommendations

- Focus marketing on **top-performing pizza sizes** and **categories**.
- Analyze and improve the **bottom 5 pizzas** — update recipe, pricing, or visibility.
- Consider **seasonal and weekday trends** for promotional offers.
- Optimize inventory based on **quantity trends** and **sales cycles**.

---

## 🚀 How to Run This Project

1. Import the `.pbix` file in Power BI Desktop.
2. (Optional) Reconnect to the pizza_sales data source.
3. Run SQL scripts from `pizza_sales mysql script2.sql` in MySQL Workbench to understand logic and generate your own queries.
4. Explore interactive visuals and insights in Power BI.

---

## 📚 Learning Outcomes

✔ Data cleaning & model understanding  
✔ Writing business logic with SQL  
✔ Visual storytelling in Power BI  
✔ KPI monitoring and dashboard design  
✔ Trend and performance analysis

---

## 🤝 Connect with Me

If you like this project or want to collaborate, feel free to connect:

- 💼 [LinkedIn](linkedin.com/in/hrishikesh-kulat-28b559373)
- 📧 Email: (hrishikeshkuat@gmail.com)
- 📂 GitHub: [your-github](https://github.com/hrishikeshkulat-cmd)


