COPY retail.dim_customer
FROM 's3://retail-data-dharun-2026/raw-data/Retail_data_warehouse/Customer.csv'
IAM_ROLE 'arn:aws:iam::996495665284:role/RedshiftS3ReadRole'
CSV IGNOREHEADER 1;

COPY retail.dim_product
FROM 's3://retail-data-dharun-2026/raw-data/Retail_data_warehouse/products.csv'
IAM_ROLE 'arn:aws:iam::996495665284:role/RedshiftS3ReadRole'
CSV IGNOREHEADER 1;

COPY retail.dim_store
FROM 's3://retail-data-dharun-2026/raw-data/Retail_data_warehouse/stores.csv'
IAM_ROLE 'arn:aws:iam::996495665284:role/RedshiftS3ReadRole'
CSV IGNOREHEADER 1;

COPY retail.fact_sales
FROM 's3://retail-data-dharun-2026/raw-data/Retail_data_warehouse/sales.csv'
IAM_ROLE 'arn:aws:iam::996495665284:role/RedshiftS3ReadRole'
CSV IGNOREHEADER 1
DATEFORMAT 'DD-MM-YYYY';
