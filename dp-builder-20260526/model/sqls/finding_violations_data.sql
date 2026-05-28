-- logical_table: finding_violations_data
-- physical_fqn: icebase.us_nrc_data.finding_violations_data
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "procedure" AS procedure,
  CAST("issue_date" AS TIMESTAMP(6)) AS issue_date,
  CAST("report_number" AS DOUBLE) AS report_number,
  "type" AS type,
  "cornerstone_code" AS cornerstone_code,
  "cornerstone" AS cornerstone,
  "title" AS title,
  "docket_number" AS docket_number,
  "site_name" AS site_name,
  "site_code" AS site_code,
  "cross_cutting_aspect" AS cross_cutting_aspect,
  "idby" AS idby,
  CAST("region" AS DOUBLE) AS region,
  TRY_CAST("accession_number" AS DOUBLE) AS accession_number,
  "is_traditional_enforcement" AS is_traditional_enforcement,
  "item_severity_type_code" AS item_severity_type_code,
  TRY_CAST(TRIM("cornerstone_attribute_type") AS TIMESTAMP(6)) AS cornerstone_attribute_type,
  "link" AS link,
  CAST("year" AS DOUBLE) AS year,
  CAST("quarter" AS DOUBLE) AS quarter,
  "cross_cutting_area" AS cross_cutting_area,
  "significance" AS significance,
  CAST("significance_sort" AS DOUBLE) AS significance_sort
FROM icebase.us_nrc_data.finding_violations_data
