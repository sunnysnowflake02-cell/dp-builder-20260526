## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All join edges connect approved tables with appropriate join columns. Relationships are well-defined and follow the same-schema preference.

## SQL / Lens YAML
All SQL references use load_sql correctly. The SQL files are expected to be Trino-flavored. Dimension types are consistent with the allowed types: string, number, time, boolean.

## Consumer data product YAML
The consumer YAML references the lens name consistently and lists approved source FQNs sensibly.
