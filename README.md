# Generated lens: schema-supply-chain-v2

## Description
schema-supply-chain-v2

This lens integrates data from multiple tables to provide a comprehensive view of the supply chain, including inventory levels, order details, shipment statuses, and warehouse performance.

How approved tables connect:
- icebase.supply_chain.orders relates to icebase.supply_chain.order_items using order_id and order_id (relationship: one to many). Orders can have multiple order items.
- icebase.supply_chain.order_items relates to icebase.supply_chain.shipments using order_id and order_id (relationship: one to many). Each order can correspond to multiple shipments.
- icebase.supply_chain.inventory relates to icebase.supply_chain.warehouses using warehouse_id and warehouse_id (relationship: many to one). Multiple inventory records can exist for each warehouse.
- icebase.supply_chain.warehouses relates to icebase.supply_chain.geolocation using zip_code and zip_code (relationship: one to one). Each warehouse is associated with a specific zip code.
- icebase.supply_chain.shipments relates to icebase.supply_chain.geolocation using zip_code and zip_code (relationship: one to one). Shipments are linked to delivery zip codes.

## Source references

- `icebase.supply_chain.geolocation`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.geolocation
- `icebase.supply_chain.inventory`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.inventory
- `icebase.supply_chain.order_items`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.order_items
- `icebase.supply_chain.orders`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.orders
- `icebase.supply_chain.shipments`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.shipments
- `icebase.supply_chain.warehouses`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.warehouses
- `icebase.supply_chain.warehouses_ranking`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.supply_chain.warehouses_ranking

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
