CREATE SCHEMA retail;

CREATE TABLE retail.dim_customer (
    customer_id VARCHAR(10),
    customer_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    gender VARCHAR(20)
);

CREATE TABLE retail.dim_product (
    product_id VARCHAR(10),
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    unit_price DECIMAL(12,2)
);

CREATE TABLE retail.dim_store (
    store_id VARCHAR(10),
    store_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50)
);

CREATE TABLE retail.fact_sales (
    sale_id VARCHAR(20),
    customer_id VARCHAR(10),
    product_id VARCHAR(10),
    store_id VARCHAR(10),
    sale_date DATE,
    quantity INTEGER,
    discount DECIMAL(12,2)
);
