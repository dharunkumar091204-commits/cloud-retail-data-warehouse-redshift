# Cloud-Based Retail Data Warehouse Using Amazon Redshift

## Project
Tech Vedhu Academy – Month 2 Cloud Computing Project

## Architecture
CSV Files -> Amazon S3 -> Amazon Redshift Serverless -> SQL Analytics

## S3 Location
s3://retail-data-dharun-2026/raw-data/Retail_data_warehouse/

## Warehouse
Schema: retail

Tables:
- dim_customer
- dim_product
- dim_store
- fact_sales

## Files
- 01_create_schema_tables.sql
- 02_load_data.sql
- 03_verify_data.sql
- 04_sales_analysis.sql
- data/*.csv

## Notes
The sales load uses DATEFORMAT 'DD-MM-YYYY' because that is the format accepted by the uploaded sales source file.
