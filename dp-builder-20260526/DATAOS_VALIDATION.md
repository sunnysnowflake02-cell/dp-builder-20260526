## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All edges connect approved tables. Relationships are many-to-one and use the same schema (icebase.us_nrc_data).

## SQL / Lens YAML
All SQL references use load_sql(logical_name) correctly. Dimension types are valid and conform to the expected types: boolean, number, string, time.

## Consumer data product YAML
The consumer YAML references the lens name consistently and lists approved source FQNs sensibly.
