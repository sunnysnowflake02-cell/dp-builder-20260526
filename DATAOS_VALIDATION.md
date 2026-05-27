## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All edges connect approved tables with valid join columns. Relationships are appropriately defined, with a mix of one-to-many and many-to-one connections, and all relationships are within the same schema.

## SQL / Lens YAML
All SQL references use load_sql correctly, and the SQL files are expected to be Trino-flavored. Dimension types are consistent with the allowed types: boolean, number, string, time.

## Consumer data product YAML
The consumer data product YAML references the lens name and approved source FQNs consistently and sensibly.
