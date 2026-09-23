# 🛒 Olist E-Commerce Sales, Customer & Delivery Analytics

## 📌 Project Overview

This project is an end-to-end **E-Commerce Sales, Customer & Delivery Analytics** project based on the Brazilian E-Commerce Public Dataset by Olist.

The objective of this project is to analyze e-commerce sales performance, product performance, customer behavior, payment methods, customer locations, delivery performance, and customer satisfaction.

The project follows a complete data analytics workflow:

**Python → MySQL → SQL → Power BI**

---

## 🎯 Business Objectives

- Analyze overall sales and order performance.
- Identify top-performing products and product categories.
- Understand customer purchasing behavior.
- Analyze payment methods and customer locations.
- Evaluate delivery performance.
- Analyze customer reviews and satisfaction.
- Build an interactive Power BI dashboard to present business insights.

---

## 🗂️ Dataset

The project uses the **Brazilian E-Commerce Public Dataset by Olist**.

The dataset contains multiple tables covering:

- Orders
- Order Items
- Customers
- Products
- Payments
- Reviews
- Sellers
- Geolocation
- Product Category Translation

---

## 🔧 Tools & Technologies

- **Python**
- **Pandas**
- **MySQL**
- **SQL**
- **Power BI**
- **Power Query**
- **DAX**
- **GitHub**

---

## 🔄 Project Workflow

### 1. Data Inspection & Cleaning — Python

The raw Olist datasets were inspected and cleaned using Python and Pandas.

The data preparation included:

- Inspecting dataset structure and column information.
- Checking data types.
- Identifying missing values.
- Checking duplicate records.
- Converting date columns into appropriate datetime formats.
- Examining order statuses.
- Analyzing customers, products, payments, and order items.
- Checking unusual and zero-value records.
- Preparing cleaned datasets for database analysis.

---

### 2. Database & SQL Analysis — MySQL

The cleaned data was loaded into MySQL for structured analysis.

SQL was used to:

- Analyze sales performance.
- Analyze product and category performance.
- Calculate revenue and order metrics.
- Analyze customer purchasing behavior.
- Analyze payment methods.
- Analyze customer locations.
- Analyze freight costs.
- Analyze delivery performance.
- Analyze customer reviews and satisfaction.

---

### 3. Data Visualization — Power BI

The analyzed data was connected to Power BI to create an interactive multi-page dashboard.

The dashboard contains **4 pages** covering executive performance, sales and products, customers, delivery, and customer satisfaction.

---

# 📊 Power BI Dashboard

## Page 1 — Executive Overview

### KPIs

- **Total Revenue**
- **Total Orders**
- **Average Order Value**
- **Total Customers**

### Analysis

- **Monthly Revenue Trend**
- **Revenue by Category**
- **Orders by Customer State**
- **Revenue by Payment Method**

### Filters

- **Year**
- **Order Status**

This page provides an overall view of the e-commerce business performance and allows users to analyze performance using interactive filters.

---

## Page 2 — Sales & Product Analysis

### KPIs

- **Items Sold**
- **Avg Price**
- **Total Freight**

### Analysis

- **Top 10 Products by Revenue**
- **Items Sold by Category**
- **Average Price by Category**
- **Freight Cost by Category**

### Filters

- **Year**
- **Category**

This page focuses on product and category performance, including sales volume, pricing, revenue, and freight costs.

---

## Page 3 — Customer Analysis

### KPIs

- **Total Customers**
- **Repeat Customers**
- **Average Customer Spend**

### Customer Analysis

- **Repeat vs One-Time Customers**
- **One-Time Customers — 90,557 (97%)**
- **Repeat Customers — 2,801 (3%)**

This page analyzes customer purchasing behavior and helps understand customer retention and spending patterns.

---

## Page 4 — Delivery & Customer Satisfaction

This page focuses on:

- **Delivery Performance**
- **Customer Reviews**
- **Customer Satisfaction**

The analysis helps understand delivery outcomes and customer feedback across the e-commerce platform.

---

# 📈 Key Insights

The analysis provides insights into:

- Overall e-commerce revenue and order performance.
- Revenue contribution from different product categories.
- Top 10 products based on revenue.
- Product sales volume across categories.
- Average product prices by category.
- Freight costs across product categories.
- Revenue generated through different payment methods.
- Order distribution across customer states.
- Customer purchasing behavior.
- Repeat and one-time customer distribution.
- Average customer spending.
- Delivery performance.
- Customer reviews and satisfaction.

---

## 📁 Project Structure

```text
Olist-E-Commerce-Sales-Customer-Delivery-Analytics/
│
├── data/
│
├── notebooks/
│
├── powerbi/
│   ├── Ecommerce_Sales_Customer_Delivery_Analytics.pbix
│   └── E-Commerce Sales, Customer & Delivery Analytics.pdf
│
├── sql/
│
├── visuals/
│
└── README.md

---

## 👤 Author

**Niku Kumar Yadav**

Data Analytics | Python | SQL | Power BI

- **GitHub:** [Niku Kumar Yadav](YOUR_GITHUB_LINK)
- **LinkedIn:** [Niku Kumar Yadav](YOUR_LINKEDIN_LINK)
