## Governance context

This data product features row-level segment security, ensuring that sensitive information is accessible only to authorized user groups. Each table contains segments defined by meaningful business criteria, allowing for targeted access to specific data slices. The product also includes PII columns that require careful handling to ensure compliance with data protection regulations. Row-level access is governed by user groups created in DataOS, ensuring that only relevant roles can access sensitive information.

## Sample user groups & YAML

```yaml
segments:
  - name: deliveries_in_portland
    sql: "{TABLE}.zip_code = 97201"
    meta:
      secure:
        user_groups:
          includes:
            - portland_logistics_users

user_groups:
  portland_logistics_users:
    api_scopes:
      - read
    includes:
      - users:id:portland_user_1
      - users:id:portland_user_2
```

## Suggested mode

`segment_user_groups`

## Role names (reuse in user_groups + segments)

`portland_logistics_users`, `pittsburgh_logistics_users`, `kansas_city_logistics_users`
