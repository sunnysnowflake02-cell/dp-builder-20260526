## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All edges connect approved tables with appropriate join columns. Relationships are well-defined, with a mix of one-to-many and many-to-one cardinalities, and all relationships are within the same schema.

## SQL / Lens YAML
All SQL references use load_sql(logical_name) correctly. The SQL files are expected to be Trino-flavored. Dimension types are consistent with the allowed types: boolean, number, string, time.

## Consumer data product YAML
The consumer YAML references the lens name 'supply-chain-data-product' consistently and lists approved source FQNs sensibly.
