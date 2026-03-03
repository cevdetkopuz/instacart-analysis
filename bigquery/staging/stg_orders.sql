CREATE OR REPLACE TABLE `staging_instacart.stg_orders` AS
SELECT 
  *,
CASE
  WHEN days_since_prior_order IS NULL THEN "True"
  ELSE "False"
END AS is_first_order
FROM `instacart-analysis-488619.raw_instacart.orders`

SELECT
  order_id,
  COUNT(*) as total_order,

FROM `instacart-analysis-488619.raw_instacart.orders`
GROUP BY order_id
HAVING COUNT(*) > 1
