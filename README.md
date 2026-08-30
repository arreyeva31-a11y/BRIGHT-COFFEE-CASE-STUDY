# BRIGHT-COFFEE-CASE-STUDY
# ☕ Bright Coffee Shop Sales Analysis

## ☕ Project Overview

The **Bright Coffee Shop Sales Analysis** project explores transaction data from a coffee shop to identify sales trends, customer purchasing patterns, popular products, peak business hours, and store performance.

The objective is to transform raw transaction data into meaningful business insights that can support better decision-making and improve coffee shop performance.

---

## 🎯 Business Objective

The main objective of this analysis is to answer important business questions such as:

- 💰 How much revenue does the coffee shop generate?
- ☕ Which products sell the most?
- 🏆 Which product categories perform best?
- 🏪 Which store locations generate the highest sales?
- ⏰ What are the busiest hours of the day?
- 📅 Which days generate the highest sales?
- 📦 How many units of products are sold?
- 💵 What are the highest and lowest transaction values?
- 📈 What trends can help the business increase revenue?

---

## 📂 Dataset

The dataset contains coffee shop transaction information.

### Main Columns

| Column | Description |
|---|---|
| `transaction_id` | Unique identifier for each transaction |
| `transaction_date` | Date of the transaction |
| `transaction_time` | Time of the transaction |
| `transaction_qty` | Quantity of products purchased |
| `store_id` | Unique identifier for the store |
| `store_location` | Location of the store |
| `product_id` | Unique identifier for the product |
| `product_category` | Category of the product |
| `product_type` | Type of coffee shop product |
| `unit_price` | Price of one unit |
| `total_amount` | Total value of the transaction |

---

## 🧹 Data Cleaning

Before performing the analysis, the dataset was cleaned and prepared for analysis.

### Cleaning activities included:

- 🔍 Checking for duplicate transactions
- 🔍 Checking for missing values
- 🧹 Cleaning product categories
- 🧹 Standardizing product types
- 📅 Cleaning the transaction date
- ⏰ Cleaning the transaction time
- 🔢 Converting columns to appropriate data types
- 💰 Converting unit prices into numeric values
- 🔄 Replacing commas with decimal points where necessary
- ➕ Creating a `total_amount` / revenue column
- ⏱️ Creating transaction hour and time buckets
- ✅ Validating transaction IDs

---

## 💰 Revenue Calculation

Revenue was calculated using:

```text
Total Amount = Unit Price × Transaction Quantity



⏰ Time Analysis

.Transaction time was analyzed to understand customer purchasing behavior throughout the day.
.Time-based analysis included:
.Transaction hour
.Peak hours
.Morning vs afternoon vs evening sales
.Sales by time bucket
.Number of transactions by hour
.Revenue by hour
.Example time buckets


📊 Key Analysis Areas

1. Sales Performance
.The analysis examines:
.Total revenue
.Total transactions
.Total units sold
.Average transaction value
.Highest transaction
.Lowest transaction


2. Product Performance ☕
.Products were analyzed to identify:
.Best-selling products
.Lowest-selling products
.Revenue by product
.Quantity sold by product
.Average price by product



3. Product Category Analysis
.Product categories were compared based on:
.Revenue
.Quantity sold
.Number of transactions
.Average transaction value
.This helps identify the categories that contribute most to overall business performance.

4. Store Performance 🏪
.Store locations were analyzed to determine:
.Highest-revenue store
.Lowest-revenue store
.Transactions by store
.Units sold by store
.Average transaction value by store


5. Day Analysis 📅
.Sales were analyzed by:
.Day of the week
.Weekday vs weekend
.Revenue by day
.Transactions by day
.Quantity sold by day


📈 Dashboard

The analysis can be presented through an interactive dashboard containing:
KPI Cards
💰 Total Revenue
🧾 Total Transactions
☕ Total Units Sold
💵 Average Transaction Value
🏆 Highest Transaction
Recommended Charts



Business Questions;

Recommended Chart
Revenue by month
📈 Line chart
Revenue by store
📊 Bar chart
Best-selling products
📊 Bar chart
Sales by category
🍩 Donut/Pie chart
Sales by day
📊 Column chart
Sales by hour
📈 Line chart
Quantity by product type
📊 Bar chart
Store comparison
📊 Bar chart

💡 Business Insights;

The analysis can help Bright Coffee Shop understand:
☕ Product Demand
Identify products that customers purchase most frequently.
⏰ Peak Business Hours
Determine when customer traffic and sales are highest.
🏪 Store Performance
Identify high-performing and underperforming locations.
📅 Daily Sales Patterns
Understand which days generate the most revenue.
💰 Revenue Drivers
Identify the products and categories contributing most to revenue.



 Business Recommendations

 Based on the analysis, Bright Coffee Shop could:
1. Promote Best-Selling Products
.Increase visibility of popular products through:
.Special offers
.Combo deals
.Loyalty rewards
.Promotional campaigns

2. Improve Low-Performing Products
.Investigate products with low sales and consider:
.Adjusting prices
.Improving presentation
.Creating promotions
.Removing products with consistently poor performance

3. Optimize Staffing
.Schedule more employees during peak transaction hours and reduce staffing during slower periods.

4. Improve Inventory Management
Use sales patterns to ensure popular products remain available during peak periods.

5. Target Slow Periods
Introduce promotions during low-sales hours to increase customer traffic.

🛠️ Tools Used
�

SQL | Databricks | Excel | GitHub | Data Visualization
�

Technologies

🟠 SQL
🔵 Databricks
🟢 Microsoft Excel
⚫ GitHub
📊 Data Visualization

📚 Skills Demonstrated

This project demonstrates practical skills in:
.SQL querying
.Data cleaning
.Data transformation
.Data validation
.Data aggregation
.CASE statements
.Date and time analysis
.Revenue calculations
.GROUP BY and ORDER BY
.Data visualization
.Business analysis
.Dashboard development
.Business recommendations
.GitHub project documentation

🎓 Project Outcome

The Bright Coffee Shop project demonstrates how raw transactional data can be transformed into actionable business insights.
By analyzing products, categories, stores, dates, times, quantities, and revenue, the business can better understand customer purchasing behavior and identify opportunities to improve sales and operational performance.

👩‍💻 Author
ARREY EVARESTU AGBOR
Data Analyst 

🔗 Connect
Thank you for visiting this project!
If you find this analysis useful, feel free to ⭐ the repository.







