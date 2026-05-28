## Governance context

This data product employs row-level segment security for managing access to sensitive nuclear safety information, particularly regarding inspection histories and risk exposure. The segments are defined based on distinct operational regions and facility types, ensuring that only authorized user groups can access specific data slices. Additionally, sensitive dimensions may be subject to transformation or masking to protect personally identifiable information (PII).

## Sample user groups & YAML

```yaml
segments:
  - name: reactor_region_iv
    sql: "{TABLE}.region = 'IV'"
    meta:
      secure:
        user_groups:
          includes:
            - reactor_safety_region_iv

user_groups:
  reactor_safety_region_iv:
    api_scopes:
      - read
    includes:
      - users:id:reactor_user_1
      - users:id:reactor_user_2
```

## Suggested mode

`segment_user_groups`

## Role names (reuse in user_groups + segments)

`reactor_safety_region_iv`, `violation_inspection_auditor`, `exercise_participant_manager`
