Top products
SELECT
stock_code,
description,
SUM(revenue) AS total_revenue
FROM online_retail
GROUP BY stock_code, description
ORDER BY total_revenue DESC
LIMIT 10;

Top customers
SELECT
customer_id,
SUM(revenue) AS total_revenue,
COUNT(DISTINCT invoice_no) AS total_orders
FROM online_retail
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;

How are sales trending over time?”
SELECT
DATE_TRUNC('month', invoice_date) AS month,
SUM(revenue) AS monthly_revenue
FROM online_retail
GROUP BY month
ORDER BY month;

Are customers coming back?
SELECT
COUNT(DISTINCT customer_id) AS total_customers,
COUNT(DISTINCT CASE
WHEN order_count > 1 THEN customer_id
END) AS repeat_customers
FROM (
SELECT
customer_id,
COUNT(DISTINCT invoice_no) AS order_count
FROM online_retail
GROUP BY customer_id
) t;
