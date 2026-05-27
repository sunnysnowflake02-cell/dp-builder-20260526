## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All edges connect approved tables with appropriate join columns. Relationships are well-defined, with a preference for same-schema connections.

## SQL / Lens YAML
All SQL references use load_sql correctly. The SQL files are expected to be Trino-flavored. Dimension types are valid as per the JSON summary.

## Consumer data product YAML
The consumer data product YAML references the lens name and approved source FQNs consistently and sensibly.
