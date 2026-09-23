-- Olist E-Commerce Sales, Customer & Delivery Analytics
-- SQL Analysis Queries

-- 1. Revenue by Category
SELECT
    product_category_name_english AS category,
    ROUND(SUM(item_revenue), 2) AS total_revenue
FROM sales_data
WHERE order_status = 'delivered'
GROUP BY product_category_name_english
ORDER BY total_revenue DESC
LIMIT 10;


-- 2. Top 10 Products by Revenue
SELECT
    product_id,
    ROUND(SUM(item_revenue), 2) AS total_revenue
FROM sales_data
WHERE order_status = 'delivered'
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 10;


-- 3. Average Price by Category
SELECT
    product_category_name_english AS category,
    ROUND(AVG(price), 2) AS avg_price
FROM sales_data
WHERE order_status = 'delivered'
GROUP BY product_category_name_english
ORDER BY avg_price DESC
LIMIT 10;


-- 4. Freight Cost by Category
SELECT
    product_category_name_english AS category,
    ROUND(SUM(freight_value), 2) AS total_freight
FROM sales_data
WHERE order_status = 'delivered'
GROUP BY product_category_name_english
ORDER BY total_freight DESC
LIMIT 10;


-- 5. Items Sold by Category
SELECT
    product_category_name_english AS category,
    COUNT(order_item_id) AS items_sold
FROM sales_data
WHERE order_status = 'delivered'
GROUP BY product_category_name_english
ORDER BY items_sold DESC;


-- 6. Revenue by Payment Method
SELECT
    payment_type,
    ROUND(SUM(payment_value), 2) AS total_revenue
FROM payments_clean
GROUP BY payment_type
ORDER BY total_revenue DESC;


-- 7. Orders by Customer State
SELECT
    customer_state,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_data
GROUP BY customer_state
ORDER BY total_orders DESC;


-- 8. Orders by Customer State — Delivered Orders
SELECT
    customer_state,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_data
WHERE order_status = 'delivered'
GROUP BY customer_state
ORDER BY total_orders DESC;


-- 9. Order Status Distribution
SELECT
    order_status,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_data
GROUP BY order_status
ORDER BY total_orders DESC;


-- 10. Total Revenue
SELECT
    ROUND(SUM(item_revenue), 2) AS total_revenue
FROM sales_data
WHERE order_status = 'delivered';


-- 11. Total Orders
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_data;


-- 12. Total Customers
SELECT
    COUNT(DISTINCT customer_unique_id) AS total_customers
FROM sales_data;


-- 13. Average Order Value
SELECT
    ROUND(
        SUM(item_revenue) / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM sales_data
WHERE order_status = 'delivered';


-- 14. Repeat Customers
SELECT
    COUNT(*) AS repeat_customers
FROM (
    SELECT
        customer_unique_id,
        COUNT(DISTINCT order_id) AS order_count
    FROM sales_data
    GROUP BY customer_unique_id
    HAVING COUNT(DISTINCT order_id) > 1
) AS repeat_customer_list;


-- 15. One-Time Customers
SELECT
    COUNT(*) AS one_time_customers
FROM (
    SELECT
        customer_unique_id,
        COUNT(DISTINCT order_id) AS order_count
    FROM sales_data
    GROUP BY customer_unique_id
    HAVING COUNT(DISTINCT order_id) = 1
) AS one_time_customer_list;


-- 16. Average Customer Spend
SELECT
    ROUND(AVG(customer_spend), 2) AS average_customer_spend
FROM (
    SELECT
        customer_unique_id,
        SUM(item_revenue) AS customer_spend
    FROM sales_data
    WHERE order_status = 'delivered'
    GROUP BY customer_unique_id
) AS customer_spending;


-- 17. Revenue by Year
SELECT
    YEAR(order_purchase_timestamp) AS order_year,
    ROUND(SUM(item_revenue), 2) AS total_revenue
FROM sales_data
WHERE order_status = 'delivered'
GROUP BY YEAR(order_purchase_timestamp)
ORDER BY order_year;


-- 18. Monthly Revenue Trend
SELECT
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
    ROUND(SUM(item_revenue), 2) AS total_revenue
FROM sales_data
WHERE order_status = 'delivered'
GROUP BY DATE_FORMAT(order_purchase_timestamp, '%Y-%m')
ORDER BY month;
