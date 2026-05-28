## Governance context

This data product implements row-level security to protect sensitive customer identifiers and endpoint information. Non-privileged consumers will not have access to raw customer data, ensuring compliance with data privacy standards. The governance mode is mixed, employing both masking for sensitive dimensions and segment security to manage access to specific data slices based on user roles.

## Sample user groups & YAML

```yaml
segments:
  - name: active_devices_by_region
    sql: "{TABLE}.region IS NOT NULL"
    meta:
      secure:
        user_groups:
          includes:
            - device_fleet_analysts
user_groups:
  device_fleet_analysts:
    api_scopes:
      - read
    includes:
      - users:id:device_analyst_1
      - users:id:device_analyst_2
```

## Suggested mode

`mixed`

## Role names (reuse in user_groups + segments)

`device_fleet_analysts`, `warranty_claim_reviewers`, `performance_monitoring_specialists`
