use vaishnavi;
create database retail_sales;
use retail_sales;

-- 1. View complete table
SELECT * FROM sale;

-- 2. Total revenue
SELECT SUM(amount) AS total_revenue
FROM sale;

-- 3. Revenue by category
SELECT category, SUM(amount) AS revenue
FROM sale
GROUP BY category
ORDER BY revenue DESC;

-- 4. Revenue by item purchased
SELECT item_purchased, SUM(amount) AS revenue
FROM sale
GROUP BY item_purchased
ORDER BY revenue DESC;

-- 5. Revenue by location
SELECT location, SUM(amount) AS revenue
FROM sale
GROUP BY location
ORDER BY revenue DESC;

-- 6. Revenue by size
SELECT size, SUM(amount) AS revenue
FROM sale
GROUP BY size
ORDER BY revenue DESC;

-- 7. Discount impact
SELECT discount_applied, AVG(amount) AS avg_revenue
FROM sale
GROUP BY discount_applied;

-- 8. Promo code effectiveness
SELECT promo_code_used, AVG(amount) AS avg_revenue
FROM sale
GROUP BY promo_code_used;

-- 9. Subscription revenue
SELECT subscription_status, SUM(amount) AS revenue
FROM sale
GROUP BY subscription_status;

-- 10. Top 10 highest revenue items
SELECT item_purchased, amount
FROM sale
ORDER BY amount DESC
LIMIT 10;

-- 11. Revenue category distribution
SELECT revenue_category, COUNT(*) AS transaction_count
FROM sale
GROUP BY revenue_category;

-- 12. Category + discount analysis
SELECT category, discount_applied, SUM(amount) AS revenue
FROM sale
GROUP BY category, discount_applied
ORDER BY revenue DESC;

-- 13. Location + promo code analysis
SELECT location, promo_code_used, SUM(amount) AS revenue
FROM sale
GROUP BY location, promo_code_used;

-- 14. Subscription by category
SELECT category, subscription_status, SUM(amount) AS revenue
FROM sale
GROUP BY category, subscription_status;

-- 15. Average revenue by size
SELECT size, AVG(amount) AS avg_revenue
FROM sale
GROUP BY size
ORDER BY avg_revenue DESC;