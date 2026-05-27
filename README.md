# Generated lens: supply-chain-data-product

## Description
This lens integrates data from multiple tables related to supply chain operations, including inventory, orders, shipments, and warehouse performance, enabling comprehensive analysis and reporting.

How approved tables connect:
- icebase.supply_chain.orders relates to icebase.supply_chain.shipments using order_id and order_id (relationship: one to many). Orders can have multiple shipments associated with them.
- icebase.supply_chain.inventory relates to icebase.supply_chain.warehouses using warehouse_id and warehouse_id (relationship: one to many). Each warehouse can hold multiple SKUs.
- icebase.supply_chain.warehouses relates to icebase.supply_chain.geolocation using zip_code and zip_code (relationship: one to one). Geolocation data is tied to warehouse zip codes.
- icebase.supply_chain.shipments relates to icebase.supply_chain.warehouses using warehouse_id and warehouse_id (relationship: many to one). Shipments originate from warehouses.

## Source references

- `icebase.supply_chain.geolocation`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.geolocation
- `icebase.supply_chain.inventory`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.inventory
- `icebase.supply_chain.orders`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.orders
- `icebase.supply_chain.shipments`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.shipments
- `icebase.supply_chain.warehouses`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.warehouses

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
