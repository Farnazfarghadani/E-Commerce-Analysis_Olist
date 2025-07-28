# 🛍️ Olist E-Commerce Analytics Dashboard (Power BI + SQL)

This project analyzes sales performance and customer behavior for Olist — a large Brazilian e-commerce platform.  
The solution uses **SQL for data exploration and transformation**, and **Power BI** for interactive dashboard visualization.

---

## 📊 Dashboard Features (Power BI)

- **KPI Cards**  
  - Total Sales  
  - Total Orders  
  - Average Order Value (AOV)

- **Sales Trend (Line Chart)**  
  Monthly revenue development (2016–2018)

- **Top Product Categories (Bar Chart)**  
  Based on total sales volume

- **Geographic Breakdown (Map)**  
  Total orders by customer state

- **Date Range Slicer**  
  Interactive filtering for all visuals

---

## 🧮 SQL Analysis

The core business questions answered with SQL:

| Question | SQL Result |
|----------|------------|
| **Which categories sell the most?** | Product categories ranked by order volume |
| **Which customer states are most profitable?** | Aggregated sales by region |
| **Where do customers complain most?** | Average review scores by state |
| **Which sellers/products get the lowest ratings?** | Ranked by average review score |
| **Does late delivery affect reviews?** | Correlation between delay and rating |
| **What is the monthly revenue trend?** | Total sales per month |
| **Top sellers by revenue?** | Sellers ranked by total product price |

📂 All queries are stored in the [`/sql_queries`](./sql_queries) folder.

---

## 🛠️ Tools Used

| Tool/Language | Purpose |
|---------------|---------|
| **MySQL** | Data extraction, aggregation, and transformation |
| **Power BI Desktop** | Dashboard creation, DAX, visuals |
| **DAX** | Custom KPI calculations (e.g., AOV) |
| **Data Modeling** | Relationships between tables (orders, items, payments, etc.) |

---

## 📁 Dataset

Data: [Olist Brazilian E-Commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

Tables used:
- `orders`
- `order_items`
- `order_reviews`
- `order_payments`
- `products`
- `sellers`
- `customers`
- `product_category_translation`

---

## 🧠 Key Business Insights

- 📈 Total sales exceeded **€6M**, with over **44K orders**
- 🛒 **Bed, bath & table** and **health & beauty** were top-selling categories
- 🗺️ São Paulo and Rio de Janeiro contributed the most revenue

---

## 📷 Dashboard Screenshot

![Dashboard Screenshot](Screenshot%20(124).png)

---

## 🎯 Skills Demonstrated

- SQL-based data cleaning, joins, and feature creation
- Building interactive, business-oriented Power BI dashboards
- Data modeling across multiple relational tables
- Insight storytelling with metrics like AOV, reviews, and delay impact

---

## 📬 Contact

**Farnaz Farghadani**  
Master’s Student in Digital Health | Data Analyst (Power BI + SQL)  
[LinkedIn](https://linkedin.com/in/farnaz-farghadani) | [GitHub](https://github.com/Farnazfarghadani)

---

