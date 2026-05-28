# Generated lens: customer-360-segmentation-usecase

## Description
This lens integrates customer demographics, purchase history, brand preferences, and channel engagement to provide a comprehensive view of customer behavior and segmentation.

How approved tables connect:
- icebase.customer_segmentation.customer_dimension relates to icebase.customer_segmentation.customer_behavioral_aggregates using customer_id and customer_id (relationship: one to one). Join customer dimensions to behavioral aggregates for comprehensive insights.
- icebase.customer_segmentation.cs_ml_segment_definition_resource relates to icebase.customer_segmentation.cs_ml_segment_assignment_resource using segment_id and segment_id (relationship: many to one).

## Source references

- `icebase.customer_segmentation.cs_ml_segment_assignment_resource`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.cs_ml_segment_assignment_resource
- `icebase.customer_segmentation.cs_ml_segment_definition_resource`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.cs_ml_segment_definition_resource
- `icebase.customer_segmentation.customer_behavioral_aggregates`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.customer_behavioral_aggregates
- `icebase.customer_segmentation.customer_dimension`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.customer_dimension
- `icebase.customer_segmentation.interaction_fact`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.interaction_fact
- `icebase.customer_segmentation.product_dimension`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.product_dimension
- `icebase.customer_segmentation.transaction_fact`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.transaction_fact

## Layout
- `deployment.yaml` — edit `repo.url` and `lensBaseDir` before applying.
- `model/tables/*.yaml` — Lens table definitions.
- `join_graph.yaml` (bundle root, **not** under `model/`) — full edge list for stewards; Lens deploy syncs `model/` only.
- Each `model/tables/*.yaml` may include **`joins`** only on the **canonical (left) side** of each edge (star direction — no reverse duplicate).
- `model/sqls/*.sql` — physical SQL; casts normalize types per dimensions (join keys + timestamps).
- `model/user_groups.yaml` — masking group for `meta.secure` dimensions (plus optional segment groups).
- `GOVERNANCE_RECOMMENDATIONS.md` — when present, steward governance notes from the Review tab (roles, segments).
- `data-products/*-cadp.yaml` — consumer-aligned data product (v1beta, inputs + ports).
- `data-products/*-cadp-scanner.yaml` — scanner workflow (filter includes CADP name).
- `DATAOS_VALIDATION.md` — LLM cross-check of joins, SQL/YAML, and DP manifest (if OpenAI configured).
- `config-data-quality/wf-*-dq-bundle.yaml` — consolidated Soda DQ workflow (`stackSpec.inputs` per dataset); optional `governance-framework.yaml`.
