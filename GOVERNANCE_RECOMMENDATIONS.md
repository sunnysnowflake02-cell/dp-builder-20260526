## Governance context

This data product employs row-level segment security to manage access to sensitive data. Each table contains segments that filter rows based on specific business criteria, ensuring that only authorized user groups can access relevant data. The governance mode is mixed, as some tables will have full PII redaction for sensitive dimensions while others will utilize segment security based on business needs.

## Sample user groups & YAML

### Sample User Groups
The following user groups will be created in DataOS to manage access to the Supply Chain data product:

```yaml
segments:
  - name: warehouse_access
    sql: "{TABLE}.district = 'Portland'"
    meta:
      secure:
        user_groups:
          includes:
            - warehouse_operators
user_groups:
  warehouse_operators:
    api_scopes: [read]
    includes:
      - users:id:warehouse_ops_user_1
      - users:id:warehouse_ops_user_2
```

## Suggested mode

`mixed`

## Role names (reuse in user_groups + segments)

`warehouse_operators`, `shipping_analysts`, `inventory_managers`
