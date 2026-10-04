-- Total revenue
SELECT
    SUM(f.quantity * p.unit_price - f.discount) AS total_revenue
FROM retail.fact_sales f
JOIN retail.dim_product p
    ON f.product_id = p.product_id;

-- Revenue by category
SELECT
    p.category,
    SUM(f.quantity) AS units_sold,
    SUM(f.quantity * p.unit_price - f.discount) AS revenue
FROM retail.fact_sales f
JOIN retail.dim_product p
    ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- Revenue by store
SELECT
    s.store_name,
    SUM(f.quantity) AS units_sold,
    SUM(f.quantity * p.unit_price - f.discount) AS revenue
FROM retail.fact_sales f
JOIN retail.dim_product p
    ON f.product_id = p.product_id
JOIN retail.dim_store s
    ON f.store_id = s.store_id
GROUP BY s.store_name
ORDER BY revenue DESC;

-- Product performance
SELECT
    p.product_name,
    SUM(f.quantity) AS units_sold,
    SUM(f.quantity * p.unit_price - f.discount) AS revenue
FROM retail.fact_sales f
JOIN retail.dim_product p
    ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;

-- Customer spending
SELECT
    c.customer_name,
    SUM(f.quantity) AS units_purchased,
    SUM(f.quantity * p.unit_price - f.discount) AS total_spent
FROM retail.fact_sales f
JOIN retail.dim_customer c
    ON f.customer_id = c.customer_id
JOIN retail.dim_product p
    ON f.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
