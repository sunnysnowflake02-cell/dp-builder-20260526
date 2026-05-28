-- logical_table: site_location
-- physical_fqn: icebase.us_nrc_data.site_location
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "site_name" AS site_name,
  CAST("latitude" AS DOUBLE) AS latitude,
  CAST("longitude" AS DOUBLE) AS longitude
FROM icebase.us_nrc_data.site_location
