-- logical_table: product_dimension
-- physical_fqn: icebase.customer_segmentation.product_dimension
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "product_id" AS product_id,
  "category" AS category,
  "subcategory" AS subcategory,
  "brand" AS brand,
  TRY_CAST("price_band" AS DOUBLE) AS price_band,
  "name" AS name,
  TRY_CAST(TRIM("created_at") AS TIMESTAMP(6)) AS created_at,
  CAST("ingestion_date" AS TIMESTAMP(6)) AS ingestion_date
FROM icebase.customer_segmentation.product_dimension
