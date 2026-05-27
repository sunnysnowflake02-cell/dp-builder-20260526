## Governance context

This data product implements row-level security through defined segments based on warehouse and delivery regions, ensuring that access is granted only to authorized user groups. Sensitive information, such as delivery addresses, will be subject to dimension masking to protect PII. The governance mode is mixed, as it incorporates both segment security and masking for specific columns.

## Sample user groups & YAML

### Sample User Groups
User groups are defined in DataOS based on the roles needed for accessing the Supply Chain data. Below are examples of user groups that will be created:

```yaml
segments:
  - name: miami_warehouses
    sql: "{TABLE}.district = 'Miami'"
    meta:
      secure:
        user_groups:
          includes:
            - warehouse_manager_miami

user_groups:
  warehouse_manager_miami:
    api_scopes:
      - read
    includes:
      - users:id:warehouse_user_1
      - users:id:warehouse_user_2
```

## Suggested mode

`mixed`

## Role names (reuse in user_groups + segments)

`warehouse_manager_miami`, `inventory_viewer`, `shipment_tracker`, `order_processor`
