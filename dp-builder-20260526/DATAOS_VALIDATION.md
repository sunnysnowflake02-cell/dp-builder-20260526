## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All join edges connect approved tables. The join columns (site_name) exist on both sides, and the relationships are consistent with many-to-one cardinality. No schema spanning issues detected.

## SQL / Lens YAML
All SQL references use load_sql(logical_name) correctly. The SQL files are expected to be Trino-flavored. Dimension types in the JSON summary are valid and conform to the allowed types: string, number, time, boolean.

## Consumer data product YAML
The consumer data product YAML references the lens name 'us-nrc-test-dp' consistently and lists approved source FQNs sensibly.
