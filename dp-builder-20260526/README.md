# Generated lens: us-nrc-test-dp

## Description
This Lens aggregates data across exercise schedules, finding violations, and site locations to provide insights into device intelligence for enterprise laptop fleets.

How approved tables connect:
- icebase.us_nrc_data.finding_violations_data relates to icebase.us_nrc_data.exercise_schedule_data using site_name and facility (relationship: many to one).
- icebase.us_nrc_data.finding_violations_data relates to icebase.us_nrc_data.site_location using site_name and site_name (relationship: many to one).

## Source references

- `icebase.us_nrc_data.exercise_schedule_data`: https://paper-plane.mydataos.com/metis/assets/table/icebase.icebase.us_nrc_data.exercise_schedule_data
- `icebase.us_nrc_data.finding_violations_data`: https://paper-plane.mydataos.com/metis/assets/table/icebase.icebase.us_nrc_data.finding_violations_data
- `icebase.us_nrc_data.site_location`: https://paper-plane.mydataos.com/metis/assets/table/icebase.icebase.us_nrc_data.site_location

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
