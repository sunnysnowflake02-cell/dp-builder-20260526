## Governance context

This data product will implement row-level segment security to ensure that sensitive data is protected while allowing for effective access control. The governance model will include user groups that define access to specific segments of the data based on business roles. The segments will use SQL predicates to filter data based on relevant criteria, ensuring that users only see data pertinent to their roles. There are no full PII redaction requirements, as the focus is on segment-based access control.

## Sample user groups & YAML

```yaml
segments:
  - name: pittsburgh_warehouse_access
    sql: "{TABLE}.warehouse_id = 'WH1001'"
    meta:
      secure:
        user_groups:
          includes:
            - pittsburgh_warehouse_users

user_groups:
  pittsburgh_warehouse_users:
    api_scopes:
      - read
    includes:
      - users:id:warehouse_ops_user_1
      - users:id:warehouse_ops_user_2
```

## Suggested mode

`segment_user_groups`

## Role names (reuse in user_groups + segments)

`pittsburgh_warehouse_users`, `portland_warehouse_users`, `kansas_city_warehouse_users`
