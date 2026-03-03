CREATE OR REPLACE TABLE `instacart-analysis-488619.staging_instacart.stg_products` AS

SELECT
  product_id,
  TRIM(LOWER(product_name)) AS product_name,
  aisle_id,
  department_id
FROM `instacart-analysis-488619.raw_instacart.products`
WHERE product_name IS NOT NULL;
